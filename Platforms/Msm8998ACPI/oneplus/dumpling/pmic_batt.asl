// This file contains the Power Management IC (PMIC)
// ACPI device definitions, configuration and look-up tables.
//
Include("cust_pmic_batt.asl")
Include("../Common/pmic_batt_fuel_gauges.asl")

Device (PMBM)
{
    Name (_HID, "QCOM0060")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, Buffer (0x02)
        {
             0x79, 0x00                                       // y.
        })
        Return (RBUF) /* \_SB_.PMBM._CRS.RBUF */
    }

    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        Return (0x0F)
    }
}

Device (PMBT)
{
    Name (_HID, "QCOM0061")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_DEP, Package (0x02)  // _DEP: Dependencies
    {
        \_SB.PMIC, 
        \_SB.ADC1, 
    //  \_SB.PEIC
    })
    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        Return (0x0F)
    }

    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0209
                }
            GpioInt (Edge, ActiveHigh, Exclusive, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x020B
                }
            GpioInt (Edge, ActiveHigh, Exclusive, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x009D
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0090
                }
        })
        Return (RBUF) /* \_SB_.PMBT._CRS.RBUF */
    }

    Method (BMNR, 0, NotSerialized)
    {
        Name (CFG0, Package (0x05)
        {
            One, 
            Zero, 
            One, 
            Zero, 
            "CUST_PMIC"
        })
        CFG0 [0x04] = CUST /* \_SB_.CUST */
        Return (CFG0) /* \_SB_.PMBT.BMNR.CFG0 */
    }

    Method (BTIM, 0, NotSerialized)
    {
        Name (CFG0, Package (0x08)
        {
            0x7530, 
            0x2710, 
            0x000493E0, 
            0x0001D4C0, 
            Zero, 
            Zero, 
            0x01AC7780, 
            Zero
        })
        Return (CFG0) /* \_SB_.PMBT.BTIM.CFG0 */
    }

    Method (BBAT, 0, NotSerialized)
    {
        Name (CFG0, Package (0x0D)
        {
            One, 
            0x4C494F4E, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            "QCOMBATT01", 
            "Qualcomm", 
            "QCOMBAT01_07012011", 
            "07012011", 
            0x13, 
            0x04, 
            0x07DE
        })
        Local0 = (PCT1 * BFCC) /* \_SB_.BFCC */
        Divide (Local0, 0x64, Local1, Local2)
        Local0 = (PCT2 * BFCC) /* \_SB_.BFCC */
        Divide (Local0, 0x64, Local1, Local3)
        CFG0 [0x02] = BFCC /* \_SB_.BFCC */
        CFG0 [0x03] = BFCC /* \_SB_.BFCC */
        CFG0 [0x04] = Local2
        CFG0 [0x05] = Local3
        Return (CFG0) /* \_SB_.PMBT.BBAT.CFG0 */
    }

    Method (BPCH, 0, NotSerialized)
    {
        Name (CFG0, Package (0x03)
        {
            0x0BB8, 
            0x0BB8, 
            0x05DC
        })
        Return (CFG0) /* \_SB_.PMBT.BPCH.CFG0 */
    }

    Method (BFCH, 0, NotSerialized)
    {
        Name (CFG0, Package (0x04)
        {
            One, 
            0x05, 
            0x1388, 
            0x0384
        })
        Return (CFG0) /* \_SB_.PMBT.BFCH.CFG0 */
    }

    Method (BCCC, 0, NotSerialized)
    {
        Name (CFG0, Package (0x03)
        {
            One, 
            Zero, 
            Zero
        })
        Return (CFG0) /* \_SB_.PMBT.BCCC.CFG0 */
    }

    Method (BRCH, 0, NotSerialized)
    {
        Name (CFG0, Package (0x02)
        {
            0x64, 
            Zero
        })
        Return (CFG0) /* \_SB_.PMBT.BRCH.CFG0 */
    }

    Method (_BQI, 0, NotSerialized)
    {
        Name (CFG0, Package (0x01)
        {
            Zero
        })
        Return (CFG0) /* \_SB_.PMBT._BQI.CFG0 */
    }

    Method (BIRQ, 0, NotSerialized)
    {
        Name (CFG0, Package (0x04)
        {
            "VbatLow", 
            "BattMissing", 
            "FvCal", 
            "JeitaLimit"
        })
        Return (CFG0) /* \_SB_.PMBT.BIRQ.CFG0 */
    }

    Method (BPLT, 0, NotSerialized)
    {
        Name (CFG0, Package (0x2F)
        {
            0x0400, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            One, 
            0x32, 
            0x32, 
            0x1388, 
            0x08, 
            One, 
            0x50, 
            0xFFFFFFEC, 
            0x48, 
            0x64, 
            0x1E, 
            0x05, 
            0x06, 
            0x01F4, 
            0x7E, 
            0x0190, 
            0xFFFFFFFF, 
            0x02EE, 
            One, 
            0x02, 
            0x32, 
            0x0A, 
            One, 
            0xFFFFFFEC, 
            0x0A, 
            0x0A, 
            0x0A, 
            0x0A, 
            One, 
            0x96, 
            0x64, 
            0x05, 
            0x0A, 
            0x02, 
            0x33, 
            0x02, 
            0x0A, 
            Zero, 
            Zero, 
            0x46, 
            0x32, 
            0x3C
        })
        CFG0 [One] = VNOM /* \_SB_.VNOM */
        CFG0 [0x02] = VLOW /* \_SB_.VLOW */
        CFG0 [0x03] = EMPT /* \_SB_.EMPT */
        CFG0 [0x04] = DCMA /* \_SB_.DCMA */
        CFG0 [0x15] = BOCP /* \_SB_.BOCP */
        CFG0 [0x19] = IFGD /* \_SB_.IFGD */
        CFG0 [0x1A] = VFGD /* \_SB_.VFGD */
        Return (CFG0) /* \_SB_.PMBT.BPLT.CFG0 */
    }

    Method (BPTM, 0, NotSerialized)
    {
        Name (CFG0, Package (0x02)
        {
            0x3A98, 
            Zero
        })
        Return (CFG0) /* \_SB_.PMBT.BPTM.CFG0 */
    }

    Name (BCT1, Package (0x0A)
    {
        0x10FE, 
        0x0834, 
        Zero, 
        0x0A, 
        0x2D, 
        0x37, 
        0x69, 
        Zero, 
        Zero, 
        0x03E8
    })
    Method (BJTA, 0, NotSerialized)
    {
        Name (CFG0, Package (0x03)
        {
            0x02, 
            0x02, 
            Package (0x0A)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }
        })
        \_SB.PMBT.BCT1 [Zero] = VDD1 /* \_SB_.VDD1 */
        \_SB.PMBT.BCT1 [One] = FCC1 /* \_SB_.FCC1 */
        \_SB.PMBT.BCT1 [0x02] = HCLI /* \_SB_.HCLI */
        \_SB.PMBT.BCT1 [0x03] = SCLI /* \_SB_.SCLI */
        \_SB.PMBT.BCT1 [0x04] = SHLI /* \_SB_.SHLI */
        \_SB.PMBT.BCT1 [0x05] = HHLI /* \_SB_.HHLI */
        \_SB.PMBT.BCT1 [0x06] = FVC1 /* \_SB_.FVC1 */
        \_SB.PMBT.BCT1 [0x09] = CCC1 /* \_SB_.CCC1 */
        CFG0 [0x02] = \_SB.PMBT.BCT1
        Return (CFG0) /* \_SB_.PMBT.BJTA.CFG0 */
    }

    Method (BAT1, 0, NotSerialized)
    {
        Name (CFG0, Package (0x05)
        {
            Zero, 
            0xFFFFFFEC, 
            0x41, 
            Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x0A)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }
        })
        CFG0 [0x04] = \_SB.PMBT.BCT1
        Return (CFG0) /* \_SB_.PMBT.BAT1.CFG0 */
    }

    Method (BEHC, 0, NotSerialized)
    {
        Name (CFG0, Package (0x08)
        {
            One, 
            0x08, 
            One, 
            Zero, 
            Zero, 
            0x02, 
            0x02, 
            0x04
        })
        Return (CFG0) /* \_SB_.PMBT.BEHC.CFG0 */
    }

    Method (CTMC, 0, NotSerialized)
    {
        Name (CFG0, Package (0x07)
        {
            0x07D0, 
            0x36B0, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0x0003A980, 
            0x0006DDD0, 
            One
        })
        CFG0 [0x02] = RID2 /* \_SB_.RID2 */
        CFG0 [0x03] = RID3 /* \_SB_.RID3 */
        Return (CFG0) /* \_SB_.PMBT.CTMC.CFG0 */
    }

    Method (BMPC, 0, NotSerialized)
    {
        Name (CFG0, Package (0x0C)
        {
            One, 
            Zero, 
            0x1B58, 
            0x03E8, 
            0x32, 
            0x3C, 
            0x01F4, 
            0x5A, 
            Zero, 
            0x46, 
            Zero, 
            Package (0x04)
            {
                0x05, 
                0x05, 
                0x78, 
                0x05
            }
        })
        Return (CFG0) /* \_SB_.PMBT.BMPC.CFG0 */
    }
}

