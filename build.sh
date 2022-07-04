#!/bin/bash

##### Change this to add device #####
DEVICES=(
	nash
	chiron
	sagit
	joan
	cheeseburger
        dumpling
)
#####################################

function _help(){
	echo "Usage: build.sh --device DEV"
	echo
	echo "Build edk2 for Qualcomm msm8998 platform."
	echo
	echo "Options: "
	echo "	--device DEV, -d DEV: build for DEV. (${DEVICES[*]})"
	echo "	--all, -a:            build all devices."
	echo "	--chinese, -c:        use fastgit for submodule cloning."
	echo "  --release MODE, -r MODE: Release mode for building, default is 'RELEASE', 'DEBUG' alternatively."
	echo "	--acpi, -A:           compile acpi."
	echo "	--clean, -C:          clean workspace and output."
	echo "	--distclean, -D:      clean up all files that are not in repo."
	echo "	--outputdir, -O:      output folder."
	echo "	--help, -h:           show this help."
	echo
	echo "MainPage: https://github.com/lumingyu0423/edk2-MSM8998"
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
	if "${GEN_ACPI}" && ! iasl -ve "MSM8998Pkg/AcpiTables/${DEVICE}/Dsdt.asl"
	then echo "iasl failed with ${?}" >&2;return 1
	fi
	# based on the instructions from edk2-platform
	rm -f "${OUTDIR}/boot-${DEVICE}.img" uefi_img "uefi-${DEVICE}.img.gz" "uefi-${DEVICE}.img.gz-dtb"
	case "${MODE}" in
		RELEASE)_MODE=RELEASE;;
		*)_MODE=DEBUG;;
	esac
	build \
		-s \
		-n 0 \
		-a AARCH64 \
		-t GCC5 \
		-p "MSM8998Pkg/Devices/${DEVICE}.dsc" \
		-b "${_MODE}" \
		||return "$?"
	gzip -c \
		< "workspace/Build/MSM8998Pkg/${_MODE}_GCC5/FV/MSM8998PKG_UEFI.fd" \
		> "workspace/uefi-${DEVICE}.img.gz" \
		||return "$?"
	cat \
		"workspace/uefi-${DEVICE}.img.gz" \
		"device_specific/${DEVICE}.dtb" \
		> "workspace/uefi-${DEVICE}.img.gz-dtb" \
		||return "$?"
	abootimg \
		--create "${OUTDIR}/boot-${DEVICE}.img" \
		-k "workspace/uefi-${DEVICE}.img.gz-dtb" \
		-r ramdisk \
		||return "$?"
	echo "Build done: ${OUTDIR}/boot-${DEVICE}.img"
	set +x
}

function _clean(){ rm --one-file-system --recursive --force ./workspace boot-*.img uefi-*.img*; }

function _distclean(){ if [ -d .git ];then git clean -xdf;else _clean;fi; }

cd "$(dirname "$0")"||exit 1
[ -f MSM8998Pkg/MSM8998Pkg.dsc ]||_error "cannot find MSM8998Pkg/MSM8998Pkg.dsc"
typeset -l DEVICE
typeset -u MODE
DEVICE=""
MODE=RELEASE
CHINESE=false
CLEAN=false
DISTCLEAN=false
export OUTDIR="${PWD}"
export GEN_ACPI=false
OPTS="$(getopt -o d:hacACDO:r: -l device:,help,all,chinese,acpi,clean,distclean,outputdir:,release: -n 'build.sh' -- "$@")"||exit 1
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
		-r|--release)MODE="${2}";shift 2;;
		-h|--help)_help 0;shift;;
		--)shift;break;;
		*)_help 1;;
	esac
