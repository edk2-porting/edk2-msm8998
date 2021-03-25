#
#  Copyright (c) 2018, Linaro Limited. All rights reserved.
#
#  This program and the accompanying materials
#  are licensed and made available under the terms and conditions of the BSD License
#  which accompanies this distribution.  The full text of the license may be found at
#  http://opensource.org/licenses/bsd-license.php
#
#  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################

!include MSM8998Pkg/CommonDsc.dsc.inc

[LibraryClasses.common]
!if $(TARGET) == RELEASE
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
!else
  DebugLib|MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
!endif
  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf
  ArmLib|ArmPkg/Library/ArmLib/ArmBaseLib.inf
  ArmPlatformLib|MSM8998Pkg/Library/MSM8998Lib/MSM8998Lib.inf
  CompilerIntrinsicsLib|ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib.inf
  CapsuleLib|MdeModulePkg/Library/DxeCapsuleLibNull/DxeCapsuleLibNull.inf
  UefiBootManagerLib|MdeModulePkg/Library/UefiBootManagerLib/UefiBootManagerLib.inf
  PlatformBootManagerLib|ArmPkg/Library/PlatformBootManagerLib/PlatformBootManagerLib.inf
  CustomizedDisplayLib|MdeModulePkg/Library/CustomizedDisplayLib/CustomizedDisplayLib.inf

  # UiApp dependencies
  ReportStatusCodeLib|MdeModulePkg/Library/DxeReportStatusCodeLib/DxeReportStatusCodeLib.inf
  FileExplorerLib|MdeModulePkg/Library/FileExplorerLib/FileExplorerLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  BootLogoLib|MdeModulePkg/Library/BootLogoLib/BootLogoLib.inf

  SerialPortLib|MSM8998Pkg/Library/InMemorySerialPortLib/InMemorySerialPortLib.inf
  RealTimeClockLib|EmbeddedPkg/Library/VirtualRealTimeClockLib/VirtualRealTimeClockLib.inf
  TimeBaseLib|EmbeddedPkg/Library/TimeBaseLib/TimeBaseLib.inf

  # USB Requirements
  UefiUsbLib|MdePkg/Library/UefiUsbLib/UefiUsbLib.inf

  # Network Libraries
  UefiScsiLib|MdePkg/Library/UefiScsiLib/UefiScsiLib.inf
  NetLib|NetworkPkg/Library/DxeNetLib/DxeNetLib.inf
  DpcLib|NetworkPkg/Library/DxeDpcLib/DxeDpcLib.inf
  IpIoLib|NetworkPkg/Library/DxeIpIoLib/DxeIpIoLib.inf
  UdpIoLib|NetworkPkg/Library/DxeUdpIoLib/DxeUdpIoLib.inf

  # VariableRuntimeDxe Requirements
  SynchronizationLib|MdePkg/Library/BaseSynchronizationLib/BaseSynchronizationLib.inf
  AuthVariableLib|MdeModulePkg/Library/AuthVariableLibNull/AuthVariableLibNull.inf
  TpmMeasurementLib|MdeModulePkg/Library/TpmMeasurementLibNull/TpmMeasurementLibNull.inf
  VarCheckLib|MdeModulePkg/Library/VarCheckLib/VarCheckLib.inf

  # SimpleFbDxe
  FrameBufferBltLib|MdeModulePkg/Library/FrameBufferBltLib/FrameBufferBltLib.inf

  SerialPortLib|MSM8998Pkg/Library/FrameBufferSerialPortLib/FrameBufferSerialPortLib.inf
  PlatformBootManagerLib|MSM8998Pkg/Library/PlatformBootManagerLib/PlatformBootManagerLib.inf


[LibraryClasses.common.SEC]
  PrePiLib|EmbeddedPkg/Library/PrePiLib/PrePiLib.inf
  ExtractGuidedSectionLib|EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib.inf
  HobLib|EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib.inf
  MemoryAllocationLib|EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib.inf
  MemoryInitPeiLib|ArmPlatformPkg/MemoryInitPei/MemoryInitPeiLib.inf
  PlatformPeiLib|ArmPlatformPkg/PlatformPei/PlatformPeiLib.inf
  PrePiHobListPointerLib|ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib.inf

################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################

[PcdsFeatureFlag.common]
  ## If TRUE, Graphics Output Protocol will be installed on virtual handle created by ConsplitterDxe.
  #  It could be set FALSE to save size.
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutGopSupport|TRUE
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutUgaSupport|FALSE


