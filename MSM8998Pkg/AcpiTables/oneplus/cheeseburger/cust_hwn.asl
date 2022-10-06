Name (HWNH, Zero)
Name (HWNL, Zero)

//
// HWN Haptics
//
Device (HWN1)
{
    Name (_HID, "QCOM00A9")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, One)  // _UID: Unique ID
    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        If ((\_SB.HWNH == Zero))
        {
            Return (Zero)
        }
        Else
        {
            Return (0x0F)
        }
    }

    Name (_DEP, Package (One)  // _DEP: Dependencies
    {
        \_SB.PMIC
    })
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            GpioInt (Level, ActiveHigh, Exclusive, PullNone, 0x0000,
                "\\_SB.PM02", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0E00
                }
        })
        Return (RBUF) /* \_SB_.HWN1._CRS.RBUF */
    }

    Method (HAPI, 0, NotSerialized)
    {
        Name (CFG0, Package (0x03)
        {
            One, 
            One, 
            One
        })
        Return (CFG0) /* \_SB_.HWN1.HAPI.CFG0 */
    }

    Method (HAPC, 0, NotSerialized)
    {
        Name (CFG0, Package (0x16)
        {
            Zero, 
            0x0C80, 
            Zero, 
            One, 
            One, 
            One, 
            One, 
            Zero, 
            0x02, 
            One, 
            0x03, 
            0x14, 
            One, 
            0x1B, 
            Zero, 
            One, 
            0x06, 
            Zero, 
            Zero, 
            0x0535, 
            0x03, 
            One
        })
        Return (CFG0) /* \_SB_.HWN1.HAPC.CFG0 */
    }
}

//
// HWN LED
//
Device (HWN0)
{
    Name (_HID, "QCOM00A8")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, Zero)  // _UID: Unique ID
    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        If ((\_SB.HWNL == Zero))
        {
            Return (Zero)
        }
        Else
        {
            Return (0x0F)
        }
    }

    Method (HWNL, 0, NotSerialized)
    {
        Name (CFG0, Package (0x10)
        {
            One, 
            0x03, 
            0x019B, 
            0x14, 
            0x20, 
            0x02, 
            0x40, 
            0x03, 
            0x80, 
            0x04, 
            One, 
            One, 
            One, 
            0x03, 
            One, 
            One
        })
        Return (CFG0) /* \_SB_.HWN0.HWNL.CFG0 */
    }
}
