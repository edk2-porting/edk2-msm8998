Name (PCFG,Buffer(){" 
<?xml version='1.0' encoding='utf-8'?>
<PanelName>S6E3FA5</PanelName>
<PanelDescription>samsung s6e3fa5 cmd mode dsi panel(1080x1920 24bpp)</PanelDescription>
<Group id='Active Timing'>
 <HorizontalActive>1080</HorizontalActive>
 <HorizontalFrontPorch>120</HorizontalFrontPorch>
 <HorizontalBackPorch>70</HorizontalBackPorch>
 <HorizontalSyncPulse>19</HorizontalSyncPulse>
 <HorizontalSyncSkew>0</HorizontalSyncSkew>
 <HorizontalLeftBorder>0</HorizontalLeftBorder>
 <HorizontalRightBorder>0</HorizontalRightBorder>
 <VerticalActive>1920</VerticalActive>
 <VerticalFrontPorch>18</VerticalFrontPorch>
 <VerticalBackPorch>4</VerticalBackPorch>
 <VerticalSyncPulse>2</VerticalSyncPulse>
 <VerticalSyncSkew>0</VerticalSyncSkew>
 <VerticalTopBorder>0</VerticalTopBorder>
 <VerticalBottomBorder>0</VerticalBottomBorder>
 <InvertDataPolarity>False</InvertDataPolarity>
 <InvertVsyncPolairty>False</InvertVsyncPolairty>
 <InvertHsyncPolarity>False</InvertHsyncPolarity>
 <BorderColor>0x0</BorderColor>
</Group>
<Group id='Display Interface'>
 <InterfaceType>9</InterfaceType>
 <InterfaceColorFormat>3</InterfaceColorFormat>
</Group>
<Group id='DSI Interface'> <DSIChannelId>2</DSIChannelId>
 <DSIVirtualId>0</DSIVirtualId>
 <DSIColorFormat>36</DSIColorFormat>
 <DSITrafficMode>1</DSITrafficMode>
 <DSILanes>4</DSILanes>
 <DSIRefreshRate>0x3C0000</DSIRefreshRate>
 <DSICmdSwapInterface>False</DSICmdSwapInterface>
 <DSICmdUsingTrigger>False</DSICmdUsingTrigger>
 <DSIEnableAutoRefresh>True</DSIEnableAutoRefresh>
 <DSIAutoRefreshFrameNumDiv>1</DSIAutoRefreshFrameNumDiv>
 <PanelOrientation>02</PanelOrientation>
 <DSIControllerMapping>
  00
 </DSIControllerMapping>
 <DSILP11AtInit>True</DSILP11AtInit>
</Group>
<DSIInitSequence> 
 29 B0 00
 29 d6 01
 29 EC 64 DC EC 3B 52 00 0B 0B 13 15 68 0B B5
 29 b0 03
 39 35 00
 39 36 00
 39 3A 77
 39 2A 00 00 04 37
 39 2B 00 00 07 7F
 39 44 00 00
 39 51 FF
 39 53 0C
 39 55 00
 39 5E 00
 39 84 00
 05 29
 FF 78
 05 11
 FF 28
 29 B0 04
 39 84 00
 29 C8 11
 29 B0 03
 FF 0A
</DSIInitSequence>
<DSITermSequence> 05 28
 ff 28
 05 10
 ff A0
</DSITermSequence>
<Group id='Backlight Configuration'>
 <BacklightType>3</BacklightType>
</Group>
"})
