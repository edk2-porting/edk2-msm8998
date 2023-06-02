[Defines]
  PLATFORM_NAME                  = nx563j
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platforms/Msm8998Pkg/Device/nubia/nx563j/nx563j.fdf

!include Platforms/Msm8998Pkg/Msm8998.dsc

[PcdsFixedAtBuild.common]

  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|440

  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|1920

  # Device Info
  gMSM8998PkgTokenSpaceGuid.PcdDeviceVendor|"Nubia"
  gMSM8998PkgTokenSpaceGuid.PcdDeviceProduct|"Z17"
  gMSM8998PkgTokenSpaceGuid.PcdDeviceCodeName|"nx563j"