done
if "${DISTCLEAN}";then _distclean;exit "$?";fi
if "${CLEAN}";then _clean;exit "$?";fi
[ -z "${DEVICE}" ]&&_help 1
if ! [ -f edk2/edksetup.sh ] || ! [ -f ../edk2/edksetup.sh ]
then	set -e
	echo "Updating submodules"
	if "${CHINESE}"
	then	git submodule set-url edk2 https://hub.fastgit.xyz/tianocore/edk2.git
		git submodule set-url edk2-platforms https://hub.fastgit.xyz/tianocore/edk2-platforms.git
		git submodule init;git submodule update --depth 1
		pushd edk2
		git submodule set-url ArmPkg/Library/ArmSoftFloatLib/berkeley-softfloat-3   https://hub.fastgit.xyz/ucb-bar/berkeley-softfloat-3.git
		git submodule set-url CryptoPkg/Library/OpensslLib/openssl                  https://hub.fastgit.xyz/openssl/openssl.git
		git submodule set-url BaseTools/Source/C/BrotliCompress/brotli              https://hub.fastgit.xyz/google/brotli.git
		git submodule set-url UnitTestFrameworkPkg/Library/CmockaLib/cmocka         https://git.cryptomilk.org/projects/cmocka.git
		git submodule set-url ArmPkg/Library/ArmSoftFloatLib/berkeley-softfloat-3   https://hub.fastgit.xyz/ucb-bar/berkeley-softfloat-3.git
		git submodule set-url MdeModulePkg/Library/BrotliCustomDecompressLib/brotli https://hub.fastgit.xyz/google/brotli.git
		git submodule set-url MdeModulePkg/Universal/RegularExpressionDxe/oniguruma https://hub.fastgit.xyz/kkos/oniguruma.git
		git submodule init;git submodule update
		git checkout .gitmodules
		popd
		pushd MSM8998Pkg/Library/SimpleInit
		git submodule set-url libs/lvgl     https://hub.fastgit.xyz/lvgl/lvgl.git
		git submodule set-url libs/freetype https://hub.fastgit.xyz/freetype/freetype.git
		git submodule init;git submodule update
		popd
		git checkout .gitmodules
	else	git submodule init;git submodule update --depth 1
		pushd edk2
		git submodule init;git submodule update
		popd
		pushd MSM8998Pkg/Library/SimpleInit
		git submodule init;git submodule update
		popd
	fi
	set +e
fi
for i in "${EDK2}" ./edk2 ../edk2
do	if [ -n "${i}" ]&&[ -f "${i}/edksetup.sh" ]
	then	_EDK2="$(realpath "${i}")"
		break
	fi
done
for i in "${SIMPLE_INIT}" MSM8998Pkg/Library/SimpleInit ./simple-init ../simple-init
do	if [ -n "${i}" ]&&[ -f "${i}/SimpleInit.inc" ]
	then	_SIMPLE_INIT="$(realpath "${i}")"
		break
	fi
done
for i in "${EDK2_PLATFORMS}" ./edk2-platforms ../edk2-platforms
do	if [ -n "${i}" ]&&[ -d "${i}/Platform" ]
	then	_EDK2_PLATFORMS="$(realpath "${i}")"
		break
	fi
done
[ -n "${_EDK2}" ]||_error "EDK2 not found, please see README.md"
[ -n "${_EDK2_PLATFORMS}" ]||_error "EDK2 Platforms not found, please see README.md"
[ -n "${_SIMPLE_INIT}" ]||_error "SimpleInit not found, please see README.md"
echo "EDK2 Path: ${_EDK2}"
echo "EDK2_PLATFORMS Path: ${_EDK2_PLATFORMS}"
export GCC5_AARCH64_PREFIX="${CROSS_COMPILE:-aarch64-linux-gnu-}"
export PACKAGES_PATH="$_EDK2:$_EDK2_PLATFORMS:$_SIMPLE_INIT:$PWD"
export WORKSPACE="${PWD}/workspace"
GITCOMMIT="$(git describe --tags --always)"||GITCOMMIT="unknown"
export GITCOMMIT
echo > ramdisk
set -e
mkdir -p "${_SIMPLE_INIT}/build"
bash "${_SIMPLE_INIT}/scripts/gen-rootfs-source.sh" \
	"${_SIMPLE_INIT}" \
	"${_SIMPLE_INIT}/build"
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
