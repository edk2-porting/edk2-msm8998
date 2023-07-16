//
// The PEP Device & Driver Related Configuration
//

Device (PEP0)
{
    Name (_HID, "QCOM0035")  // _HID: Hardware ID
    Name (_CID, "PNP0D80" /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
    Name (_DEP, Package (One)  // _DEP: Dependencies
    {
        \_SB.PMIC
    })
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Return (ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
            {
                0x000001EA,
            }
            Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
            {
                0x000001DD,
            }
            Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
            {
                0x000000D8,
            }
            Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
            {
                0x000001CE,
            }
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x000000C8,
            }
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x000000C9,
            }
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x000000CB,
            }
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x00000045,
            }
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x00000046,
            }
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x0000013D,
            }
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x000000D7,
            }
        })
    }

    Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
    {
        Connection (
            I2cSerialBusV2 (0x0001, ControllerInitiated, 0x00000000,
                AddressingMode7Bit, "\\_SB.ABD",
                0x00, ResourceConsumer, , Exclusive,
                )
        ), 
        AccessAs (BufferAcc, AttribRawBytes (0x15)), 
        FLD0,   168
    }

    Method (GEPT, 0, NotSerialized)
    {
        Name (BUFF, Buffer (0x04){})
        CreateByteField (BUFF, Zero, STAT)
        CreateWordField (BUFF, 0x02, DATA)
        DATA = One
        Return (DATA) /* \_SB_.PEP0.GEPT.DATA */
    }

    Name (ROST, Zero)
    Method (NPUR, 1, NotSerialized)
    {
        \_SB.AGR0._PUR [One] = Arg0
        Notify (\_SB.AGR0, 0x80) // Status Change
    }

    Method (INTR, 0, NotSerialized)
    {
        Name (RBUF, Package (0x18)
        {
            0x02, 
            One, 
            0x03, 
            One, 
            0x06, 
            0x17911008, 
            One, 
            Zero, 
            0x86000000, 
            0x00200000, 
            Zero, 
            Zero, 
            0x00778000, 
            0x7000, 
            Zero, 
            Zero, 
            0x01FD4000, 
            0x08, 
            Zero, 
            Zero, 
            0x17911008, 
            Zero, 
            Zero, 
            Zero
        })
        Return (RBUF) /* \_SB_.PEP0.INTR.RBUF */
    }

    Method (CRTC, 0, NotSerialized)
    {
        Return (CTRX) /* \_SB_.PEP0.CTRX */
    }

    Name (CTRX, Package (0x0A)
    {
        "NSTC", 
        "HLCB", 
        "MMVD", 
        "DSGP", 
        "CCGP", 
        "MTPS", 
        "CPGP", 
        "DMPP", 
        "GBDL", 
        "SRDL"
    })

    Method (STND, 0, NotSerialized)
    {
        Return (STNX) /* \_SB_.PEP0.STNX */
    }

    Name (STNX, Package (0x19)
    {
        "DMSB", 
        "DMMS", 
        "DMPA", 
        "DMPC", 
        "DMPB", 
        "DM0G", 
        "DM1G", 
        "DM2G", 
        "DM3G", 
        "DM4G", 
        "DM5G", 
        "DM6G", 
        "DM7G", 
        "DM8G", 
        "DM9G", 
        "DMKG", 
        "DMPS", 
        "DMRC", 
        "DMPL", 
        "DMDQ", 
        "DMPI", 
        "DMWE", 
        "XMPC", 
        "XMPL"
    })

    Method (CTPM, 0, NotSerialized)
    {
        Name (CTPN, Package (0x03)
        {
            "CORE_TOPOLOGY", 
            0x04, 
            0x04
        })
        Return (CTPN) /* \_SB_.PEP0.CTPM.CTPN */
    }

    Name (CCFG, Package (0x08)
    {
        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL0.CPU0", 
            0x10
        }, 

        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL0.CPU1", 
            0x11
        }, 

        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL0.CPU2", 
            0x12
        }, 

        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL0.CPU3", 
            0x13
        }, 

        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL1.CPU4", 
            0x14
        }, 

        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL1.CPU5", 
            0x15
        }, 

        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL1.CPU6", 
            0x16
        }, 

        Package (0x02)
        {
            "\\_SB.SYSM.APC0.CL1.CPU7", 
            0x17
        }
    })
    Method (PGCC, 0, NotSerialized)
    {
        Return (CCFG) /* \_SB_.PEP0.CCFG */
    }

    Name (DCVS, Zero)
    Method (PGDS, 0, NotSerialized)
    {
        Return (DCVS) /* \_SB_.PEP0.DCVS */
    }

    Name (PPPP, Package (0x50)
    {
        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS2_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS3_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS4_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS5_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS6_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS7_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS8_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS9_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS10_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS11_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS12_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS13_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS1_C", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS2_C", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS3_C", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_SMPS4_C", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO2_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO3_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO4_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO5_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO6_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO7_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO8_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO9_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO10_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO11_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO12_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO13_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO14_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO15_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO16_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO17_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO18_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO19_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO20_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO21_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO22_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO23_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO24_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO25_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO26_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO27_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LDO28_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LVS1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_LVS2_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK3_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK3_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_DIFFCLK1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_LNBBCLK1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_CLK_DIST_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_SLEEPCLK1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK2_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK3_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_CLK_DIST_B", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_BUFFERS_CLK_DIST_C", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_CXO_CLOCK_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_RWAY_CX", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_RWAY_MX", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_RWAY_SSC_CX", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_RWAY_SSC_MX", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_BUCK_BOOST1_B", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_PMIC_GPIO_DV1", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_PMIC_GPIO_DV2", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_PMIC_GPIO_DV3", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_PMIC_MPP_DV1", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_PMIC_MPP_DV2", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_PMIC_MPP_DV3", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_TLMM_GPIO_DV1", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_TLMM_GPIO_DV2", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_TLMM_GPIO_DV3", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_DIV_CLK_1_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_DIV_CLK_2_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }, 

        Package (0x03)
        {
            "PPP_RESOURCE_ID_DIV_CLK_3_A", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
            "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
        }
    })
    Method (PPPM, 0, NotSerialized)
    {
        Return (PPPP) /* \_SB_.PEP0.PPPP */
    }

    Name (PRRP, Package (0x24)
    {
        "PPP_RESOURCE_RANGE_INFO_SMPS_A", 
        "PPP_RESOURCE_ID_SMPS1_A", 
        "PPP_RESOURCE_ID_SMPS13_A", 
        "PPP_RESOURCE_RANGE_INFO_SMPS_C", 
        "PPP_RESOURCE_ID_SMPS1_C", 
        "PPP_RESOURCE_ID_SMPS4_C", 
        "PPP_RESOURCE_RANGE_INFO_LDO_A", 
        "PPP_RESOURCE_ID_LDO1_A", 
        "PPP_RESOURCE_ID_LDO28_A", 
        "PPP_RESOURCE_RANGE_INFO_LVS_A", 
        "PPP_RESOURCE_ID_LVS1_A", 
        "PPP_RESOURCE_ID_LVS2_A", 
        "PPP_RESOURCE_RANGE_INFO_CXO_BUFFERS_A", 
        "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK1_A", 
        "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK3_A", 
        "PPP_RESOURCE_RANGE_INFO_CXO_CLOCK_A", 
        "PPP_RESOURCE_ID_CXO_CLOCK_A", 
        "PPP_RESOURCE_ID_CXO_CLOCK_A", 
        "PPP_RESOURCE_RANGE_INFO_RWAY", 
        "PPP_RESOURCE_ID_RWAY_CX", 
        "PPP_RESOURCE_ID_RWAY_SSC_MX", 
        "PPP_RESOURCE_RANGE_INFO_PMIC_GPIO_DV", 
        "PPP_RESOURCE_ID_PMIC_GPIO_DV1", 
        "PPP_RESOURCE_ID_PMIC_GPIO_DV3", 
        "PPP_RESOURCE_RANGE_INFO_PMIC_MPP_DV", 
        "PPP_RESOURCE_ID_PMIC_MPP_DV1", 
        "PPP_RESOURCE_ID_PMIC_MPP_DV3", 
        "PPP_RESOURCE_RANGE_INFO_TLMM_GPIO_DV", 
        "PPP_RESOURCE_ID_TLMM_GPIO_DV1", 
        "PPP_RESOURCE_ID_TLMM_GPIO_DV3", 
        "PPP_RESOURCE_RANGE_INFO_DIV_CLK_A", 
        "PPP_RESOURCE_ID_DIV_CLK_1_A", 
        "PPP_RESOURCE_ID_DIV_CLK_3_A", 
        "PPP_RESOURCE_RANGE_INFO_BUCK_BOOST_B", 
        "PPP_RESOURCE_ID_BUCK_BOOST1_B", 
        "PPP_RESOURCE_ID_BUCK_BOOST1_B"
    })
    Method (PPRR, 0, NotSerialized)
    {
        Return (PRRP) /* \_SB_.PEP0.PRRP */
    }

    Method (PGSD, 0, NotSerialized)
    {
        Return (SDFR) /* \_SB_.PEP0.SDFR */
    }

    Name (FPDP, Zero)
    Method (FPMD, 0, NotSerialized)
    {
        Return (FPDP) /* \_SB_.PEP0.FPDP */
    }

    Name (PPPC, Zero)
    Method (PGPC, 0, NotSerialized)
    {
        Return (PPPC) /* \_SB_.PEP0.PPPC */
    }
}