//
//PMIC Type-C Controler Driver (PMICTCC) Driver
//
Device (PTCC)
{
    Name (_HID, "QCOM00EB")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_DEP, Package (One)  // _DEP: Dependencies
    {
        \_SB.PMIC
    })
    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        Return (Zero)
    }

    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x009F
                }
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x00BE
                }
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x00BD
                }
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x00BC
                }
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x00BB
                }
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x00BA
                }
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x00B9
                }
            GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x00B8
                }
            GpioInt (Edge, ActiveHigh, Exclusive, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0089
                }
        })
        Return (RBUF) /* \_SB_.PTCC._CRS.RBUF */
    }

    Method (PIEN, 0, NotSerialized)
    {
        Name (CFG0, Package (0x09)
        {
            "CCStChg", 
            "MsgRxDiscd", 
            "MsgTxDiscd", 
            "MsgTxFailed", 
            "MsgRecv", 
            "MsgSent", 
            "SgnlRecv", 
            "SgnlSent", 
            "OtgOc"
        })
        Return (CFG0) /* \_SB_.PTCC.PIEN.CFG0 */
    }
}

Device (BCL1)
{
    Name (_HID, "QCOM00DB")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_DEP, Package (One)  // _DEP: Dependencies
    {
        \_SB.PMIC
    })
    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        Return (0x0F)
    }

    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x01E8
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x01E9
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x01EA
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x01EB
                }
        //  GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
        //      "\\_SB.PM01", 0x00, ResourceConsumer, ,
        //      )
        //      {   // Pin list
        //          0x01EC
        //      }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x01F3
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0210
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0211
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0213
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0214
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0204
                }
            GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0206
                }
            GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                RawDataBuffer (0x01)  // Vendor Data
                {
                    0x08
                })
                {   // Pin list
                    0x0218
                }
            GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                RawDataBuffer (0x01)  // Vendor Data
                {
                    0x08
                })
                {   // Pin list
                    0x0219
                }
            GpioInt (Edge, ActiveBoth, Shared, PullUp, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                RawDataBuffer (0x01)  // Vendor Data
                {
                    0x08
                })
                {   // Pin list
                    0x021A
                }
        })
        Return (RBUF) /* \_SB_.BCL1._CRS.RBUF */
    }

    Method (BCLS, 0, NotSerialized)
    {
        Name (CFG0, Package (0x0B)
        {
            0x02, 
            0x07, 
            0x1388, 
            0x50, 
            0x5A, 
            0x0CE4, 
            0x0A28, 
            0x0C80, 
            0x0ABE, 
            0x09C4, 
            0x0A
        })
        Return (CFG0) /* \_SB_.BCL1.BCLS.CFG0 */
    }

    Method (BCLQ, 0, NotSerialized)
    {
        Name (CFG0, Package (0x0F)
        {
            "VCOMP_LOW0", 
            "VCOMP_LOW1", 
            "VCOMP_LOW2", 
            "VCOMP_HI", 
            "SYS_OK", 
            "BAN_ALARM", 
            "IBATT_HI", 
            "IBATT_THI", 
            "VBATT_LOW", 
            "VBATT_TLOW", 
            "MSOC_LOW", 
            "MSOC_HI", 
            "LMH_LVL0", 
            "LMH_LVL1", 
            "LMH_LVL2"
        })
        Return (CFG0) /* \_SB_.BCL1.BCLQ.CFG0 */
    }
}