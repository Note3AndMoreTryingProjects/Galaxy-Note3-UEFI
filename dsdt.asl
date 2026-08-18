DefinitionBlock("dsdt.aml", "DSDT", 0x02, "QCOM", "MSM8974", 0x00000001)
{
    Scope(\_SB)
    {
        Device(CPU0) { Name(_HID, "ACPI0007") Name(_UID, 0) }
        Device(CPU1) { Name(_HID, "ACPI0007") Name(_UID, 1) }
        Device(CPU2) { Name(_HID, "ACPI0007") Name(_UID, 2) }
        Device(CPU3) { Name(_HID, "ACPI0007") Name(_UID, 3) }

        Device(GIC0)
        {
            Name(_HID, "MSM8974GIC")
            Name(_UID, 0)
        }

        Device(MEM0)
        {
            Name(_HID, "PNP0C01")
            Name(_UID, 0)
            Name(_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x00000000, 0xA0000000)
            })
        }
    }
}
