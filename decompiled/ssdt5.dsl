/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.dat, Sun Oct 10 01:12:08 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000058 (88)
 *     Revision         0x01
 *     Checksum         0xDB
 *     OEM ID           "LowPM"
 *     OEM Table ID     "LowPwrM"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "LowPM", "LowPwrM", 0x00001000)
{
    External (_SB_.DPTF, DeviceObj)
    External (LPMV, IntObj)

    Scope (\_SB.DPTF)
    {
        Name (LPSP, Package (0x01)
        {
            ToUUID ("b9455b06-7949-40c6-abf2-363a70c8706c")
        })
        Method (CLPM, 0, NotSerialized)
        {
            Return (LPMV) /* External reference */
        }
    }
}

