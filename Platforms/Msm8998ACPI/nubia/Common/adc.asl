/*============================================================================
  FILE:         adc.asl

  OVERVIEW:     This file contains the board-specific configuration info for
                ADC1 - qcadc analog-to-digital converter (ADC): ACPI device
                definitions, common settings, etc.

  DEPENDENCIES: None

============================================================================*/

/*----------------------------------------------------------------------------
 * QCADC
 * -------------------------------------------------------------------------*/

Device (ADC1)
{
    Name (_DEP, Package (0x02)  // _DEP: Dependencies
    {
        \_SB.SPMI, 
        \_SB.PMIC
    })

    /*----------------------------------------------------------------------------
     * HID
     * -------------------------------------------------------------------------*/
    Name (_HID, "QCOM0020")
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, Zero)

    Method (_CRS)
    {
        /*----------------------------------------------------------------------------
         * ADC Resources
         * -------------------------------------------------------------------------*/
        Name (INTB, ResourceTemplate ()
        {
            // VAdc - EOC
            // ID = {slave id}{perph id}{int} = {0}{0011 0001}{000} = 0x188
            GpioInt(Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0, "\\_SB.PM01", , , , RawDataBuffer(){0x2}) {0x188} // 0x188 - PM_INT__VADC_HC1_USR__EOC

            // VAdc TM - All interrupts
            // ID = {slave id}{perph id}{int} = {0}{0011 0100}{000} = 0x1A0
            GpioInt(Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0, "\\_SB.PM01", , , , RawDataBuffer(){0x2}) {0x1A0} // 0x1A0 - PM_INT__VADC_HC7_BTM__THR

        })
    /*
     * SPMI peripherals
     */
    Name(NAM, Buffer() {"\\_SB.SPMI"})

    // VAdc
    Name(VUSR, Buffer()
    {
        0x8E,       // SPB Descriptor
        0x13, 0x00, // Length including NAM above
        0x01,       // +0x00 SPB Descriptor Revision
        0x00,       // +0x01 Resource Source Index
        0xC1,       // +0x02 Bus type - vendor defined values are in the range 0xc0-0xff
        0x02,       // +0x03 Consumer + controller initiated
        0x00, 0x31, // +0x04 Type specific flags . Slave id, Upper8 bit address
        0x01,       // +0x06 Type specific revision
        0x00, 0x00  // +0x07 type specific data length
                    // +0x09 - 0xd bytes for NULL-terminated NAM
                    // Length = 0x13
    })

    // VAdc TM
    Name(VBTM, Buffer()
    {
        0x8E,       // SPB Descriptor
        0x13, 0x00, // Length including NAM above
        0x01,       // +0x00 SPB Descriptor Revision
        0x00,       // +0x01 Resource Source Index
        0xC1,       // +0x02 Bus type - vendor defined values are in the range 0xc0-0xff
        0x02,       // +0x03 Consumer + controller initiated
        0x00, 0x34, // +0x04 Type specific flags . Slave id, Upper8 bit address
        0x01,       // +0x06 Type specific revision
        0x00, 0x00  // +0x07 type specific data length
                    // +0x09 - 0xd bytes for NULL-terminated NAM
                    // Length = 0x13
    })

        Concatenate (VUSR, NAM, Local1)
        Concatenate (VBTM, NAM, Local2)
        Concatenate (Local1, Local2, Local3)
        Concatenate (Local3, INTB, Local0)
        Return (Local0)
    }

    Method (ADDV, 0, NotSerialized)
    {
        Return (Package (0x03)
        {
            One, 
            One, 
            Zero
        })
    }

    Method (GENP, 0, NotSerialized)
    {
        Return (Package (0x0A)
        {
            Zero, 
            0x4000, 
            0x001C9C38, 
            0x0007A120, 
            0x11, 
            Zero, 
            Zero, 
            0x0300, 
            0x0100, 
            0x08
        })
    }

    Method (PTCF, 1, NotSerialized)
    {
        Local0 = (Arg0 >> One)
        Local0 -= 0x00042B08
        Return (Local0)
    }

    Method (PTCI, 1, NotSerialized)
    {
        Local0 = (Arg0 + 0x00042B08)
        Local0 <<= One
        Return (Local0)
    }

    Method (VGIO, 0, NotSerialized)
    {
        Return (Package (0x08)
        {
            Package (0x02)
            {
                0x08, 
                Buffer (0x04)
                {
                        0x12, 0x32, 0x52, 0x72                           // .2Rr
                }
            }, 

            Package (0x02)
            {
                0x09, 
                Buffer (0x04)
                {
                        0x13, 0x33, 0x53, 0x73                           // .3Ss
                }
            }, 

            Package (0x02)
            {
                0x0A, 
                Buffer (0x04)
                {
                        0x14, 0x34, 0x54, 0x74                           // .4Tt
                }
            }, 

            Package (0x02)
            {
                0x0B, 
                Buffer (0x04)
                {
                        0x15, 0x35, 0x55, 0x75                           // .5Uu
                }
            }, 

            Package (0x02)
            {
                0x0C, 
                Buffer (0x04)
                {
                        0x16, 0x36, 0x56, 0x76                           // .6Vv
                }
            }, 

            Package (0x02)
            {
                0x15, 
                Buffer (0x05)
                {
                        0x17, 0x37, 0x57, 0x77, 0x97                     // .7Ww.
                }
            }, 

            Package (0x02)
            {
                0x16, 
                Buffer (0x05)
                {
                        0x18, 0x38, 0x58, 0x78, 0x98                     // .8Xx.
                }
            }, 

            Package (0x02)
            {
                0x17, 
                Buffer (0x05)
                {
                        0x19, 0x39, 0x59, 0x79, 0x99                     // .9Yy.
                }
            }
        })
    }

    Method (VTGN, 0, NotSerialized)
    {
        Return (Package (0x09)
        {
            0x02, 
            0x02, 
            0x4000, 
            0x001C9C38, 
            Zero, 
            Zero, 
            0x0300, 
            0x0100, 
            0x08
        })
    }

    Method (GENF, 0, NotSerialized)
    {
        Return (Package (0x0D)
        {
            0xFFFFFFE2, 
            0x61, 
            0xFFFFFFCE, 
            0xA0, 
            0x03FF, 
            0x002625A0, 
            0x01F4, 
            0x04, 
            0x0334, 
            0x004C4B40, 
            0x02, 
            One, 
            0x0D
        })
    }

    Method (FCHN, 0, NotSerialized)
    {
        Return (Package (0x0C)
        {
            Package (0x08)
            {
                "BATT_ID_OHMS", 
                One, 
                One, 
                Zero, 
                One, 
                One, 
                One, 
                Zero
            }, 

            Package (0x08)
            {
                "BATT_ID_OHMS_FRESH", 
                0x02, 
                One, 
                Zero, 
                One, 
                One, 
                One, 
                Zero
            }, 

            Package (0x08)
            {
                "BATT_THERM", 
                0x06, 
                One, 
                Zero, 
                One, 
                One, 
                0x03, 
                Zero
            }, 

            Package (0x08)
            {
                "AUX_THERM", 
                0x07, 
                One, 
                Zero, 
                One, 
                One, 
                0x03, 
                Zero
            }, 

            Package (0x08)
            {
                "SKIN_THERM", 
                Zero, 
                One, 
                Zero, 
                One, 
                One, 
                0x03, 
                Zero
            }, 

            Package (0x08)
            {
                "PMIC_TEMP2", 
                0x0C, 
                One, 
                Zero, 
                0x03, 
                0x02, 
                0x02, 
                FGDT
            }, 

            Package (0x08)
            {
                "CHG_TEMP", 
                0x0D, 
                One, 
                Zero, 
                0x03, 
                0x02, 
                0x02, 
                FGCT
            }, 

            Package (0x08)
            {
                "USB_IN", 
                0x08, 
                One, 
                Zero, 
                One, 
                0x08, 
                Zero, 
                Zero
            }, 

            Package (0x08)
            {
                "USB_IN_I", 
                0x09, 
                One, 
                Zero, 
                One, 
                One, 
                0x04, 
                Zero
            }, 

            Package (0x08)
            {
                "DC_IN", 
                0x0A, 
                One, 
                Zero, 
                One, 
                0x08, 
                Zero, 
                Zero
            }, 

            Package (0x08)
            {
                "DC_IN_I", 
                0x0B, 
                One, 
                Zero, 
                One, 
                One, 
                0x04, 
                Zero
            }, 

            Package (0x08)
            {
                "FG_GPIO", 
                0x0E, 
                Zero, 
                Zero, 
                One, 
                0x02, 
                Zero, 
                Zero
            }
        })
    }

    Method (FGDT, 0, NotSerialized)
    {
        Return (Package (0x02)
        {
            Package (0x02)
            {
                0x01C2, 
                0xFFFF3CB0
            }, 

            Package (0x02)
            {
                0x0366, 
                0x00027100
            }
        })
    }

    Method (FGCT, 0, NotSerialized)
    {
        Return (Package (0x02)
        {
            Package (0x02)
            {
                0x0633, 
                0xFFFF3CB0
            }, 

            Package (0x02)
            {
                0x0318, 
                0x00027100
            }
        })
    }
}

Include("../Common/cust_adc.asl")
