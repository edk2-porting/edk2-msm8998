/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of IORT.aml, Tue May  2 20:07:05 2023
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 00000EB4
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 00     /* Incorrect checksum, should be CA */
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008998
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]                   Node Count : 00000012
[028h 0040   4]                  Node Offset : 00000030
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   1]                         Type : 03
[031h 0049   2]                       Length : 00E4
[033h 0051   1]                     Revision : 00
[034h 0052   4]                     Reserved : 00000000
[038h 0056   4]                Mapping Count : 00000004
[03Ch 0060   4]               Mapping Offset : 00000094

[040h 0064   8]                 Base Address : 0000000001680000
[048h 0072   8]                         Span : 0000000000010000
[050h 0080   4]                        Model : 00000001
[054h 0084   4]        Flags (decoded below) : 00000001
                               DVM Supported : 1
                               Coherent Walk : 0
[058h 0088   4]      Global Interrupt Offset : 0000003C
[05Ch 0092   4]      Context Interrupt Count : 00000008
[060h 0096   4]     Context Interrupt Offset : 0000004C
[064h 0100   4]          PMU Interrupt Count : 00000001
[068h 0104   4]         PMU Interrupt Offset : 0000008C

[06Ch 0108   4]                      NSgIrpt : 00000107
[070h 0112   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116   4]                   NSgCfgIrpt : 00000105
[078h 0120   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124   8]            Context Interrupt : 000000000000018C
[084h 0132   8]            Context Interrupt : 000000000000018D
[08Ch 0140   8]            Context Interrupt : 000000000000018E
[094h 0148   8]            Context Interrupt : 000000000000018F
[09Ch 0156   8]            Context Interrupt : 0000000000000190
[0A4h 0164   8]            Context Interrupt : 0000000000000191
[0ACh 0172   8]            Context Interrupt : 0000000000000192
[0B4h 0180   8]            Context Interrupt : 00000000000001CF
[0BCh 0188   8]                PMU Interrupt : 0000000000000193

