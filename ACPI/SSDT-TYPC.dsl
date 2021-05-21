/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLbflHLh.aml, Fri May 21 20:33:09 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006D (109)
 *     Revision         0x02
 *     Checksum         0x64
 *     OEM ID           "hack"
 *     OEM Table ID     "TYPC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TYPC", 0x00000000)
{
    External (_SB_.PCI0.RP15.PXSX, DeviceObj)

    Scope (\_SB.PCI0.RP15.PXSX)
    {
        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            If (_OSI ("Darwin"))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

