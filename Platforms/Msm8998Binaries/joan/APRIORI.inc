APRIORI DXE {
    #
    # PI DXE Drivers producing Architectural Protocols (EFI Services)
    #
    INF MdeModulePkg/Universal/PCD/Dxe/Pcd.inf
    INF MdeModulePkg/Core/Dxe/DxeMain.inf
    INF MdeModulePkg/Universal/ReportStatusCodeRouter/RuntimeDxe/ReportStatusCodeRouterRuntimeDxe.inf
    INF MdeModulePkg/Universal/StatusCodeHandler/RuntimeDxe/StatusCodeHandlerRuntimeDxe.inf
    INF MdeModulePkg/Core/RuntimeDxe/RuntimeDxe.inf
    INF ArmPkg/Drivers/CpuDxe/CpuDxe.inf
    INF ArmPkg/Drivers/ArmGic/ArmGicDxe.inf
    INF ArmPkg/Drivers/TimerDxe/TimerDxe.inf
    INF MdeModulePkg/Universal/WatchdogTimerDxe/WatchdogTimer.inf
    INF MdeModulePkg/Universal/SecurityStubDxe/SecurityStubDxe.inf
    INF EmbeddedPkg/MetronomeDxe/MetronomeDxe.inf

    #
    # FAT filesystem + GPT/MBR partitioning
    #
    INF MdeModulePkg/Universal/Disk/DiskIoDxe/DiskIoDxe.inf
    INF MdeModulePkg/Universal/Disk/PartitionDxe/PartitionDxe.inf
    INF FatPkg/EnhancedFatDxe/Fat.inf
    INF MdeModulePkg/Universal/Disk/UnicodeCollation/EnglishDxe/EnglishDxe.inf
    INF MdeModulePkg/Universal/Variable/RuntimeDxe/VariableRuntimeDxe.inf

    INF EmbeddedPkg/EmbeddedMonotonicCounter/EmbeddedMonotonicCounter.inf
    INF MdeModulePkg/Universal/ResetSystemRuntimeDxe/ResetSystemRuntimeDxe.inf
    INF EmbeddedPkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf
    INF MdeModulePkg/Universal/DevicePathDxe/DevicePathDxe.inf
    INF MdeModulePkg/Universal/CapsuleRuntimeDxe/CapsuleRuntimeDxe.inf
    INF MdeModulePkg/Universal/HiiDatabaseDxe/HiiDatabaseDxe.inf

    INF MdeModulePkg/Universal/Console/ConPlatformDxe/ConPlatformDxe.inf
    INF MdeModulePkg/Universal/Console/ConSplitterDxe/ConSplitterDxe.inf
    INF MdeModulePkg/Universal/Console/GraphicsConsoleDxe/GraphicsConsoleDxe.inf

    #
    # Binary DXE drivers
    # WP driver : 
    #
    INF Platforms/Msm8998Binaries/wp/SmemDxe/SmemDxe.inf
    INF Platforms/Msm8998Binaries/wp/DALSys/DALSys.inf
    INF Platforms/Msm8998Binaries/wp/HWIODxeDriver/HWIODxeDriver.inf
    INF Platforms/Msm8998Binaries/wp/ChipInfo/ChipInfo.inf
    INF Platforms/Msm8998Binaries/wp/PlatformInfoDxeDriver/PlatformInfoDxeDriver.inf
    INF Platforms/Msm8998Binaries/wp/GlinkDxe/GlinkDxe.inf
    INF Platforms/Msm8998Binaries/wp/ULogDxe/ULogDxe.inf
    INF Platforms/Msm8998Binaries/wp/NpaDxe/NpaDxe.inf
    INF Platforms/Msm8998Binaries/wp/ClockDxe/ClockDxe.inf
    INF Platforms/Msm8998Binaries/wp/UFSDxe/UFSDxe.inf
    INF Platforms/Msm8998Binaries/wp/DALTLMM/DALTLMM.inf
    INF Platforms/Msm8998Binaries/wp/SPMI/SPMI.inf
    INF Platforms/Msm8998Binaries/wp/SdccDxe/SdccDxe.inf
    INF Platforms/Msm8998Binaries/wp/PmicDxe/PmicDxe.inf
    INF Platforms/Msm8998Binaries/wp/SPI/SPI.inf
    INF Platforms/Msm8998Binaries/wp/I2C/I2C.inf
    INF Platforms/Msm8998Binaries/wp/AdcDxe/AdcDxe.inf
    INF Platforms/Msm8998Binaries/wp/MpPowerDxe/MpPowerDxe.inf

    # WP USB
    INF Platforms/Msm8998Binaries/wp/UsbTypeCDxe/UsbTypeCDxe.inf
    INF Platforms/Msm8998Binaries/wp/UsbfnDwc3Dxe/UsbfnDwc3Dxe.inf
    INF Platforms/Msm8998Binaries/wp/XhciPciEmulation/XhciPciEmulation.inf
    INF Platforms/Msm8998Binaries/wp/XhciDxe/XhciDxe.inf
    INF Platforms/Msm8998Binaries/wp/UsbKbDxe/UsbKbDxe.inf
    INF Platforms/Msm8998Binaries/wp/UsbMsdDxe/UsbMsdDxe.inf
    # wp
    INF Platforms/Msm8998Binaries/wp/UsbDeviceDxe/UsbDeviceDxe.inf
    INF Platforms/Msm8998Binaries/wp/UsbConfigDxe/UsbConfigDxe.inf
    INF Platforms/Msm8998Binaries/wp/UsbInitDxe/UsbInitDxe.inf
    INF Platforms/Msm8998Binaries/wp/UsbfnChgDxe/UsbfnChgDxe.inf
    INF Platforms/Msm8998Binaries/wp/UsbMouseDxe/UsbMouseDxe.inf
    
    INF Platforms/Msm8998Binaries/joan/PatchedBinaries/ButtonsDxe/ButtonsDxe.inf 
    INF MdeModulePkg/Universal/BdsDxe/BdsDxe.inf  

}
