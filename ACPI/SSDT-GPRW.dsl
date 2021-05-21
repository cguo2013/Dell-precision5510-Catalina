/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLSOFszF.aml, Fri May 21 20:30:17 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000005C (92)
 *     Revision         0x02
 *     Checksum         0x98
 *     OEM ID           "hack"
 *     OEM Table ID     "GPRW"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "GPRW", 0x00000000)
{
    External (YPRW, MethodObj)    // 2 Arguments

    Scope (\)
    {
        Method (GPRW, 2, NotSerialized)
        {
            If ((_OSI ("Darwin") && (0x6D == Arg0)))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }

            Return (\YPRW (Arg0, Arg1))
        }
    }
}