[0C4h 0196   4]                   Input base : 00001400
[0C8h 0200   4]                     ID Count : 00000000
[0CCh 0204   4]                  Output Base : 00000000
[0D0h 0208   4]             Output Reference : 00000000
[0D4h 0212   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[0D8h 0216   4]                   Input base : 00001440
[0DCh 0220   4]                     ID Count : 00000000
[0E0h 0224   4]                  Output Base : 00000000
[0E4h 0228   4]             Output Reference : 00000000
[0E8h 0232   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[0ECh 0236   4]                   Input base : 00001460
[0F0h 0240   4]                     ID Count : 00000017
[0F4h 0244   4]                  Output Base : 00000000
[0F8h 0248   4]             Output Reference : 00000000
[0FCh 0252   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[100h 0256   4]                   Input base : 00001480
[104h 0260   4]                     ID Count : 0000000F
[108h 0264   4]                  Output Base : 00000000
[10Ch 0268   4]             Output Reference : 00000000
[110h 0272   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[114h 0276   1]                         Type : 03
[115h 0277   2]                       Length : 0220
[117h 0279   1]                     Revision : 00
[118h 0280   4]                     Reserved : 00000000
[11Ch 0284   4]                Mapping Count : 0000000F
[120h 0288   4]               Mapping Offset : 000000F4

[124h 0292   8]                 Base Address : 00000000016C0000
[12Ch 0300   8]                         Span : 0000000000040000
[134h 0308   4]                        Model : 00000001
[138h 0312   4]        Flags (decoded below) : 00000001
                               DVM Supported : 1
                               Coherent Walk : 0
[13Ch 0316   4]      Global Interrupt Offset : 0000003C
[140h 0320   4]      Context Interrupt Count : 00000014
[144h 0324   4]     Context Interrupt Offset : 0000004C
[148h 0328   4]          PMU Interrupt Count : 00000001
[14Ch 0332   4]         PMU Interrupt Offset : 000000EC

[150h 0336   4]                      NSgIrpt : 00000107
[154h 0340   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[158h 0344   4]                   NSgCfgIrpt : 00000105
[15Ch 0348   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[160h 0352   8]            Context Interrupt : 0000000000000195
[168h 0360   8]            Context Interrupt : 0000000000000196
[170h 0368   8]            Context Interrupt : 0000000000000197
[178h 0376   8]            Context Interrupt : 0000000000000198
[180h 0384   8]            Context Interrupt : 0000000000000199
[188h 0392   8]            Context Interrupt : 000000000000019A
[190h 0400   8]            Context Interrupt : 00000000000001EE
[198h 0408   8]            Context Interrupt : 00000000000001EF
[1A0h 0416   8]            Context Interrupt : 00000000000001F0
[1A8h 0424   8]            Context Interrupt : 00000000000001F1
[1B0h 0432   8]            Context Interrupt : 00000000000001F2
[1B8h 0440   8]            Context Interrupt : 00000000000001F3
[1C0h 0448   8]            Context Interrupt : 0000000000000181
[1C8h 0456   8]            Context Interrupt : 0000000000000182
[1D0h 0464   8]            Context Interrupt : 0000000000000183
[1D8h 0472   8]            Context Interrupt : 0000000000000184
[1E0h 0480   8]            Context Interrupt : 0000000000000185
[1E8h 0488   8]            Context Interrupt : 0000000000000186
[1F0h 0496   8]            Context Interrupt : 0000000000000187
[1F8h 0504   8]            Context Interrupt : 0000000000000188
[200h 0512   8]                PMU Interrupt : 000000000000019D

[208h 0520   4]                   Input base : 00001000
[20Ch 0524   4]                     ID Count : 00000000
[210h 0528   4]                  Output Base : 00000000
[214h 0532   4]             Output Reference : 00000000
[218h 0536   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[21Ch 0540   4]                   Input base : 00001020
[220h 0544   4]                     ID Count : 00000000
[224h 0548   4]                  Output Base : 00000000
[228h 0552   4]             Output Reference : 00000000
[22Ch 0556   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[230h 0560   4]                   Input base : 00001040
[234h 0564   4]                     ID Count : 00000000
[238h 0568   4]                  Output Base : 00000000
[23Ch 0572   4]             Output Reference : 00000000
[240h 0576   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[244h 0580   4]                   Input base : 00001060
[248h 0584   4]                     ID Count : 00000000
[24Ch 0588   4]                  Output Base : 00000000
[250h 0592   4]             Output Reference : 00000000
[254h 0596   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[258h 0600   4]                   Input base : 00001080
[25Ch 0604   4]                     ID Count : 00000000
[260h 0608   4]                  Output Base : 00000000
[264h 0612   4]             Output Reference : 00000000
[268h 0616   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[26Ch 0620   4]                   Input base : 00001800
[270h 0624   4]                     ID Count : 00000002
[274h 0628   4]                  Output Base : 00000000
[278h 0632   4]             Output Reference : 00000000
[27Ch 0636   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[280h 0640   4]                   Input base : 00001820
[284h 0644   4]                     ID Count : 00000005
[288h 0648   4]                  Output Base : 00000000
[28Ch 0652   4]             Output Reference : 00000000
[290h 0656   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[294h 0660   4]                   Input base : 00001844
[298h 0664   4]                     ID Count : 00000003
[29Ch 0668   4]                  Output Base : 00000000
[2A0h 0672   4]             Output Reference : 00000000
[2A4h 0676   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[2A8h 0680   4]                   Input base : 00001860
[2ACh 0684   4]                     ID Count : 00000067
[2B0h 0688   4]                  Output Base : 00000000
[2B4h 0692   4]             Output Reference : 00000000
[2B8h 0696   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[2BCh 0700   4]                   Input base : 000018E0
[2C0h 0704   4]                     ID Count : 00000002
[2C4h 0708   4]                  Output Base : 00000000
[2C8h 0712   4]             Output Reference : 00000000
[2CCh 0716   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[2D0h 0720   4]                   Input base : 000018E4
[2D4h 0724   4]                     ID Count : 00000003
[2D8h 0728   4]                  Output Base : 00000000
[2DCh 0732   4]             Output Reference : 00000000
[2E0h 0736   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[2E4h 0740   4]                   Input base : 00001900
[2E8h 0744   4]                     ID Count : 00000003
[2ECh 0748   4]                  Output Base : 00000000
[2F0h 0752   4]             Output Reference : 00000000
[2F4h 0756   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[2F8h 0760   4]                   Input base : 00001920
[2FCh 0764   4]                     ID Count : 00000017
[300h 0768   4]                  Output Base : 00000000
[304h 0772   4]             Output Reference : 00000000
[308h 0776   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[30Ch 0780   4]                   Input base : 00001940
[310h 0784   4]                     ID Count : 0000000F
[314h 0788   4]                  Output Base : 00000000
[318h 0792   4]             Output Reference : 00000000
[31Ch 0796   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[320h 0800   4]                   Input base : 00001964
[324h 0804   4]                     ID Count : 00000003
[328h 0808   4]                  Output Base : 00000000
[32Ch 0812   4]             Output Reference : 00000000
[330h 0816   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[334h 0820   1]                         Type : 03
[335h 0821   2]                       Length : 02B8
[337h 0823   1]                     Revision : 00
[338h 0824   4]                     Reserved : 00000000
[33Ch 0828   4]                Mapping Count : 00000015
[340h 0832   4]               Mapping Offset : 00000114

[344h 0836   8]                 Base Address : 000000000CD00000
[34Ch 0844   8]                         Span : 0000000000040000
[354h 0852   4]                        Model : 00000001
[358h 0856   4]        Flags (decoded below) : 00000001
                               DVM Supported : 1
                               Coherent Walk : 0
[35Ch 0860   4]      Global Interrupt Offset : 0000003C
[360h 0864   4]      Context Interrupt Count : 00000018
[364h 0868   4]     Context Interrupt Offset : 0000004C
[368h 0872   4]          PMU Interrupt Count : 00000001
[36Ch 0876   4]         PMU Interrupt Offset : 0000010C

[370h 0880   4]                      NSgIrpt : 00000107
[374h 0884   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[378h 0888   4]                   NSgCfgIrpt : 00000105
[37Ch 0892   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[380h 0896   8]            Context Interrupt : 0000000000000127
[388h 0904   8]            Context Interrupt : 000000000000012A
[390h 0912   8]            Context Interrupt : 000000000000012B
[398h 0920   8]            Context Interrupt : 000000000000012C
[3A0h 0928   8]            Context Interrupt : 0000000000000114
[3A8h 0936   8]            Context Interrupt : 0000000000000115
[3B0h 0944   8]            Context Interrupt : 0000000000000117
[3B8h 0952   8]            Context Interrupt : 0000000000000118
[3C0h 0960   8]            Context Interrupt : 0000000000000119
[3C8h 0968   8]            Context Interrupt : 000000000000011A
[3D0h 0976   8]            Context Interrupt : 000000000000011B
[3D8h 0984   8]            Context Interrupt : 000000000000011C
[3E0h 0992   8]            Context Interrupt : 000000000000011D
[3E8h 1000   8]            Context Interrupt : 000000000000011E
[3F0h 1008   8]            Context Interrupt : 000000000000011F
[3F8h 1016   8]            Context Interrupt : 0000000000000120
[400h 1024   8]            Context Interrupt : 0000000000000124
[408h 1032   8]            Context Interrupt : 0000000000000125
[410h 1040   8]            Context Interrupt : 0000000000000126
[418h 1048   8]            Context Interrupt : 0000000000000130
[420h 1056   8]            Context Interrupt : 0000000000000131
[428h 1064   8]            Context Interrupt : 0000000000000132
[430h 1072   8]            Context Interrupt : 0000000000000133
[438h 1080   8]            Context Interrupt : 0000000000000134
[440h 1088   8]                PMU Interrupt : 0000000000000128

[448h 1096   4]                   Input base : 00000000
[44Ch 1100   4]                     ID Count : 00000001
[450h 1104   4]                  Output Base : 00000000
[454h 1108   4]             Output Reference : 00000000
[458h 1112   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[45Ch 1116   4]                   Input base : 00000400
[460h 1120   4]                     ID Count : 00000001
[464h 1124   4]                  Output Base : 00000000
[468h 1128   4]             Output Reference : 00000000
[46Ch 1132   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[470h 1136   4]                   Input base : 00000407
[474h 1140   4]                     ID Count : 0000000A
[478h 1144   4]                  Output Base : 00000000
[47Ch 1148   4]             Output Reference : 00000000
[480h 1152   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[484h 1156   4]                   Input base : 00000421
[488h 1160   4]                     ID Count : 00000000
[48Ch 1164   4]                  Output Base : 00000000
[490h 1168   4]             Output Reference : 00000000
[494h 1172   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[498h 1176   4]                   Input base : 00000428
[49Ch 1180   4]                     ID Count : 00000001
[4A0h 1184   4]                  Output Base : 00000000
[4A4h 1188   4]             Output Reference : 00000000
[4A8h 1192   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4ACh 1196   4]                   Input base : 0000042B
[4B0h 1200   4]                     ID Count : 00000002
[4B4h 1204   4]                  Output Base : 00000000
[4B8h 1208   4]             Output Reference : 00000000
[4BCh 1212   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4C0h 1216   4]                   Input base : 00000431
[4C4h 1220   4]                     ID Count : 00000000
[4C8h 1224   4]                  Output Base : 00000000
[4CCh 1228   4]             Output Reference : 00000000
[4D0h 1232   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4D4h 1236   4]                   Input base : 00000500
[4D8h 1240   4]                     ID Count : 00000000
[4DCh 1244   4]                  Output Base : 00000000
[4E0h 1248   4]             Output Reference : 00000000
[4E4h 1252   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4E8h 1256   4]                   Input base : 00000502
[4ECh 1260   4]                     ID Count : 00000003
[4F0h 1264   4]                  Output Base : 00000000
[4F4h 1268   4]             Output Reference : 00000000
[4F8h 1272   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[4FCh 1276   4]                   Input base : 00000507
[500h 1280   4]                     ID Count : 00000009
[504h 1284   4]                  Output Base : 00000000
[508h 1288   4]             Output Reference : 00000000
[50Ch 1292   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[510h 1296   4]                   Input base : 00000523
[514h 1300   4]                     ID Count : 00000000
[518h 1304   4]                  Output Base : 00000000
[51Ch 1308   4]             Output Reference : 00000000
[520h 1312   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[524h 1316   4]                   Input base : 00000525
[528h 1320   4]                     ID Count : 00000001
[52Ch 1324   4]                  Output Base : 00000000
[530h 1328   4]             Output Reference : 00000000
[534h 1332   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[538h 1336   4]                   Input base : 00000528
[53Ch 1340   4]                     ID Count : 00000001
[540h 1344   4]                  Output Base : 00000000
[544h 1348   4]             Output Reference : 00000000
[548h 1352   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[54Ch 1356   4]                   Input base : 0000052B
[550h 1360   4]                     ID Count : 00000002
[554h 1364   4]                  Output Base : 00000000
[558h 1368   4]             Output Reference : 00000000
[55Ch 1372   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[560h 1376   4]                   Input base : 00000540
[564h 1380   4]                     ID Count : 00000000
[568h 1384   4]                  Output Base : 00000000
[56Ch 1388   4]             Output Reference : 00000000
[570h 1392   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[574h 1396   4]                   Input base : 00000580
[578h 1400   4]                     ID Count : 00000000
[57Ch 1404   4]                  Output Base : 00000000
[580h 1408   4]             Output Reference : 00000000
[584h 1412   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[588h 1416   4]                   Input base : 00000586
[58Ch 1420   4]                     ID Count : 00000000
[590h 1424   4]                  Output Base : 00000000
[594h 1428   4]             Output Reference : 00000000
[598h 1432   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[59Ch 1436   4]                   Input base : 00000800
[5A0h 1440   4]                     ID Count : 00000001
[5A4h 1444   4]                  Output Base : 00000000
[5A8h 1448   4]             Output Reference : 00000000
[5ACh 1452   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5B0h 1456   4]                   Input base : 00000A00
[5B4h 1460   4]                     ID Count : 00000001
[5B8h 1464   4]                  Output Base : 00000000
[5BCh 1468   4]             Output Reference : 00000000
[5C0h 1472   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5C4h 1476   4]                   Input base : 00000C00
[5C8h 1480   4]                     ID Count : 00000003
[5CCh 1484   4]                  Output Base : 00000000
[5D0h 1488   4]             Output Reference : 00000000
[5D4h 1492   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5D8h 1496   4]                   Input base : 00000E00
[5DCh 1500   4]                     ID Count : 00000001
[5E0h 1504   4]                  Output Base : 00000000
[5E4h 1508   4]             Output Reference : 00000000
[5E8h 1512   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[5ECh 1516   1]                         Type : 03
[5EDh 1517   2]                       Length : 00A0
[5EFh 1519   1]                     Revision : 00
[5F0h 1520   4]                     Reserved : 00000000
[5F4h 1524   4]                Mapping Count : 00000001
[5F8h 1528   4]               Mapping Offset : 0000008C

[5FCh 1532   8]                 Base Address : 0000000005040000
[604h 1540   8]                         Span : 000000000000E000
[60Ch 1548   4]                        Model : 00000001
[610h 1552   4]        Flags (decoded below) : 00000001
                               DVM Supported : 1
                               Coherent Walk : 0
[614h 1556   4]      Global Interrupt Offset : 0000003C
[618h 1560   4]      Context Interrupt Count : 00000007
[61Ch 1564   4]     Context Interrupt Offset : 0000004C
[620h 1568   4]          PMU Interrupt Count : 00000001
[624h 1572   4]         PMU Interrupt Offset : 00000084

[628h 1576   4]                      NSgIrpt : 00000107
[62Ch 1580   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[630h 1584   4]                   NSgCfgIrpt : 00000105
[634h 1588   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[638h 1592   8]            Context Interrupt : 0000000000000169
[640h 1600   8]            Context Interrupt : 000000000000016A
[648h 1608   8]            Context Interrupt : 000000000000016B
[650h 1616   8]            Context Interrupt : 000000000000016C
[658h 1624   8]            Context Interrupt : 000000000000016E
[660h 1632   8]            Context Interrupt : 0000000000000094
[668h 1640   8]            Context Interrupt : 0000000000000095
[670h 1648   8]                PMU Interrupt : 000000000000016E

[678h 1656   4]                   Input base : 00000000
[67Ch 1660   4]                     ID Count : 00000003
[680h 1664   4]                  Output Base : 00000000
[684h 1668   4]             Output Reference : 00000000
[688h 1672   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[68Ch 1676   1]                         Type : 03
[68Dh 1677   2]                       Length : 00F0
[68Fh 1679   1]                     Revision : 00
[690h 1680   4]                     Reserved : 00000000
[694h 1684   4]                Mapping Count : 00000001
[698h 1688   4]               Mapping Offset : 000000DC

[69Ch 1692   8]                 Base Address : 0000000005100000
[6A4h 1700   8]                         Span : 0000000000040000
[6ACh 1708   4]                        Model : 00000001
[6B0h 1712   4]        Flags (decoded below) : 00000001
                               DVM Supported : 1
                               Coherent Walk : 0
[6B4h 1716   4]      Global Interrupt Offset : 0000003C
[6B8h 1720   4]      Context Interrupt Count : 00000011
[6BCh 1724   4]     Context Interrupt Offset : 0000004C
[6C0h 1728   4]          PMU Interrupt Count : 00000001
[6C4h 1732   4]         PMU Interrupt Offset : 000000D4

[6C8h 1736   4]                      NSgIrpt : 00000107
[6CCh 1740   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[6D0h 1744   4]                   NSgCfgIrpt : 00000105
[6D4h 1748   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[6D8h 1752   8]            Context Interrupt : 0000000000000102
[6E0h 1760   8]            Context Interrupt : 00000000000001A9
[6E8h 1768   8]            Context Interrupt : 00000000000001AA
[6F0h 1776   8]            Context Interrupt : 00000000000001AB
[6F8h 1784   8]            Context Interrupt : 00000000000001AC
[700h 1792   8]            Context Interrupt : 00000000000001AD
[708h 1800   8]            Context Interrupt : 00000000000001AE
[710h 1808   8]            Context Interrupt : 00000000000001AF
[718h 1816   8]            Context Interrupt : 00000000000001B0
[720h 1824   8]            Context Interrupt : 00000000000001B1
[728h 1832   8]            Context Interrupt : 00000000000001B2
[730h 1840   8]            Context Interrupt : 00000000000001B3
[738h 1848   8]            Context Interrupt : 00000000000001B4
[740h 1856   8]            Context Interrupt : 00000000000000A9
[748h 1864   8]            Context Interrupt : 0000000000000100
[750h 1872   8]            Context Interrupt : 0000000000000101
[758h 1880   8]            Context Interrupt : 0000000000000156
[760h 1888   8]                PMU Interrupt : 00000000000000A0

[768h 1896   4]                   Input base : 00000000
[76Ch 1900   4]                     ID Count : 0000000C
[770h 1904   4]                  Output Base : 00000000
[774h 1908   4]             Output Reference : 00000000
[778h 1912   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[77Ch 1916   1]                         Type : 03
[77Dh 1917   2]                       Length : 00D8
[77Fh 1919   1]                     Revision : 00
[780h 1920   4]                     Reserved : 00000000
[784h 1924   4]                Mapping Count : 00000005
[788h 1928   4]               Mapping Offset : 00000074

[78Ch 1932   8]                 Base Address : 0000000005140000
[794h 1940   8]                         Span : 000000000000C000
[79Ch 1948   4]                        Model : 00000001
[7A0h 1952   4]        Flags (decoded below) : 00000001
                               DVM Supported : 1
                               Coherent Walk : 0
[7A4h 1956   4]      Global Interrupt Offset : 0000003C
[7A8h 1960   4]      Context Interrupt Count : 00000004
[7ACh 1964   4]     Context Interrupt Offset : 0000004C
[7B0h 1968   4]          PMU Interrupt Count : 00000001
[7B4h 1972   4]         PMU Interrupt Offset : 0000006C

[7B8h 1976   4]                      NSgIrpt : 00000107
[7BCh 1980   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[7C0h 1984   4]                   NSgCfgIrpt : 00000105
[7C4h 1988   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[7C8h 1992   8]            Context Interrupt : 000000000000012F
[7D0h 2000   8]            Context Interrupt : 000000000000012D
[7D8h 2008   8]            Context Interrupt : 0000000000000123
[7E0h 2016   8]            Context Interrupt : 000000000000010B
[7E8h 2024   8]                PMU Interrupt : 000000000000010A

[7F0h 2032   4]                   Input base : 00000000
[7F4h 2036   4]                     ID Count : 00000008
[7F8h 2040   4]                  Output Base : 00000000
[7FCh 2044   4]             Output Reference : 00000000
[800h 2048   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[804h 2052   4]                   Input base : 00000010
[808h 2056   4]                     ID Count : 00000018
[80Ch 2060   4]                  Output Base : 00000000
[810h 2064   4]             Output Reference : 00000000
[814h 2068   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[818h 2072   4]                   Input base : 0000002A
[81Ch 2076   4]                     ID Count : 00000000
[820h 2080   4]                  Output Base : 00000000
[824h 2084   4]             Output Reference : 00000000
[828h 2088   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[82Ch 2092   4]                   Input base : 0000002E
[830h 2096   4]                     ID Count : 00000003
[834h 2100   4]                  Output Base : 00000000
[838h 2104   4]             Output Reference : 00000000
[83Ch 2108   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[840h 2112   4]                   Input base : 00000036
[844h 2116   4]                     ID Count : 00000002
[848h 2120   4]                  Output Base : 00000000
[84Ch 2124   4]             Output Reference : 00000000
[850h 2128   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[854h 2132   1]                         Type : 01
[855h 2133   2]                       Length : 0259
[857h 2135   1]                     Revision : 00
[858h 2136   4]                     Reserved : 00000000
[85Ch 2140   4]                Mapping Count : 0000001B
[860h 2144   4]               Mapping Offset : 0000003D

[864h 2148   4]                   Node Flags : 00000000
[868h 2152   8]            Memory Properties : [IORT Memory Access Properties]
[868h 2152   4]              Cache Coherency : 00000000
[86Ch 2156   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[86Dh 2157   2]                     Reserved : 0000
[86Fh 2159   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[870h 2160   1]            Memory Size Limit : 24
[871h 2161  11]                  Device Name : "\_SB_.GPU0"
[87Ch 2172  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[891h 2193   4]                   Input base : 00000000
[895h 2197   4]                     ID Count : 00000001
[899h 2201   4]                  Output Base : 00000400
[89Dh 2205   4]             Output Reference : 00000334
[8A1h 2209   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8A5h 2213   4]                   Input base : 00000002
[8A9h 2217   4]                     ID Count : 0000000A
[8ADh 2221   4]                  Output Base : 00000407
[8B1h 2225   4]             Output Reference : 00000334
[8B5h 2229   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8B9h 2233   4]                   Input base : 0000000D
[8BDh 2237   4]                     ID Count : 00000000
[8C1h 2241   4]                  Output Base : 00000421
[8C5h 2245   4]             Output Reference : 00000334
[8C9h 2249   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8CDh 2253   4]                   Input base : 0000000E
[8D1h 2257   4]                     ID Count : 00000001
[8D5h 2261   4]                  Output Base : 00000428
[8D9h 2265   4]             Output Reference : 00000334
[8DDh 2269   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8E1h 2273   4]                   Input base : 00000010
[8E5h 2277   4]                     ID Count : 00000002
[8E9h 2281   4]                  Output Base : 0000042B
[8EDh 2285   4]             Output Reference : 00000334
[8F1h 2289   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[8F5h 2293   4]                   Input base : 00000013
[8F9h 2297   4]                     ID Count : 00000000
[8FDh 2301   4]                  Output Base : 00000431
[901h 2305   4]             Output Reference : 00000334
[905h 2309   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[909h 2313   4]                   Input base : 00000100
[90Dh 2317   4]                     ID Count : 00000000
[911h 2321   4]                  Output Base : 00000500
[915h 2325   4]             Output Reference : 00000334
[919h 2329   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[91Dh 2333   4]                   Input base : 00000101
[921h 2337   4]                     ID Count : 00000000
[925h 2341   4]                  Output Base : 00000502
[929h 2345   4]             Output Reference : 00000334
[92Dh 2349   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[931h 2353   4]                   Input base : 00000102
[935h 2357   4]                     ID Count : 00000002
[939h 2361   4]                  Output Base : 00000509
[93Dh 2365   4]             Output Reference : 00000334
[941h 2369   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[945h 2373   4]                   Input base : 00000105
[949h 2377   4]                     ID Count : 00000000
[94Dh 2381   4]                  Output Base : 0000050E
[951h 2385   4]             Output Reference : 00000334
[955h 2389   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[959h 2393   4]                   Input base : 00000106
[95Dh 2397   4]                     ID Count : 00000000
[961h 2401   4]                  Output Base : 00000526
[965h 2405   4]             Output Reference : 00000334
[969h 2409   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[96Dh 2413   4]                   Input base : 00000107
[971h 2417   4]                     ID Count : 00000000
[975h 2421   4]                  Output Base : 00000529
[979h 2425   4]             Output Reference : 00000334
[97Dh 2429   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[981h 2433   4]                   Input base : 00000108
[985h 2437   4]                     ID Count : 00000000
[989h 2441   4]                  Output Base : 0000052B
[98Dh 2445   4]             Output Reference : 00000334
[991h 2449   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[995h 2453   4]                   Input base : 00000200
[999h 2457   4]                     ID Count : 00000001
[99Dh 2461   4]                  Output Base : 00000504
[9A1h 2465   4]             Output Reference : 00000334
[9A5h 2469   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9A9h 2473   4]                   Input base : 00000202
[9ADh 2477   4]                     ID Count : 00000001
[9B1h 2481   4]                  Output Base : 00000507
[9B5h 2485   4]             Output Reference : 00000334
[9B9h 2489   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9BDh 2493   4]                   Input base : 00000204
[9C1h 2497   4]                     ID Count : 00000001
[9C5h 2501   4]                  Output Base : 0000050C
[9C9h 2505   4]             Output Reference : 00000334
[9CDh 2509   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9D1h 2513   4]                   Input base : 00000206
[9D5h 2517   4]                     ID Count : 00000001
[9D9h 2521   4]                  Output Base : 0000050F
[9DDh 2525   4]             Output Reference : 00000334
[9E1h 2529   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9E5h 2533   4]                   Input base : 00000208
[9E9h 2537   4]                     ID Count : 00000000
[9EDh 2541   4]                  Output Base : 00000525
[9F1h 2545   4]             Output Reference : 00000334
[9F5h 2549   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[9F9h 2553   4]                   Input base : 00000209
[9FDh 2557   4]                     ID Count : 00000000
[A01h 2561   4]                  Output Base : 00000528
[A05h 2565   4]             Output Reference : 00000334
[A09h 2569   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A0Dh 2573   4]                   Input base : 0000020A
[A11h 2577   4]                     ID Count : 00000000
[A15h 2581   4]                  Output Base : 0000052D
[A19h 2585   4]             Output Reference : 00000334
[A1Dh 2589   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A21h 2593   4]                   Input base : 0000020B
[A25h 2597   4]                     ID Count : 00000000
[A29h 2601   4]                  Output Base : 00000540
[A2Dh 2605   4]             Output Reference : 00000334
[A31h 2609   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A35h 2613   4]                   Input base : 00000300
[A39h 2617   4]                     ID Count : 00000000
[A3Dh 2621   4]                  Output Base : 00000580
[A41h 2625   4]             Output Reference : 00000334
[A45h 2629   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A49h 2633   4]                   Input base : 00000301
[A4Dh 2637   4]                     ID Count : 00000000
[A51h 2641   4]                  Output Base : 00000586
[A55h 2645   4]             Output Reference : 00000334
[A59h 2649   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A5Dh 2653   4]                   Input base : 01000000
[A61h 2657   4]                     ID Count : 00000000
[A65h 2661   4]                  Output Base : 00000E00
[A69h 2665   4]             Output Reference : 00000334
[A6Dh 2669   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A71h 2673   4]                   Input base : 01000001
[A75h 2677   4]                     ID Count : 00000000
[A79h 2681   4]                  Output Base : 00000000
[A7Dh 2685   4]             Output Reference : 00000334
[A81h 2689   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A85h 2693   4]                   Input base : 02000000
[A89h 2697   4]                     ID Count : 00000001
[A8Dh 2701   4]                  Output Base : 00000000
[A91h 2705   4]             Output Reference : 000005EC
[A95h 2709   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[A99h 2713   4]                   Input base : 02000200
[A9Dh 2717   4]                     ID Count : 00000000
[AA1h 2721   4]                  Output Base : 00000002
[AA5h 2725   4]             Output Reference : 000005EC
[AA9h 2729   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AADh 2733   1]                         Type : 01
[AAEh 2734   2]                       Length : 0051
[AB0h 2736   1]                     Revision : 00
[AB1h 2737   4]                     Reserved : 00000000
[AB5h 2741   4]                Mapping Count : 00000001
[AB9h 2745   4]               Mapping Offset : 0000003D

[ABDh 2749   4]                   Node Flags : 00000000
[AC1h 2753   8]            Memory Properties : [IORT Memory Access Properties]
[AC1h 2753   4]              Cache Coherency : 00000000
[AC5h 2757   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[AC6h 2758   2]                     Reserved : 0000
[AC8h 2760   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[AC9h 2761   1]            Memory Size Limit : 24
[ACAh 2762  11]                  Device Name : "\_SB_.JPGE"
[AD5h 2773  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[AEAh 2794   4]                   Input base : 00000000
[AEEh 2798   4]                     ID Count : 00000001
[AF2h 2802   4]                  Output Base : 00000800
[AF6h 2806   4]             Output Reference : 00000334
[AFAh 2810   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AFEh 2814   1]                         Type : 01
[AFFh 2815   2]                       Length : 0065
[B01h 2817   1]                     Revision : 00
[B02h 2818   4]                     Reserved : 00000000
[B06h 2822   4]                Mapping Count : 00000002
[B0Ah 2826   4]               Mapping Offset : 0000003D

[B0Eh 2830   4]                   Node Flags : 00000000
[B12h 2834   8]            Memory Properties : [IORT Memory Access Properties]
[B12h 2834   4]              Cache Coherency : 00000000
[B16h 2838   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[B17h 2839   2]                     Reserved : 0000
[B19h 2841   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[B1Ah 2842   1]            Memory Size Limit : 24
[B1Bh 2843  11]                  Device Name : "\_SB_.VFE0"
[B26h 2854  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[B3Bh 2875   4]                   Input base : 00000000
[B3Fh 2879   4]                     ID Count : 00000003
[B43h 2883   4]                  Output Base : 00000C00
[B47h 2887   4]             Output Reference : 00000334
[B4Bh 2891   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B4Fh 2895   4]                   Input base : 00000004
[B53h 2899   4]                     ID Count : 00000001
[B57h 2903   4]                  Output Base : 00000A00
[B5Bh 2907   4]             Output Reference : 00000334
[B5Fh 2911   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[B63h 2915   1]                         Type : 01
[B64h 2916   2]                       Length : 0065
[B66h 2918   1]                     Revision : 00
[B67h 2919   4]                     Reserved : 00000000
[B6Bh 2923   4]                Mapping Count : 00000002
[B6Fh 2927   4]               Mapping Offset : 0000003D

[B73h 2931   4]                   Node Flags : 00000000
[B77h 2935   8]            Memory Properties : [IORT Memory Access Properties]
[B77h 2935   4]              Cache Coherency : 00000000
[B7Bh 2939   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[B7Ch 2940   2]                     Reserved : 0000
[B7Eh 2942   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[B7Fh 2943   1]            Memory Size Limit : 24
[B80h 2944  11]                  Device Name : "\_SB_.SCSS"
[B8Bh 2955  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[BA0h 2976   4]                   Input base : 00000600
[BA4h 2980   4]                     ID Count : 00000001
[BA8h 2984   4]                  Output Base : 00001800
[BACh 2988   4]             Output Reference : 00000114
[BB0h 2992   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BB4h 2996   4]                   Input base : 00000602
[BB8h 3000   4]                     ID Count : 00000005
[BBCh 3004   4]                  Output Base : 00001820
[BC0h 3008   4]             Output Reference : 00000114
[BC4h 3012   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[BC8h 3016   1]                         Type : 01
[BC9h 3017   2]                       Length : 0051
[BCBh 3019   1]                     Revision : 00
[BCCh 3020   4]                     Reserved : 00000000
[BD0h 3024   4]                Mapping Count : 00000001
[BD4h 3028   4]               Mapping Offset : 0000003D

[BD8h 3032   4]                   Node Flags : 00000000
[BDCh 3036   8]            Memory Properties : [IORT Memory Access Properties]
[BDCh 3036   4]              Cache Coherency : 00000000
[BE0h 3040   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[BE1h 3041   2]                     Reserved : 0000
[BE3h 3043   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[BE4h 3044   1]            Memory Size Limit : 24
[BE5h 3045  11]                  Device Name : "\_SB_.SDC2"
[BF0h 3056  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[C05h 3077   4]                   Input base : 00000000
[C09h 3081   4]                     ID Count : 0000001E
[C0Dh 3085   4]                  Output Base : 00001880
[C11h 3089   4]             Output Reference : 00000114
[C15h 3093   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C19h 3097   1]                         Type : 01
[C1Ah 3098   2]                       Length : 0051
[C1Ch 3100   1]                     Revision : 00
[C1Dh 3101   4]                     Reserved : 00000000
[C21h 3105   4]                Mapping Count : 00000001
[C25h 3109   4]               Mapping Offset : 0000003D

[C29h 3113   4]                   Node Flags : 00000000
[C2Dh 3117   8]            Memory Properties : [IORT Memory Access Properties]
[C2Dh 3117   4]              Cache Coherency : 00000000
[C31h 3121   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C32h 3122   2]                     Reserved : 0000
[C34h 3124   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[C35h 3125   1]            Memory Size Limit : 24
[C36h 3126  11]                  Device Name : "\_SB_.UAR3"
[C41h 3137  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[C56h 3158   4]                   Input base : 00000000
[C5Ah 3162   4]                     ID Count : 00000016
[C5Eh 3166   4]                  Output Base : 00001920
[C62h 3170   4]             Output Reference : 00000114
[C66h 3174   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[C6Ah 3178   1]                         Type : 01
[C6Bh 3179   2]                       Length : 0051
[C6Dh 3181   1]                     Revision : 00
[C6Eh 3182   4]                     Reserved : 00000000
[C72h 3186   4]                Mapping Count : 00000001
[C76h 3190   4]               Mapping Offset : 0000003D

[C7Ah 3194   4]                   Node Flags : 00000000
[C7Eh 3198   8]            Memory Properties : [IORT Memory Access Properties]
[C7Eh 3198   4]              Cache Coherency : 00000000
[C82h 3202   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C83h 3203   2]                     Reserved : 0000
[C85h 3205   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[C86h 3206   1]            Memory Size Limit : 24
[C87h 3207  11]                  Device Name : "\_SB_.UAR5"
[C92h 3218  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[CA7h 3239   4]                   Input base : 00000000
[CABh 3243   4]                     ID Count : 00000016
[CAFh 3247   4]                  Output Base : 00001460
[CB3h 3251   4]             Output Reference : 00000030
[CB7h 3255   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[CBBh 3259   1]                         Type : 01
[CBCh 3260   2]                       Length : 0051
[CBEh 3262   1]                     Revision : 00
[CBFh 3263   4]                     Reserved : 00000000
[CC3h 3267   4]                Mapping Count : 00000001
[CC7h 3271   4]               Mapping Offset : 0000003D

[CCBh 3275   4]                   Node Flags : 00000000
[CCFh 3279   8]            Memory Properties : [IORT Memory Access Properties]
[CCFh 3279   4]              Cache Coherency : 00000000
[CD3h 3283   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[CD4h 3284   2]                     Reserved : 0000
[CD6h 3286   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[CD7h 3287   1]            Memory Size Limit : 24
[CD8h 3288  11]                  Device Name : "\_SB_.UFS0"
[CE3h 3299  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[CF8h 3320   4]                   Input base : 00000000
[CFCh 3324   4]                     ID Count : 00000000
[D00h 3328   4]                  Output Base : 00001440
[D04h 3332   4]             Output Reference : 00000030
[D08h 3336   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D0Ch 3340   1]                         Type : 01
[D0Dh 3341   2]                       Length : 0051
[D0Fh 3343   1]                     Revision : 00
[D10h 3344   4]                     Reserved : 00000000
[D14h 3348   4]                Mapping Count : 00000001
[D18h 3352   4]               Mapping Offset : 0000003D

[D1Ch 3356   4]                   Node Flags : 00000000
[D20h 3360   8]            Memory Properties : [IORT Memory Access Properties]
[D20h 3360   4]              Cache Coherency : 00000000
[D24h 3364   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D25h 3365   2]                     Reserved : 0000
[D27h 3367   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[D28h 3368   1]            Memory Size Limit : 24
[D29h 3369  11]                  Device Name : "\_SB_.PCI0"
[D34h 3380  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[D49h 3401   4]                   Input base : 00000000
[D4Dh 3405   4]                     ID Count : 0000000F
[D51h 3409   4]                  Output Base : 00001480
[D55h 3413   4]             Output Reference : 00000030
[D59h 3417   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D5Dh 3421   1]                         Type : 01
[D5Eh 3422   2]                       Length : 0051
[D60h 3424   1]                     Revision : 00
[D61h 3425   4]                     Reserved : 00000000
[D65h 3429   4]                Mapping Count : 00000001
[D69h 3433   4]               Mapping Offset : 0000003D

[D6Dh 3437   4]                   Node Flags : 00000000
[D71h 3441   8]            Memory Properties : [IORT Memory Access Properties]
[D71h 3441   4]              Cache Coherency : 00000000
[D75h 3445   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D76h 3446   2]                     Reserved : 0000
[D78h 3448   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[D79h 3449   1]            Memory Size Limit : 24
[D7Ah 3450  11]                  Device Name : "\_SB_.USB0"
[D85h 3461  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[D9Ah 3482   4]                   Input base : 00000000
[D9Eh 3486   4]                     ID Count : 00000000
[DA2h 3490   4]                  Output Base : 00001400
[DA6h 3494   4]             Output Reference : 00000030
[DAAh 3498   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DAEh 3502   1]                         Type : 01
[DAFh 3503   2]                       Length : 0065
[DB1h 3505   1]                     Revision : 00
[DB2h 3506   4]                     Reserved : 00000000
[DB6h 3510   4]                Mapping Count : 00000002
[DBAh 3514   4]               Mapping Offset : 0000003D

[DBEh 3518   4]                   Node Flags : 00000000
[DC2h 3522   8]            Memory Properties : [IORT Memory Access Properties]
[DC2h 3522   4]              Cache Coherency : 00000000
[DC6h 3526   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[DC7h 3527   2]                     Reserved : 0000
[DC9h 3529   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[DCAh 3530   1]            Memory Size Limit : 24
[DCBh 3531  10]                  Device Name : "\_SB_.IPA"
[DD5h 3541  22]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 

[DEBh 3563   4]                   Input base : 00000000
[DEFh 3567   4]                     ID Count : 00000002
[DF3h 3571   4]                  Output Base : 000018E0
[DF7h 3575   4]             Output Reference : 00000114
[DFBh 3579   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DFFh 3583   4]                   Input base : 00000500
[E03h 3587   4]                     ID Count : 00000003
[E07h 3591   4]                  Output Base : 000018E7
[E0Bh 3595   4]             Output Reference : 00000114
[E0Fh 3599   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E13h 3603   1]                         Type : 01
[E14h 3604   2]                       Length : 00A1
[E16h 3606   1]                     Revision : 00
[E17h 3607   4]                     Reserved : 00000000
[E1Bh 3611   4]                Mapping Count : 00000005
[E1Fh 3615   4]               Mapping Offset : 0000003D

[E23h 3619   4]                   Node Flags : 00000000
[E27h 3623   8]            Memory Properties : [IORT Memory Access Properties]
[E27h 3623   4]              Cache Coherency : 00000000
[E2Bh 3627   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E2Ch 3628   2]                     Reserved : 0000
[E2Eh 3630   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[E2Fh 3631   1]            Memory Size Limit : 24
[E30h 3632  11]                  Device Name : "\_SB_.ADCM"
[E3Bh 3643  21]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 

[E50h 3664   4]                   Input base : 00000000
[E54h 3668   4]                     ID Count : 00000000
[E58h 3672   4]                  Output Base : 00000001
[E5Ch 3676   4]             Output Reference : 0000068C
[E60h 3680   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E64h 3684   4]                   Input base : 00000001
[E68h 3688   4]                     ID Count : 00000008
[E6Ch 3692   4]                  Output Base : 00000004
[E70h 3696   4]             Output Reference : 0000068C
[E74h 3700   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E78h 3704   4]                   Input base : 00000200
[E7Ch 3708   4]                     ID Count : 00000000
[E80h 3712   4]                  Output Base : 00000002
[E84h 3716   4]             Output Reference : 0000068C
[E88h 3720   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[E8Ch 3724   4]                   Input base : 00000100
[E90h 3728   4]                     ID Count : 00000000
[E94h 3732   4]                  Output Base : 00000003
[E98h 3736   4]             Output Reference : 0000068C
[E9Ch 3740   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[EA0h 3744   4]                   Input base : 00000400
[EA4h 3748   4]                     ID Count : 00000000
[EA8h 3752   4]                  Output Base : 00000000
[EACh 3756   4]             Output Reference : 0000068C
[EB0h 3760   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

Raw Table Data: Length 3764 (0xEB4)

    0000: 49 4F 52 54 B4 0E 00 00 00 00 51 43 4F 4D 20 20  // IORT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 98 89 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 12 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 E4 00 00 00 00 00 00 04 00 00 00 94 00 00 00  // ................
    0040: 00 00 68 01 00 00 00 00 00 00 01 00 00 00 00 00  // ..h.............
    0050: 01 00 00 00 01 00 00 00 3C 00 00 00 08 00 00 00  // ........<.......
    0060: 4C 00 00 00 01 00 00 00 8C 00 00 00 07 01 00 00  // L...............
    0070: 00 00 00 00 05 01 00 00 00 00 00 00 8C 01 00 00  // ................
    0080: 00 00 00 00 8D 01 00 00 00 00 00 00 8E 01 00 00  // ................
    0090: 00 00 00 00 8F 01 00 00 00 00 00 00 90 01 00 00  // ................
    00A0: 00 00 00 00 91 01 00 00 00 00 00 00 92 01 00 00  // ................
    00B0: 00 00 00 00 CF 01 00 00 00 00 00 00 93 01 00 00  // ................
    00C0: 00 00 00 00 00 14 00 00 00 00 00 00 00 00 00 00  // ................
    00D0: 00 00 00 00 00 00 00 00 40 14 00 00 00 00 00 00  // ........@.......
    00E0: 00 00 00 00 00 00 00 00 00 00 00 00 60 14 00 00  // ............`...
    00F0: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0100: 80 14 00 00 0F 00 00 00 00 00 00 00 00 00 00 00  // ................
    0110: 00 00 00 00 03 20 02 00 00 00 00 00 0F 00 00 00  // ..... ..........
    0120: F4 00 00 00 00 00 6C 01 00 00 00 00 00 00 04 00  // ......l.........
    0130: 00 00 00 00 01 00 00 00 01 00 00 00 3C 00 00 00  // ............<...
    0140: 14 00 00 00 4C 00 00 00 01 00 00 00 EC 00 00 00  // ....L...........
    0150: 07 01 00 00 00 00 00 00 05 01 00 00 00 00 00 00  // ................
    0160: 95 01 00 00 00 00 00 00 96 01 00 00 00 00 00 00  // ................
    0170: 97 01 00 00 00 00 00 00 98 01 00 00 00 00 00 00  // ................
    0180: 99 01 00 00 00 00 00 00 9A 01 00 00 00 00 00 00  // ................
    0190: EE 01 00 00 00 00 00 00 EF 01 00 00 00 00 00 00  // ................
    01A0: F0 01 00 00 00 00 00 00 F1 01 00 00 00 00 00 00  // ................
    01B0: F2 01 00 00 00 00 00 00 F3 01 00 00 00 00 00 00  // ................
    01C0: 81 01 00 00 00 00 00 00 82 01 00 00 00 00 00 00  // ................
    01D0: 83 01 00 00 00 00 00 00 84 01 00 00 00 00 00 00  // ................
    01E0: 85 01 00 00 00 00 00 00 86 01 00 00 00 00 00 00  // ................
    01F0: 87 01 00 00 00 00 00 00 88 01 00 00 00 00 00 00  // ................
    0200: 9D 01 00 00 00 00 00 00 00 10 00 00 00 00 00 00  // ................
    0210: 00 00 00 00 00 00 00 00 00 00 00 00 20 10 00 00  // ............ ...
    0220: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0230: 40 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // @...............
    0240: 00 00 00 00 60 10 00 00 00 00 00 00 00 00 00 00  // ....`...........
    0250: 00 00 00 00 00 00 00 00 80 10 00 00 00 00 00 00  // ................
    0260: 00 00 00 00 00 00 00 00 00 00 00 00 00 18 00 00  // ................
    0270: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0280: 20 18 00 00 05 00 00 00 00 00 00 00 00 00 00 00  //  ...............
    0290: 00 00 00 00 44 18 00 00 03 00 00 00 00 00 00 00  // ....D...........
    02A0: 00 00 00 00 00 00 00 00 60 18 00 00 67 00 00 00  // ........`...g...
    02B0: 00 00 00 00 00 00 00 00 00 00 00 00 E0 18 00 00  // ................
    02C0: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    02D0: E4 18 00 00 03 00 00 00 00 00 00 00 00 00 00 00  // ................
    02E0: 00 00 00 00 00 19 00 00 03 00 00 00 00 00 00 00  // ................
    02F0: 00 00 00 00 00 00 00 00 20 19 00 00 17 00 00 00  // ........ .......
    0300: 00 00 00 00 00 00 00 00 00 00 00 00 40 19 00 00  // ............@...
    0310: 0F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0320: 64 19 00 00 03 00 00 00 00 00 00 00 00 00 00 00  // d...............
    0330: 00 00 00 00 03 B8 02 00 00 00 00 00 15 00 00 00  // ................
    0340: 14 01 00 00 00 00 D0 0C 00 00 00 00 00 00 04 00  // ................
    0350: 00 00 00 00 01 00 00 00 01 00 00 00 3C 00 00 00  // ............<...
    0360: 18 00 00 00 4C 00 00 00 01 00 00 00 0C 01 00 00  // ....L...........
    0370: 07 01 00 00 00 00 00 00 05 01 00 00 00 00 00 00  // ................
    0380: 27 01 00 00 00 00 00 00 2A 01 00 00 00 00 00 00  // '.......*.......
    0390: 2B 01 00 00 00 00 00 00 2C 01 00 00 00 00 00 00  // +.......,.......
    03A0: 14 01 00 00 00 00 00 00 15 01 00 00 00 00 00 00  // ................
    03B0: 17 01 00 00 00 00 00 00 18 01 00 00 00 00 00 00  // ................
    03C0: 19 01 00 00 00 00 00 00 1A 01 00 00 00 00 00 00  // ................
    03D0: 1B 01 00 00 00 00 00 00 1C 01 00 00 00 00 00 00  // ................
    03E0: 1D 01 00 00 00 00 00 00 1E 01 00 00 00 00 00 00  // ................
    03F0: 1F 01 00 00 00 00 00 00 20 01 00 00 00 00 00 00  // ........ .......
    0400: 24 01 00 00 00 00 00 00 25 01 00 00 00 00 00 00  // $.......%.......
    0410: 26 01 00 00 00 00 00 00 30 01 00 00 00 00 00 00  // &.......0.......
    0420: 31 01 00 00 00 00 00 00 32 01 00 00 00 00 00 00  // 1.......2.......
    0430: 33 01 00 00 00 00 00 00 34 01 00 00 00 00 00 00  // 3.......4.......
    0440: 28 01 00 00 00 00 00 00 00 00 00 00 01 00 00 00  // (...............
    0450: 00 00 00 00 00 00 00 00 00 00 00 00 00 04 00 00  // ................
    0460: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0470: 07 04 00 00 0A 00 00 00 00 00 00 00 00 00 00 00  // ................
    0480: 00 00 00 00 21 04 00 00 00 00 00 00 00 00 00 00  // ....!...........
    0490: 00 00 00 00 00 00 00 00 28 04 00 00 01 00 00 00  // ........(.......
    04A0: 00 00 00 00 00 00 00 00 00 00 00 00 2B 04 00 00  // ............+...
    04B0: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    04C0: 31 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // 1...............
    04D0: 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00  // ................
    04E0: 00 00 00 00 00 00 00 00 02 05 00 00 03 00 00 00  // ................
    04F0: 00 00 00 00 00 00 00 00 00 00 00 00 07 05 00 00  // ................
    0500: 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0510: 23 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // #...............
    0520: 00 00 00 00 25 05 00 00 01 00 00 00 00 00 00 00  // ....%...........
    0530: 00 00 00 00 00 00 00 00 28 05 00 00 01 00 00 00  // ........(.......
    0540: 00 00 00 00 00 00 00 00 00 00 00 00 2B 05 00 00  // ............+...
    0550: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0560: 40 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // @...............
    0570: 00 00 00 00 80 05 00 00 00 00 00 00 00 00 00 00  // ................
    0580: 00 00 00 00 00 00 00 00 86 05 00 00 00 00 00 00  // ................
    0590: 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00  // ................
    05A0: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    05B0: 00 0A 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // ................
    05C0: 00 00 00 00 00 0C 00 00 03 00 00 00 00 00 00 00  // ................
    05D0: 00 00 00 00 00 00 00 00 00 0E 00 00 01 00 00 00  // ................
    05E0: 00 00 00 00 00 00 00 00 00 00 00 00 03 A0 00 00  // ................
    05F0: 00 00 00 00 01 00 00 00 8C 00 00 00 00 00 04 05  // ................
    0600: 00 00 00 00 00 E0 00 00 00 00 00 00 01 00 00 00  // ................
    0610: 01 00 00 00 3C 00 00 00 07 00 00 00 4C 00 00 00  // ....<.......L...
    0620: 01 00 00 00 84 00 00 00 07 01 00 00 00 00 00 00  // ................
    0630: 05 01 00 00 00 00 00 00 69 01 00 00 00 00 00 00  // ........i.......
    0640: 6A 01 00 00 00 00 00 00 6B 01 00 00 00 00 00 00  // j.......k.......
    0650: 6C 01 00 00 00 00 00 00 6E 01 00 00 00 00 00 00  // l.......n.......
    0660: 94 00 00 00 00 00 00 00 95 00 00 00 00 00 00 00  // ................
    0670: 6E 01 00 00 00 00 00 00 00 00 00 00 03 00 00 00  // n...............
    0680: 00 00 00 00 00 00 00 00 00 00 00 00 03 F0 00 00  // ................
    0690: 00 00 00 00 01 00 00 00 DC 00 00 00 00 00 10 05  // ................
    06A0: 00 00 00 00 00 00 04 00 00 00 00 00 01 00 00 00  // ................
    06B0: 01 00 00 00 3C 00 00 00 11 00 00 00 4C 00 00 00  // ....<.......L...
    06C0: 01 00 00 00 D4 00 00 00 07 01 00 00 00 00 00 00  // ................
    06D0: 05 01 00 00 00 00 00 00 02 01 00 00 00 00 00 00  // ................
    06E0: A9 01 00 00 00 00 00 00 AA 01 00 00 00 00 00 00  // ................
    06F0: AB 01 00 00 00 00 00 00 AC 01 00 00 00 00 00 00  // ................
    0700: AD 01 00 00 00 00 00 00 AE 01 00 00 00 00 00 00  // ................
    0710: AF 01 00 00 00 00 00 00 B0 01 00 00 00 00 00 00  // ................
    0720: B1 01 00 00 00 00 00 00 B2 01 00 00 00 00 00 00  // ................
    0730: B3 01 00 00 00 00 00 00 B4 01 00 00 00 00 00 00  // ................
    0740: A9 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  // ................
    0750: 01 01 00 00 00 00 00 00 56 01 00 00 00 00 00 00  // ........V.......
    0760: A0 00 00 00 00 00 00 00 00 00 00 00 0C 00 00 00  // ................
    0770: 00 00 00 00 00 00 00 00 00 00 00 00 03 D8 00 00  // ................
    0780: 00 00 00 00 05 00 00 00 74 00 00 00 00 00 14 05  // ........t.......
    0790: 00 00 00 00 00 C0 00 00 00 00 00 00 01 00 00 00  // ................
    07A0: 01 00 00 00 3C 00 00 00 04 00 00 00 4C 00 00 00  // ....<.......L...
    07B0: 01 00 00 00 6C 00 00 00 07 01 00 00 00 00 00 00  // ....l...........
    07C0: 05 01 00 00 00 00 00 00 2F 01 00 00 00 00 00 00  // ......../.......
    07D0: 2D 01 00 00 00 00 00 00 23 01 00 00 00 00 00 00  // -.......#.......
    07E0: 0B 01 00 00 00 00 00 00 0A 01 00 00 00 00 00 00  // ................
    07F0: 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00  // ................
    0800: 00 00 00 00 10 00 00 00 18 00 00 00 00 00 00 00  // ................
    0810: 00 00 00 00 00 00 00 00 2A 00 00 00 00 00 00 00  // ........*.......
    0820: 00 00 00 00 00 00 00 00 00 00 00 00 2E 00 00 00  // ................
    0830: 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0840: 36 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00  // 6...............
    0850: 00 00 00 00 01 59 02 00 00 00 00 00 1B 00 00 00  // .....Y..........
    0860: 3D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // =...............
    0870: 24 5C 5F 53 42 5F 2E 47 50 55 30 00 00 00 00 00  // $\_SB_.GPU0.....
    0880: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0890: 00 00 00 00 00 01 00 00 00 00 04 00 00 34 03 00  // .............4..
    08A0: 00 00 00 00 00 02 00 00 00 0A 00 00 00 07 04 00  // ................
    08B0: 00 34 03 00 00 00 00 00 00 0D 00 00 00 00 00 00  // .4..............
    08C0: 00 21 04 00 00 34 03 00 00 00 00 00 00 0E 00 00  // .!...4..........
    08D0: 00 01 00 00 00 28 04 00 00 34 03 00 00 00 00 00  // .....(...4......
    08E0: 00 10 00 00 00 02 00 00 00 2B 04 00 00 34 03 00  // .........+...4..
    08F0: 00 00 00 00 00 13 00 00 00 00 00 00 00 31 04 00  // .............1..
    0900: 00 34 03 00 00 00 00 00 00 00 01 00 00 00 00 00  // .4..............
    0910: 00 00 05 00 00 34 03 00 00 00 00 00 00 01 01 00  // .....4..........
    0920: 00 00 00 00 00 02 05 00 00 34 03 00 00 00 00 00  // .........4......
    0930: 00 02 01 00 00 02 00 00 00 09 05 00 00 34 03 00  // .............4..
    0940: 00 00 00 00 00 05 01 00 00 00 00 00 00 0E 05 00  // ................
    0950: 00 34 03 00 00 00 00 00 00 06 01 00 00 00 00 00  // .4..............
    0960: 00 26 05 00 00 34 03 00 00 00 00 00 00 07 01 00  // .&...4..........
    0970: 00 00 00 00 00 29 05 00 00 34 03 00 00 00 00 00  // .....)...4......
    0980: 00 08 01 00 00 00 00 00 00 2B 05 00 00 34 03 00  // .........+...4..
    0990: 00 00 00 00 00 00 02 00 00 01 00 00 00 04 05 00  // ................
    09A0: 00 34 03 00 00 00 00 00 00 02 02 00 00 01 00 00  // .4..............
    09B0: 00 07 05 00 00 34 03 00 00 00 00 00 00 04 02 00  // .....4..........
    09C0: 00 01 00 00 00 0C 05 00 00 34 03 00 00 00 00 00  // .........4......
    09D0: 00 06 02 00 00 01 00 00 00 0F 05 00 00 34 03 00  // .............4..
    09E0: 00 00 00 00 00 08 02 00 00 00 00 00 00 25 05 00  // .............%..
    09F0: 00 34 03 00 00 00 00 00 00 09 02 00 00 00 00 00  // .4..............
    0A00: 00 28 05 00 00 34 03 00 00 00 00 00 00 0A 02 00  // .(...4..........
    0A10: 00 00 00 00 00 2D 05 00 00 34 03 00 00 00 00 00  // .....-...4......
    0A20: 00 0B 02 00 00 00 00 00 00 40 05 00 00 34 03 00  // .........@...4..
    0A30: 00 00 00 00 00 00 03 00 00 00 00 00 00 80 05 00  // ................
    0A40: 00 34 03 00 00 00 00 00 00 01 03 00 00 00 00 00  // .4..............
    0A50: 00 86 05 00 00 34 03 00 00 00 00 00 00 00 00 00  // .....4..........
    0A60: 01 00 00 00 00 00 0E 00 00 34 03 00 00 00 00 00  // .........4......
    0A70: 00 01 00 00 01 00 00 00 00 00 00 00 00 34 03 00  // .............4..
    0A80: 00 00 00 00 00 00 00 00 02 01 00 00 00 00 00 00  // ................
    0A90: 00 EC 05 00 00 00 00 00 00 00 02 00 02 00 00 00  // ................
    0AA0: 00 02 00 00 00 EC 05 00 00 00 00 00 00 01 51 00  // ..............Q.
    0AB0: 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00  // .........=......
    0AC0: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 5F 2E  // .........$\_SB_.
    0AD0: 4A 50 47 45 00 00 00 00 00 00 00 00 00 00 00 00  // JPGE............
    0AE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00  // ................
    0AF0: 00 00 00 08 00 00 34 03 00 00 00 00 00 00 01 65  // ......4........e
    0B00: 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00  // ..........=.....
    0B10: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 5F  // ..........$\_SB_
    0B20: 2E 56 46 45 30 00 00 00 00 00 00 00 00 00 00 00  // .VFE0...........
    0B30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    0B40: 00 00 00 00 0C 00 00 34 03 00 00 00 00 00 00 04  // .......4........
    0B50: 00 00 00 01 00 00 00 00 0A 00 00 34 03 00 00 00  // ...........4....
    0B60: 00 00 00 01 65 00 00 00 00 00 00 02 00 00 00 3D  // ....e..........=
    0B70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0B80: 5C 5F 53 42 5F 2E 53 43 53 53 00 00 00 00 00 00  // \_SB_.SCSS......
    0B90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BA0: 00 06 00 00 01 00 00 00 00 18 00 00 14 01 00 00  // ................
    0BB0: 00 00 00 00 02 06 00 00 05 00 00 00 20 18 00 00  // ............ ...
    0BC0: 14 01 00 00 00 00 00 00 01 51 00 00 00 00 00 00  // .........Q......
    0BD0: 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    0BE0: 00 00 00 00 24 5C 5F 53 42 5F 2E 53 44 43 32 00  // ....$\_SB_.SDC2.
    0BF0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C00: 00 00 00 00 00 00 00 00 00 1E 00 00 00 80 18 00  // ................
    0C10: 00 14 01 00 00 00 00 00 00 01 51 00 00 00 00 00  // ..........Q.....
    0C20: 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00 00  // .....=..........
    0C30: 00 00 00 00 00 24 5C 5F 53 42 5F 2E 55 41 52 33  // .....$\_SB_.UAR3
    0C40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C50: 00 00 00 00 00 00 00 00 00 00 16 00 00 00 20 19  // .............. .
    0C60: 00 00 14 01 00 00 00 00 00 00 01 51 00 00 00 00  // ...........Q....
    0C70: 00 00 01 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    0C80: 00 00 00 00 00 00 24 5C 5F 53 42 5F 2E 55 41 52  // ......$\_SB_.UAR
    0C90: 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // 5...............
    0CA0: 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 60  // ...............`
    0CB0: 14 00 00 30 00 00 00 00 00 00 00 01 51 00 00 00  // ...0........Q...
    0CC0: 00 00 00 01 00 00 00 3D 00 00 00 00 00 00 00 00  // .......=........
    0CD0: 00 00 00 00 00 00 00 24 5C 5F 53 42 5F 2E 55 46  // .......$\_SB_.UF
    0CE0: 53 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // S0..............
    0CF0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D00: 40 14 00 00 30 00 00 00 00 00 00 00 01 51 00 00  // @...0........Q..
    0D10: 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00 00  // ........=.......
    0D20: 00 00 00 00 00 00 00 00 24 5C 5F 53 42 5F 2E 50  // ........$\_SB_.P
    0D30: 43 49 30 00 00 00 00 00 00 00 00 00 00 00 00 00  // CI0.............
    0D40: 00 00 00 00 00 00 00 00 00 00 00 00 00 0F 00 00  // ................
    0D50: 00 80 14 00 00 30 00 00 00 00 00 00 00 01 51 00  // .....0........Q.
    0D60: 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00  // .........=......
    0D70: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 5F 2E  // .........$\_SB_.
    0D80: 55 53 42 30 00 00 00 00 00 00 00 00 00 00 00 00  // USB0............
    0D90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0DA0: 00 00 00 14 00 00 30 00 00 00 00 00 00 00 01 65  // ......0........e
    0DB0: 00 00 00 00 00 00 02 00 00 00 3D 00 00 00 00 00  // ..........=.....
    0DC0: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 5F  // ..........$\_SB_
    0DD0: 2E 49 50 41 00 00 00 00 00 00 00 00 00 00 00 00  // .IPA............
    0DE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02  // ................
    0DF0: 00 00 00 E0 18 00 00 14 01 00 00 00 00 00 00 00  // ................
    0E00: 05 00 00 03 00 00 00 E7 18 00 00 14 01 00 00 00  // ................
    0E10: 00 00 00 01 A1 00 00 00 00 00 00 05 00 00 00 3D  // ...............=
    0E20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24  // ...............$
    0E30: 5C 5F 53 42 5F 2E 41 44 43 4D 00 00 00 00 00 00  // \_SB_.ADCM......
    0E40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0E50: 00 00 00 00 00 00 00 00 01 00 00 00 8C 06 00 00  // ................
    0E60: 00 00 00 00 01 00 00 00 08 00 00 00 04 00 00 00  // ................
    0E70: 8C 06 00 00 00 00 00 00 00 02 00 00 00 00 00 00  // ................
    0E80: 02 00 00 00 8C 06 00 00 00 00 00 00 00 01 00 00  // ................
    0E90: 00 00 00 00 03 00 00 00 8C 06 00 00 00 00 00 00  // ................
    0EA0: 00 04 00 00 00 00 00 00 00 00 00 00 8C 06 00 00  // ................
    0EB0: 00 00 00 00                                      // ....
