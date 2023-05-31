#!/bin/bash

##### Change this to add device #####
DEVICES=(
    mata
    chiron
    sagit
    joan
    cheeseburger
    dumpling
    htc_ocmdtwl
)
#####################################

function _help(){
	echo "Usage: build.sh --device DEV"
	echo
	echo "Build edk2 for Qualcomm msm8998 platform."
	echo
	echo "Options: "
	echo "	--device DEV, -d DEV:    build for DEV. (${DEVICES[*]})"
	echo "	--all, -a:               build all devices."
	echo "	--chinese, -c:           use hub.nuaa.cf for submodule cloning."
	echo "	--release MODE, -r MODE: Release mode for building, default is 'RELEASE', 'DEBUG' alternatively."
	echo "	--acpi, -A:              compile acpi."
	echo " 	--skip-rootfs-gen:       skip generating SimpleInit rootfs to speed up building."
	echo "	--clean, -C:             clean workspace and output."
	echo "	--distclean, -D:         clean up all files that are not in repo."
	echo "	--outputdir, -O:         output folder."
	echo "	--help, -h:              show this help."
	echo
	echo "MainPage: https://github.com/edk2-porting/edk2-msm8998"
	exit "${1}"
}

function _error(){ echo "${@}" >&2;exit 1; }

function _build(){
	local DEVICE="${1}"
	shift
	source "${_EDK2}/edksetup.sh"
	[ -d "${WORKSPACE}" ]||mkdir "${WORKSPACE}"
	set -x
	make -C "${_EDK2}/BaseTools" -j "$(nproc)"||exit "$?"
	# based on the instructions from edk2-platform
	rm -f "${OUTDIR}/boot-${DEVICE}.img" uefi_img "uefi-${DEVICE}.img.gz" "uefi-${DEVICE}.img.gz-dtb"
	case "${MODE}" in
		RELEASE)_MODE=RELEASE;;
		DEBUG)_MODE=DEBUG;;
	esac
	if [ -f "Config/${DEVICE}.conf" ]
	then source "Config/${DEVICE}.conf"
	     source "Config/default.conf"
	fi
	if "${GEN_ACPI}" && ! iasl -ve "${DSDT_FILE}"
	then echo "iasl failed with ${?}" >&2;return 1
	fi
	build \
		-s \
		-n 0 \
		-a AARCH64 \
		-t GCC5 \
		-p "${DSC_FILE}" \
		-b "${_MODE}" \
		||return "$?"
	gzip -c \
		< "workspace/Build/${DEVICE}/${_MODE}_GCC5/FV/MSM8998PKG_UEFI.fd" \
		> "workspace/uefi-${DEVICE}.img.gz" \
		||return "$?"
	cat \
		"workspace/uefi-${DEVICE}.img.gz" \
		"Platforms/Msm8998Pkg/Device/${VENDOR_NAME}/${DEVICE}/DeviceTreeBlob/Android/Android-${DEVICE}.dtb" \
		> "workspace/uefi-${DEVICE}.img.gz-dtb" \
		||return "$?"
	python3 ./mkbootimg.py \
		--kernel "workspace/uefi-${DEVICE}.img.gz-dtb" \
		--ramdisk ramdisk \
		--kernel_offset 0x00000000 \
		--ramdisk_offset 0x00000000 \
		--tags_offset 0x00000000 \
		--os_version "${BOOTIMG_OS_VERSION}" \
		--os_patch_level "${BOOTIMG_OS_PATCH_LEVEL}" \
		--header_version 1 \
		-o "${OUTDIR}/boot-${DEVICE}.img" \
		||return "$?"
	echo "Build done: ${OUTDIR}/boot-${DEVICE}.img"
	set +x
}

function _clean(){ rm --one-file-system --recursive --force ./workspace boot-*.img uefi-*.img*; }

function _distclean(){ if [ -d .git ];then git clean -xdf;else _clean;fi; }

cd "$(dirname "$0")"||exit 1
[ -f Platforms/Msm8998Pkg/Msm8998.dsc ]||_error "cannot find Platforms/Msm8998Pkg/Msm8998.dsc"
typeset -l DEVICE
typeset -u MODE
DEVICE=""
MODE=RELEASE
CHINESE=false
CLEAN=false
DISTCLEAN=false
export OUTDIR="${PWD}"
export GEN_ACPI=false
export GEN_ROOTFS=true
OPTS="$(getopt -o d:hacACDO:r: -l device:,help,all,chinese,acpi,skip-rootfs-gen,clean,distclean,outputdir:,release: -n 'build.sh' -- "$@")"||exit 1
eval set -- "${OPTS}"
while true
do	case "${1}" in
		-d|--device)DEVICE="${2}";shift 2;;
		-a|--all)DEVICE=all;shift;;
		-c|--chinese)CHINESE=true;shift;;
		-A|--acpi)GEN_ACPI=true;shift;;
		-C|--clean)CLEAN=true;shift;;
		-D|--distclean)DISTCLEAN=true;shift;;
		-O|--outputdir)OUTDIR="${2}";shift 2;;
		--skip-rootfs-gen)GEN_ROOTFS=false;shift;;
		-r|--release)MODE="${2}";shift 2;;
		-h|--help)_help 0;shift;;
		--)shift;break;;
		*)_help 1;;
	esac
