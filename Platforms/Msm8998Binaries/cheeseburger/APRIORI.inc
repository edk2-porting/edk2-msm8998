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
    INF Platforms/Msm8998Binaries/wp/Binaries/SmemDxe/SmemDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/DALSys/DALSys.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/HWIODxeDriver/HWIODxeDriver.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/ChipInfo/ChipInfo.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/PlatformInfoDxeDriver/PlatformInfoDxeDriver.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/GlinkDxe/GlinkDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/ULogDxe/ULogDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/NpaDxe/NpaDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/ClockDxe/ClockDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UFSDxe/UFSDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/DALTLMM/DALTLMM.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/SPMI/SPMI.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/SdccDxe/SdccDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/PmicDxe/PmicDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/SPI/SPI.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/I2C/I2C.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/AdcDxe/AdcDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/MpPowerDxe/MpPowerDxe.inf

    # WP USB
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbTypeCDxe/UsbTypeCDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbfnDwc3Dxe/UsbfnDwc3Dxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/XhciPciEmulation/XhciPciEmulation.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/XhciDxe/XhciDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbKbDxe/UsbKbDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbMsdDxe/UsbMsdDxe.inf
    # wp
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbDeviceDxe/UsbDeviceDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbConfigDxe/UsbConfigDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbInitDxe/UsbInitDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbfnChgDxe/UsbfnChgDxe.inf
    INF Platforms/Msm8998Binaries/wp/Binaries/UsbMouseDxe/UsbMouseDxe.inf
    
    INF Platforms/Msm8998Binaries/cheeseburger/PatchedBinaries/ButtonsDxe/ButtonsDxe.inf 
    INF MdeModulePkg/Universal/BdsDxe/BdsDxe.inf  

}
