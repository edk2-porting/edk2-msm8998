Scope (\_SB.PEP0)
        {
            Method (LPMX, 0, NotSerialized)
            {
                Return (LPXC) /* \_SB_.PEP0.LPXC */
            }

            Name (LPXC, Package (0x01)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.TSC1", 
                    Package ()
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x7D, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x32, 
                                One, 
                                Zero, 
                                One, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x59, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                0x001B7740, 
                                0x9C40, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x59, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0xC8
                            }
                        }
                    }, 

                    Package (0x08)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x59, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x32, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x7D, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero
                            }
                        }
                    }
                }
            })
        }
