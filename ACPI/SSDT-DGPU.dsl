/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLQKYBYU.aml, Fri May 21 20:26:41 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000EF (239)
 *     Revision         0x02
 *     Checksum         0xC8
 *     OEM ID           "hack"
 *     OEM Table ID     "DGPU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "DGPU", 0x00000000)
{
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments
    External (ZWAK, MethodObj)    // 1 Arguments

    Method (DGPU, 0, NotSerialized)
    {
        If (CondRefOf (\_SB.PCI0.PEG0.PEGP._OFF))
        {
            \_SB.PCI0.PEG0.PEGP._OFF ()
        }
    }

    Device (RMD1)
    {
        Name (_HID, "RMD10000")  // _HID: Hardware ID
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                DGPU ()
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }

            Return (Zero)
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        Local0 = ZWAK (Arg0)
        If (_OSI ("Darwin"))
        {
            DGPU ()
        }

        Return (Local0)
    }
}

