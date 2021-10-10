/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt10.dat, Sun Oct 10 01:12:08 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000059C (1436)
 *     Revision         0x01
 *     Checksum         0x6E
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)
    External (CFGD, UnknownObj)
    External (OSID, UnknownObj)
    External (PDC0, UnknownObj)

    Scope (\_PR.CPU0)
    {
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (((CFGD & One) && (PDC0 & One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }
            })
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If ((OSID == One))
            {
                Return (SPSS) /* \_PR_.CPU0.SPSS */
            }

            Return (NPSS) /* \_PR_.CPU0.NPSS */
        }

        Name (SPSS, Package (0x0E)
        {
            Package (0x06)
            {
                0x000005A1, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000184F, 
                0x0000184F
            }, 

            Package (0x06)
            {
                0x000005A0, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001241, 
                0x00001241
            }, 

            Package (0x06)
            {
                0x00000550, 
                0x0000075B, 
                0x0000000A, 
                0x0000000A, 
                0x00001140, 
                0x00001140
            }, 

            Package (0x06)
            {
                0x00000500, 
                0x000006E6, 
                0x0000000A, 
                0x0000000A, 
                0x0000103E, 
                0x0000103E
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x00000672, 
                0x0000000A, 
                0x0000000A, 
                0x00000F3C, 
                0x00000F3C
            }, 

            Package (0x06)
            {
                0x00000460, 
                0x000005FD, 
                0x0000000A, 
                0x0000000A, 
                0x00000E3B, 
                0x00000E3B
            }, 

            Package (0x06)
            {
                0x00000410, 
                0x00000588, 
                0x0000000A, 
                0x0000000A, 
                0x00000D39, 
                0x00000D39
            }, 

            Package (0x06)
            {
                0x000003C0, 
                0x00000514, 
                0x0000000A, 
                0x0000000A, 
                0x00000C37, 
                0x00000C37
            }, 

            Package (0x06)
            {
                0x00000370, 
                0x0000049F, 
                0x0000000A, 
                0x0000000A, 
                0x00000B36, 
                0x00000B36
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x0000042A, 
                0x0000000A, 
                0x0000000A, 
                0x00000A34, 
                0x00000A34
            }, 

            Package (0x06)
            {
                0x000002D0, 
                0x000003B6, 
                0x0000000A, 
                0x0000000A, 
                0x00000932, 
                0x00000932
            }, 

            Package (0x06)
            {
                0x00000280, 
                0x00000341, 
                0x0000000A, 
                0x0000000A, 
                0x00000831, 
                0x00000831
            }, 

            Package (0x06)
            {
                0x00000230, 
                0x000002CC, 
                0x0000000A, 
                0x0000000A, 
                0x0000072F, 
                0x0000072F
            }, 

            Package (0x06)
            {
                0x000001E0, 
                0x00000258, 
                0x0000000A, 
                0x0000000A, 
                0x0000062D, 
                0x0000062D
            }
        })
        Name (NPSS, Package (0x13)
        {
            Package (0x06)
            {
                0x00000780, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000184F, 
                0x0000184F
            }, 

            Package (0x06)
            {
                0x00000730, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000174D, 
                0x0000174D
            }, 

            Package (0x06)
            {
                0x000006E0, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000164A, 
                0x0000164A
            }, 

            Package (0x06)
            {
                0x00000690, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001547, 
                0x00001547
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001445, 
                0x00001445
            }, 

            Package (0x06)
            {
                0x000005F0, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001343, 
                0x00001343
            }, 

            Package (0x06)
            {
                0x000005A0, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001241, 
                0x00001241
            }, 

            Package (0x06)
            {
                0x00000550, 
                0x0000075B, 
                0x0000000A, 
                0x0000000A, 
                0x00001140, 
                0x00001140
            }, 

            Package (0x06)
            {
                0x00000500, 
                0x000006E6, 
                0x0000000A, 
                0x0000000A, 
                0x0000103E, 
                0x0000103E
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x00000672, 
                0x0000000A, 
                0x0000000A, 
                0x00000F3C, 
                0x00000F3C
            }, 

            Package (0x06)
            {
                0x00000460, 
                0x000005FD, 
                0x0000000A, 
                0x0000000A, 
                0x00000E3B, 
                0x00000E3B
            }, 

            Package (0x06)
            {
                0x00000410, 
                0x00000588, 
                0x0000000A, 
                0x0000000A, 
                0x00000D39, 
                0x00000D39
            }, 

            Package (0x06)
            {
                0x000003C0, 
                0x00000514, 
                0x0000000A, 
                0x0000000A, 
                0x00000C37, 
                0x00000C37
            }, 

            Package (0x06)
            {
                0x00000370, 
                0x0000049F, 
                0x0000000A, 
                0x0000000A, 
                0x00000B36, 
                0x00000B36
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x0000042A, 
                0x0000000A, 
                0x0000000A, 
                0x00000A34, 
                0x00000A34
            }, 

            Package (0x06)
            {
                0x000002D0, 
                0x000003B6, 
                0x0000000A, 
                0x0000000A, 
                0x00000932, 
                0x00000932
            }, 

            Package (0x06)
            {
                0x00000280, 
                0x00000341, 
                0x0000000A, 
                0x0000000A, 
                0x00000831, 
                0x00000831
            }, 

            Package (0x06)
            {
                0x00000230, 
                0x000002CC, 
                0x0000000A, 
                0x0000000A, 
                0x0000072F, 
                0x0000072F
            }, 

            Package (0x06)
            {
                0x000001E0, 
                0x00000258, 
                0x0000000A, 
                0x0000000A, 
                0x0000062D, 
                0x0000062D
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((CFGD & 0x01000000))
            {
                If ((CFGD & 0x00800000))
                {
                    If ((PDC0 & 0x0800))
                    {
                        Return (Package (0x01)
                        {
                            Package (0x05)
                            {
                                0x05, 
                                Zero, 
                                Zero, 
                                0xFE, 
                                0x04
                            }
                        })
                    }

                    Return (Package (0x01)
                    {
                        Package (0x05)
                        {
                            0x05, 
                            Zero, 
                            Zero, 
                            0xFC, 
                            0x04
                        }
                    })
                }

                If ((PDC0 & 0x0800))
                {
                    Return (Package (0x01)
                    {
                        Package (0x05)
                        {
                            0x05, 
                            Zero, 
                            Zero, 
                            0xFE, 
                            0x02
                        }
                    })
                }

                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFC, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFC, 
                    0x04
                }
            })
        }
    }
}