[PcdsFixedAtBuild.common]
  gEfiMdePkgTokenSpaceGuid.PcdDefaultTerminalType|4

  gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVersionString|L"Alpha"

  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x80000000
  # gArmTokenSpaceGuid.PcdSystemMemorySize|0xF0000000

  # We only boot one processor here!
  gArmPlatformTokenSpaceGuid.PcdCoreCount|1
  gArmPlatformTokenSpaceGuid.PcdClusterCount|1

  
  !if $(TARGET) == RELEASE
  gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0x0e
!else
  gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0x0f
!endif
  #
  # ARM PrimeCell
  #

  #
  # ARM General Interrupt Controller
  #
  gArmTokenSpaceGuid.PcdGicDistributorBase|0x17a00000
  gArmTokenSpaceGuid.PcdGicRedistributorsBase|0x17b00000

  gArmTokenSpaceGuid.PcdArmArchTimerIntrNum|0x12
  gArmTokenSpaceGuid.PcdArmArchTimerVirtIntrNum|0x13

  # GUID of the UI app
  gEfiMdeModulePkgTokenSpaceGuid.PcdBootManagerMenuFile|{ 0x21, 0xaa, 0x2c, 0x46, 0x14, 0x76, 0x03, 0x45, 0x83, 0x6e, 0x8a, 0xb6, 0xf4, 0x66, 0x23, 0x31 }
  gEfiMdePkgTokenSpaceGuid.PcdPlatformBootTimeOut|5

  gEfiMdeModulePkgTokenSpaceGuid.PcdResetOnMemoryTypeInformationChange|FALSE

  gEmbeddedTokenSpaceGuid.PcdMetronomeTickPeriod|1000

  #
  #
  # Fastboot
  #
  gEmbeddedTokenSpaceGuid.PcdAndroidFastbootUsbVendorId|0x18d1
  gEmbeddedTokenSpaceGuid.PcdAndroidFastbootUsbProductId|0xd00d

  #
  # Make VariableRuntimeDxe work at emulated non-volatile variable mode.
  #
  gEfiMdeModulePkgTokenSpaceGuid.PcdEmuVariableNvModeEnable|TRUE

  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferAddress|0x9d400000

  gEfiMdeModulePkgTokenSpaceGuid.PcdAcpiExposedTableVersions|0x20

