## @file
#
#  Copyright (c) 2011-2015, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2016, Intel Corporation. All rights reserved.
#  Copyright (c) 2018 - 2019, Bingxing Wang. All rights reserved.
#  Copyright (c) 2023, qaz6750 lzy. All rights reserved.
#
#  SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################

[BuildOptions]
  RVCT:RELEASE_*_*_CC_FLAGS  = -DMDEPKG_NDEBUG
  GCC:RELEASE_*_*_CC_FLAGS  = -DMDEPKG_NDEBUG

[PcdsFixedAtBuild.common]
  gArmTokenSpaceGuid.PcdSystemMemorySize|0xF0000000        # System Memory (4GB)

[PcdsDynamicHii.common.DEFAULT]
  gEfiMdePkgTokenSpaceGuid.PcdPlatformBootTimeOut|L"Timeout"|gEfiGlobalVariableGuid|0x0|0 # Variable: L"Timeout"

[LibraryClasses.common]
  PlatformMemoryMapLib|Silicon/QC/Msm8998/QcomPkg/Library/PlatformMemoryMapLib/PlatformMemoryMapLib.inf
  PlatformPeiLib|Silicon/QC/Msm8998/QcomPkg/Library/PlatformPeiLib/PlatformPeiLib.inf

!include MSM8998Pkg/CommonDsc.dsc.inc
# Temporarily, we are currently Refactor
!include Silicon/QC/Msm8998/QcomPkg/QcomPkg.dsc.inc
!include Platforms/Msm8998FamilyPkg/Msm8998FamilyPkg.dsc.inc
