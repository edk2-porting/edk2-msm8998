        Device (AGR0)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_PUR, Package (0x02)  // _PUR: Processor Utilization Request
            {
                One, 
                Zero
            })
            Method (_OST, 3, NotSerialized)  // _OST: OSPM Status Indication
            {
                ^^PEP0.ROST = Arg2
            }
        }

        ThermalZone (TZ0)
        {
            Name (_HID, "QCOM00B2")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x04)  // _TZD: Thermal Zone Devices
            {
                ^SYSM.APC0.CL0.CPU0, 
                ^SYSM.APC0.CL0.CPU1, 
                ^SYSM.APC0.CL0.CPU2, 
                ^SYSM.APC0.CL0.CPU3
            })
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ1)
        {
            Name (_HID, "QCOM00B2")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                PEP0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0EC4)
            }

            Name (_TC1, Zero)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x0A)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x14)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (One)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ1_._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (0x0A)
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ2)
        {
            Name (_HID, "QCOM00B3")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x04)  // _TZD: Thermal Zone Devices
            {
                ^SYSM.APC0.CL1.CPU4, 
                ^SYSM.APC0.CL1.CPU5, 
                ^SYSM.APC0.CL1.CPU6, 
                ^SYSM.APC0.CL1.CPU7
            })
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ3)
        {
            Name (_HID, "QCOM00B3")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                PEP0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0EC4)
            }

            Name (_TC1, Zero)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x0A)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x14)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (One)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ3_._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (Zero)
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ20)
        {
            Name (_HID, "QCOM00AE")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                GPU0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DCA)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x02)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ21)
        {
            Name (_HID, "QCOM00AF")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                GPU0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DCA)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x02)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ32)
        {
            Name (_HID, "QCOM00CF")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x08)  // _TZD: Thermal Zone Devices
            {
                ^SYSM.APC0.CL0.CPU0, 
                ^SYSM.APC0.CL0.CPU1, 
                ^SYSM.APC0.CL0.CPU2, 
                ^SYSM.APC0.CL0.CPU3, 
                PEP0, 
                ^GPU0.MON0, 
                GPU0, 
                PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0E60)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ33)
        {
            Name (_HID, "QCOM00D1")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                AMSS
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0E60)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ36)
        {
            Name (_HID, "QCOM009E")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x09)  // _TZD: Thermal Zone Devices
            {
                ^SYSM.APC0.CL0.CPU0, 
                ^SYSM.APC0.CL0.CPU1, 
                ^SYSM.APC0.CL0.CPU2, 
                ^SYSM.APC0.CL0.CPU3, 
                ^SYSM.APC0.CL1.CPU4, 
                ^SYSM.APC0.CL1.CPU5, 
                ^SYSM.APC0.CL1.CPU6, 
                ^SYSM.APC0.CL1.CPU7, 
                PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0ED8)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    PEP0, 
                    ADC1
                })
            }
        }

        ThermalZone (TZ37)
        {
            Name (_HID, "QCOM009E")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x03)  // _TZD: Thermal Zone Devices
            {
                PEP0, 
                GPU0, 
                PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0F8C)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0FBE)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x02)
                {
                    PEP0, 
                    ADC1
                })
            }
        }

        ThermalZone (TZ40)
        {
            Name (_HID, "QCOM00CD")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                COEX
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DFC)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x05)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x1E)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }

        ThermalZone (TZ99)
        {
            Name (_HID, "QCOM00B4")  // _HID: Hardware ID
            Name (_UID, 0x64)  // _UID: Unique ID
            Name (_TZD, Package (0x0E)  // _TZD: Thermal Zone Devices
            {
                ^SYSM.APC0.CL0.CPU0, 
                ^SYSM.APC0.CL0.CPU1, 
                ^SYSM.APC0.CL0.CPU2, 
                ^SYSM.APC0.CL0.CPU3, 
                ^SYSM.APC0.CL1.CPU4, 
                ^SYSM.APC0.CL1.CPU5, 
                ^SYSM.APC0.CL1.CPU6, 
                ^SYSM.APC0.CL1.CPU7, 
                PEP0, 
                AMSS, 
                ^GPU0.MON0, 
                GPU0, 
                COEX, 
                PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0EC4)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0F28)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x0A)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    PEP0
                })
            }
        }