done
if "${DISTCLEAN}";then _distclean;exit "$?";fi
if "${CLEAN}";then _clean;exit "$?";fi
[ -z "${DEVICE}" ]&&_help 1
if ! [ -f Common/edk2/edksetup.sh ] || ! [ -f ../edk2/edksetup.sh ]
then	set -e
	echo "Updating submodules"
	if "${CHINESE}"
	then
		vim -u NONE -N .gitmodules -c "%s/github.com/hub.nuaa.cf/g" -c ":wq"
		git submodule init;git submodule update
		pushd Common/edk2
		vim -u NONE -N .gitmodules -c "%s/github.com/hub.nuaa.cf/g" -c ":wq"
		git submodule init;git submodule update
		pushd CryptoPkg/Library/OpensslLib/openssl
		git submodule set-url boringssl https://github.com/google/boringssl
		vim -u NONE -N .gitmodules -c "%s/github.com/hub.nuaa.cf/g" -c ":wq"
		git submodule init;git submodule update
		git checkout .gitmodules
		popd
		git checkout .gitmodules
		popd
		pushd Common/edk2-platforms
		vim -u NONE -N .gitmodules -c "%s/github.com/hub.nuaa.cf/g" -c ":wq"
		git submodule init;git submodule update
		git checkout .gitmodules
		popd
		pushd GPLDrivers/Library/simple-init
		git submodule set-url libs/freetype https://github.com/freetype/freetype.git
		vim -u NONE -N .gitmodules -c "%s/github.com/hub.nuaa.cf/g" -c ":wq"
		git submodule init;git submodule update
		git checkout .gitmodules
		popd
		git checkout .gitmodules
		git submodule update --init --recursive
	else
		git submodule init;git submodule update
		pushd Common/edk2
		git submodule init;git submodule update
		popd
		pushd Common/edk2-platforms
		git submodule init;git submodule update
		popd
		pushd GPLDrivers/Library/simple-init
		git submodule init;git submodule update
		popd
	fi
	set +e
fi
for i in "${EDK2}" ./Common/edk2 ../edk2
do	if [ -n "${i}" ]&&[ -f "${i}/edksetup.sh" ]
	then	_EDK2="$(realpath "${i}")"
		break
	fi
done
for i in "${EDK2_PLATFORMS}" ./Common/edk2-platforms ../edk2-platforms
do	if [ -n "${i}" ]&&[ -d "${i}/Platform" ]
	then	_EDK2_PLATFORMS="$(realpath "${i}")"
		break
	fi
done
for i in "${SIMPLE_INIT}" GPLDrivers/Library/simple-init ./simple-init ../simple-init
do	if [ -n "${i}" ]&&[ -f "${i}/SimpleInit.inc" ]
	then	_SIMPLE_INIT="$(realpath "${i}")"
		break
	fi
done
[ -n "${_EDK2}" ]||_error "EDK2 not found, please see README.md"
[ -n "${_EDK2_PLATFORMS}" ]||_error "EDK2 Platforms not found, please see README.md"
[ -n "${_SIMPLE_INIT}" ]||_error "SimpleInit not found, please see README.md"
echo "EDK2 Path: ${_EDK2}"
echo "EDK2_PLATFORMS Path: ${_EDK2_PLATFORMS}"
export CROSS_COMPILE="${CROSS_COMPILE:-aarch64-linux-gnu-}"
export GCC5_AARCH64_PREFIX="${CROSS_COMPILE}"
export CLANG38_AARCH64_PREFIX="${CROSS_COMPILE}"
export PACKAGES_PATH="$_EDK2:$_EDK2_PLATFORMS:$_SIMPLE_INIT:$PWD"
export WORKSPACE="${PWD}/workspace"
GITCOMMIT="$(git describe --tags --always)"||GITCOMMIT="unknown"
export GITCOMMIT
echo > ramdisk
set -e

mkdir -p "${_SIMPLE_INIT}/build" "${_SIMPLE_INIT}/root/usr/share/locale"
for i in "${_SIMPLE_INIT}/po/"*.po
do	[ -f "${i}" ]||continue
	_name="$(basename "$i" .po)"
	_path="${_SIMPLE_INIT}/root/usr/share/locale/${_name}/LC_MESSAGES"
	mkdir -p "${_path}"
	msgfmt -o "${_path}/simple-init.mo" "${i}"
done
if "${GEN_ROOTFS}"
then bash "${_SIMPLE_INIT}/scripts/gen-rootfs-source.sh" \
	"${_SIMPLE_INIT}" \
	"${_SIMPLE_INIT}/build"
fi

if [ "${DEVICE}" == "all" ]
then	E=0
	for i in "${DEVICES[@]}"
	do	echo "Building ${i}"
		rm --recursive --force --one-file-system ./workspace||true
		_build "${i}"||E="$?"
	done
	exit "${E}"
else	HAS=false
	for i in "${DEVICES[@]}"
	do	[ "${i}" == "${DEVICE}" ]||continue
		HAS=true
		break
	done
	[ "${HAS}" == "true" ]||_error "build.sh: unknown build target device ${DEVICE}."
	_build "${DEVICE}"
fi
