Device (BAT1)
{
    Name (_HID, "BQB1380")  // _HID: Hardware ID // BQ27411
    Name (_UID, One)  // _UID: Unique ID
    Name (_DEP, Package (One)  // _DEP: Dependencies
    {
        \_SB.I2C7
    })
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0055, ControllerInitiated, 0x000186A0,
                AddressingMode7Bit, "\\_SB.I2C7",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        Return (RBUF) /* \_SB_.BAT1._CRS.RBUF */
    }
}
