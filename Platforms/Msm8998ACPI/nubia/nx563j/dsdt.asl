//
// NOTE: The 3rd parameter (i.e. ComplianceRevision) must be >=2 for 64-bit integer support.
//
DefinitionBlock ("", "DSDT", 2, "QCOMM ", "MSM8998 ", 3)
{
    External (BLCK, IntObj)
    External (PCF1, IntObj)
    External (PCF2, IntObj)
    External (PCF3, IntObj)
    External (PCF6, IntObj)
    External (PCF7, IntObj)

    Scope (\_SB) {

        Include("../Common/addSub.asl")
        Include("dsdt_common.asl")
        Include("../Common/cust_dsdt.asl") 

        Include("../Common/usb.asl")
        
        // Thermal Zone devices depend on PEP
        Include("../Common/cust_thermal_zones.asl")
        
		//
        // Hardware Notifications
		//
        Include("../Common/cust_hwn.asl")

		//
        // Buttons
		//
        Include("../Common/cust_arraybutton.asl")

        //
        // Touch
        //
        Include("cust_touch.asl")

        //
        // Data components
        //
        Include("../Common/data.asl")

        //
        // Qualcomm Diagnostic Consumer Interface
        //
        Device (QDCI)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.GLNK
            })
            Name (_HID, "QCOM0023")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
        }

        //
        // Bluetooth
        //
        Include("../Common/wcnss_bt.asl")

        //
        // ADC driver
        //
        Include("../Common/adc.asl")
    }
}
