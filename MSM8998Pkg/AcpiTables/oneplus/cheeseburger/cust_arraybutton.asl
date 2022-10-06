Device (BTNS)
{
    Name (_HID, "ACPI0011" /* Generic Buttons Device */)  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, Zero)  // _UID: Unique ID
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            GpioInt (Edge, ActiveBoth, Exclusive, PullDown, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0040
                }
            GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullUp, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0628
                }
            GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0x0000,
                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0041
                }
        })
        Return (RBUF) /* \_SB_.BTNS._CRS.RBUF */
    }

    Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
    {
        ToUUID ("fa6bd625-9ce8-470d-a2c7-b3ca36c4282e"), 
        Package (0x04)
        {
            Package (0x05)
            {
                Zero, 
                One, 
                Zero, 
                One, 
                0x0D
            }, 

            Package (0x05)
            {
                One, 
                Zero, 
                One, 
                One, 
                0x81
            }, 

            Package (0x05)
            {
                One, 
                One, 
                One, 
                0x0C, 
                0xE9
            }, 

            Package (0x05)
            {
                One, 
                0x02, 
                One, 
                0x0C, 
                0xEA
            }
        }
    })
}