Include("../Common/vpp_voltage_settings.asl")
Include("../Common/vpp_vc_adjustment.asl")
Include("../Common/vpp_osm_settings.asl")
Include("../Common/vpp_kv.asl")
Include("../Common/vpp_global_target_quotient.asl")
Include("../Common/vpp_fuse_adjustment.asl")
Include("../Common/vpp_cpr_vc_band.asl")
Include("../Common/vpp_cpr_temp_point.asl")
Include("../Common/vpp_cpr_temp_adjustment.asl")

Include("../Common/lib_mpm.asl")
Include("../Common/pep_libSPM.asl")
Include("../Common/pep_vddresources.asl")
Include("../Common/pep_lmh.asl")
Include("../Common/pep_dvreg.asl")
Include("../Common/pep_dbgSettings.asl")

Include("../Common/pep_defaults.asl")
Include("../Common/pep_idle.asl")
Include("../Common/pep_cprh.asl")
Include("../Common/pep_cpr.asl")
Include("../Common/pep_dcvscfg.asl")
Include("../Common/pep_tsens.asl")

Include("../Common/audio_resources.asl")
Include("../Common/graphics_resources.asl")
Include("../Common/HoyaSmmu_resources.asl")
Include("../Common/msft_resources.asl")
Include("../Common/oem_resources.asl")
Include("../Common/subsys_resources.asl")
Include("../Common/pep_resources.asl")
Include("../Common/corebsp_resources.asl")
Include("../Common/ipa_resources.asl")
Include("../Common/crypto_resources.asl")
Include("../Common/wcnss_resources.asl")