################################################################################
#
# Components Section - list of all EDK II Modules needed by this Platform
#
################################################################################
[Components.common]
  #
  # PEI Phase modules
  #
  ArmPlatformPkg/PrePi/PeiUniCore.inf

  #
  # DXE
  #
  MdeModulePkg/Core/Dxe/DxeMain.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
      NULL|MdeModulePkg/Library/DxeCrc32GuidedSectionExtractLib/DxeCrc32GuidedSectionExtractLib.inf
  }
  #
  # Architectural Protocols
  #
  ArmPkg/Drivers/CpuDxe/CpuDxe.inf
  MdeModulePkg/Core/RuntimeDxe/RuntimeDxe.inf
  MdeModulePkg/Universal/SecurityStubDxe/SecurityStubDxe.inf
  MdeModulePkg/Universal/CapsuleRuntimeDxe/CapsuleRuntimeDxe.inf
  EmbeddedPkg/EmbeddedMonotonicCounter/EmbeddedMonotonicCounter.inf
  MdeModulePkg/Universal/ResetSystemRuntimeDxe/ResetSystemRuntimeDxe.inf
  EmbeddedPkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf
  EmbeddedPkg/MetronomeDxe/MetronomeDxe.inf

  MdeModulePkg/Universal/Console/ConPlatformDxe/ConPlatformDxe.inf
  MdeModulePkg/Universal/Console/ConSplitterDxe/ConSplitterDxe.inf
  MdeModulePkg/Universal/Console/GraphicsConsoleDxe/GraphicsConsoleDxe.inf
  MdeModulePkg/Universal/Console/TerminalDxe/TerminalDxe.inf
  MdeModulePkg/Universal/SerialDxe/SerialDxe.inf

  MdeModulePkg/Universal/Variable/RuntimeDxe/VariableRuntimeDxe.inf
  MdeModulePkg/Universal/ReportStatusCodeRouter/RuntimeDxe/ReportStatusCodeRouterRuntimeDxe.inf
  MdeModulePkg/Universal/StatusCodeHandler/RuntimeDxe/StatusCodeHandlerRuntimeDxe.inf
  ArmPkg/Drivers/ArmGic/ArmGicDxe.inf
  ArmPkg/Drivers/TimerDxe/TimerDxe.inf

  MdeModulePkg/Universal/WatchdogTimerDxe/WatchdogTimer.inf

  MdeModulePkg/Universal/PCD/Dxe/Pcd.inf

  #
  # GPIO
  #

  #
  # Virtual Keyboard
  #
  EmbeddedPkg/Drivers/VirtualKeyboardDxe/VirtualKeyboardDxe.inf

  MSM8998Pkg/MSM8998Dxe/MSM8998Dxe.inf
  MSM8998Pkg/SimpleFbDxe/SimpleFbDxe.inf

  #
  # USB Host Support
  #
  MdeModulePkg/Bus/Usb/UsbBusDxe/UsbBusDxe.inf

  #
  # USB Mass Storage Support
  #
  MdeModulePkg/Bus/Usb/UsbMassStorageDxe/UsbMassStorageDxe.inf

  #
  # USB Peripheral Support
  #
  EmbeddedPkg/Drivers/AndroidFastbootTransportUsbDxe/FastbootTransportUsbDxe.inf

  #
  # Fastboot
  #
  EmbeddedPkg/Application/AndroidFastboot/AndroidFastbootApp.inf


  #
  # FAT filesystem + GPT/MBR partitioning
  #
  MdeModulePkg/Universal/Disk/DiskIoDxe/DiskIoDxe.inf
  MdeModulePkg/Universal/Disk/PartitionDxe/PartitionDxe.inf
  MdeModulePkg/Universal/Disk/UnicodeCollation/EnglishDxe/EnglishDxe.inf
  FatPkg/EnhancedFatDxe/Fat.inf

  #
  # ACPI Support
  #
  MdeModulePkg/Universal/Acpi/AcpiTableDxe/AcpiTableDxe.inf
  MdeModulePkg/Universal/Acpi/AcpiPlatformDxe/AcpiPlatformDxe.inf
  MdeModulePkg/Universal/Acpi/BootGraphicsResourceTableDxe/BootGraphicsResourceTableDxe.inf

  # Use custom ACPI
  MSM8998Pkg/AcpiTables/AcpiTables.inf

  #
  # SMBIOS Support
  #
  MSM8998Pkg/Drivers/SmbiosPlatformDxe/SmbiosPlatformDxe.inf
  MdeModulePkg/Universal/SmbiosDxe/SmbiosDxe.inf

  #
  # Bds
  #
  MdeModulePkg/Universal/PrintDxe/PrintDxe.inf
  MdeModulePkg/Universal/DevicePathDxe/DevicePathDxe.inf
  MdeModulePkg/Universal/HiiDatabaseDxe/HiiDatabaseDxe.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  MdeModulePkg/Universal/DisplayEngineDxe/DisplayEngineDxe.inf
  MdeModulePkg/Universal/SetupBrowserDxe/SetupBrowserDxe.inf
  MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerDxe.inf
  MdeModulePkg/Universal/BdsDxe/BdsDxe.inf
  MdeModulePkg/Application/UiApp/UiApp.inf {
    <LibraryClasses>
      NULL|MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerUiLib.inf
      NULL|MdeModulePkg/Library/BootManagerUiLib/BootManagerUiLib.inf
      NULL|MdeModulePkg/Library/BootMaintenanceManagerUiLib/BootMaintenanceManagerUiLib.inf
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  MSM8998Pkg/Drivers/LogoDxe/LogoDxe.inf

  ShellPkg/Application/Shell/Shell.inf {
    <LibraryClasses>
      ShellCommandLib|ShellPkg/Library/UefiShellCommandLib/UefiShellCommandLib.inf
      NULL|ShellPkg/Library/UefiShellLevel2CommandsLib/UefiShellLevel2CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellLevel1CommandsLib/UefiShellLevel1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellLevel3CommandsLib/UefiShellLevel3CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellDriver1CommandsLib/UefiShellDriver1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellDebug1CommandsLib/UefiShellDebug1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellInstall1CommandsLib/UefiShellInstall1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellNetwork1CommandsLib/UefiShellNetwork1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellAcpiViewCommandLib/UefiShellAcpiViewCommandLib.inf
      HandleParsingLib|ShellPkg/Library/UefiHandleParsingLib/UefiHandleParsingLib.inf
      PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
      BcfgCommandLib|ShellPkg/Library/UefiShellBcfgCommandLib/UefiShellBcfgCommandLib.inf
    <PcdsFixedAtBuild>
      gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0xFF
      gEfiShellPkgTokenSpaceGuid.PcdShellLibAutoInitialize|FALSE
      gEfiMdePkgTokenSpaceGuid.PcdUefiLibMaxPrintBufferSize|8000
  }
!ifdef $(INCLUDE_TFTP_COMMAND)
  ShellPkg/DynamicCommand/TftpDynamicCommand/TftpDynamicCommand.inf
!endif #$(INCLUDE_TFTP_COMMAND)
