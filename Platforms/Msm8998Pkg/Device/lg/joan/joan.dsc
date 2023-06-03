[Defines]
  VENDOR_NAME                    = lg
  PLATFORM_NAME                  = joan
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platforms/Msm8998Pkg/Device/lg/joan/joan.fdf

!include Platforms/Msm8998Pkg/Msm8998.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DLG_PIL_FIXED=1

[PcdsFixedAtBuild.common]

  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|550

  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1440
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|2880

  # Device Info
  gMSM8998PkgTokenSpaceGuid.PcdDeviceVendor|"LG"
  gMSM8998PkgTokenSpaceGuid.PcdDeviceProduct|"V30"
  gMSM8998PkgTokenSpaceGuid.PcdDeviceCodeName|"joan"
