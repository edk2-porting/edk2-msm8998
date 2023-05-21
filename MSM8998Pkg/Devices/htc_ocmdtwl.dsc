[Defines]
  PLATFORM_NAME                  = htc_ocmdtwl
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = MSM8998Pkg/Devices/htc_ocmdtwl.fdf

!include MSM8998Pkg/MSM8998Pkg.dsc

[PcdsFixedAtBuild.common]
  # System Memory (4.6GB)
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x80000000
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x12D8C0000

  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1440
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|2880

  # RTC information
  gMSM8998PkgTokenSpaceGuid.PcdBootShimInfo1|0xaf000000|UINT64|0x00000a601

  # Device Info
  gMSM8998PkgTokenSpaceGuid.PcdDeviceVendor|"HTC"
  gMSM8998PkgTokenSpaceGuid.PcdDeviceProduct|"HTC 2Q4D200"
  gMSM8998PkgTokenSpaceGuid.PcdDeviceCodeName|"htc_ocmdtwl"
