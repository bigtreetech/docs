# CB2

<img src=img/CB2/CB2_Title.webp width="600" />

## **产品简介**

BIGTREETECH CB2 是针对树莓派 CM4 缺货问题推出的替代方案,所有输出信号采用 2 个 100PIN微型 BTB 高速连接座与外面扩展底板方便快速连接(包括千兆以太网、HDMI 等)，板载 2.4G、5GWIFI BT5.2。

## **产品特点**

* CPU: 瑞芯微 RK3566，四核 Cortex-A55 @1.8GHz
* GPU: Mali-G52 1-Core-2EE
* NPU: 0.8 TOPS NPU
* RAM: 2GB/4GB LPDDR4
* 板载 EMMC
* MIPI DSI 显示支持
* 摄像头 2-Lane MIPI CSI2
* 3 路 USB2.0 端口 1 路 USB3.0
* PCIe 2.1 1x1 Lane
* 千兆以太网+433Mbps WiFi+BT5.0
* 40-pin GPIO
* 与树莓派 CM4 完全相同的 BTB 座子

## **产品参数**

| **核心板外观尺寸** | **40mm x 55mm**                         |
| ------------------ | --------------------------------------- |
| **核心板安装尺寸** | **33mm x 48mm**                         |
| **核心板输入电压** | **5V±5%/2A**                            |
| **核心板输出电压** | **3.3V±2%/100mA**                       |
| **核心板输出电压** | **1.8V±2%/100mA**                       |
| **核心板 WIFI**    | **2.4G/5G，802.11 ac/a/b/g/n/无线标准** |

## **尺寸图**

<img src=img/CB2/CB2_Dimensions.webp width="600" />

## **外设接口**

### Pin 脚说明

| **<font  color="red">PIN</font>** | **<font  color="red">Connector</font>** |      **<font  color="red">Signal</font>**       |      **<font  color="red">Description</font>**      |
| :-------------------------------: | :-------------------------------------: | :---------------------------------------------: | :-------------------------------------------------: |
|               **1**               |           **A connector_01**            |      **<font  color="purple">GND</font>**       |                                                     |
|               **2**               |           **A connector_02**            |      **<font  color="purple">GND</font>**       |                                                     |
|               **3**               |           **A connector_03**            |   **<font  color="green">GBIT_MDI3_P</font>**   |                                                     |
|               **4**               |           **A connector_04**            |   **<font  color="green">GBIT_MDI1_P</font>**   |                                                     |
|               **5**               |           **A connector_05**            |   **<font  color="green">GBIT_MDI3_N</font>**   |                                                     |
|               **6**               |           **A connector_06**            |   **<font  color="green">GBIT_MDI1_N</font>**   |                                                     |
|               **7**               |           **A connector_07**            |      **<font  color="purple">GND</font>**       |                                                     |
|               **8**               |           **A connector_08**            |      **<font  color="purple">GND</font>**       |                                                     |
|               **9**               |           **A connector_09**            |   **<font  color="green">GBIT_MDI2_N</font>**   |                                                     |
|              **10**               |           **A connector_10**            |   **<font  color="green">GBIT_MDI0_N</font>**   |                                                     |
|              **11**               |           **A connector_11**            |   **<font  color="green">GBIT_MDI2_P</font>**   |                                                     |
|              **12**               |           **A connector_12**            |   **<font  color="green">GBIT_MDI0_P</font>**   |                                                     |
|              **13**               |           **A connector_13**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **14**               |           **A connector_14**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **15**               |           **A connector_15**            |    **<font  color="green">1000M_LED</font>**    |                                                     |
|              **16**               |           **A connector_16**            |  **<font  color="green">CAMERAB_PDN_L</font>**  |                                                     |
|              **17**               |           **A connector_17**            |    **<font  color="green">100M_LED</font>**     |                                                     |
|              **18**               |           **A connector_18**            |   **<font  color="green">SPDIF_TX_M2</font>**   |                                                     |
|              **19**               |           **A connector_19**            |     **<font  color="green">PWM3_IR</font>**     |                                                     |
|              **20**               |           **A connector_20**            |        **<font  color="red">NC</font>**         |                                                     |
|              **21**               |           **A connector_21**            | **<font  color="green">WORKING_LEDEN_H</font>** |                                                     |
|              **22**               |           **A connector_22**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **23**               |           **A connector_23**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **24**               |           **A connector_24**            |    **<font  color="green">GPIO0_C3</font>**     |                                                     |
|              **25**               |           **A connector_25**            |    **<font  color="green">GPIO4_C2</font>**     |                                                     |
|              **26**               |           **A connector_26**            |    **<font  color="green">GPIO4_C5</font>**     |                                                     |
|              **27**               |           **A connector_27**            |    **<font  color="green">GPIO4_C3</font>**     |                                                     |
|              **28**               |           **A connector_28**            |    **<font  color="green">GPIO0_C0</font>**     |                                                     |
|              **29**               |           **A connector_29**            |    **<font  color="green">GPIO0_A0</font>**     |                                                     |
|              **30**               |           **A connector_30**            |    **<font  color="green">GPIO3_D7</font>**     |                                                     |
|              **31**               |           **A connector_31**            |    **<font  color="green">GPIO0_C1</font>**     |                                                     |
|              **32**               |           **A connector_32**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **33**               |           **A connector_33**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **34**               |           **A connector_34**            |        **<font  color="red">NC</font>**         |                                                     |
|              **35**               |           **A connector_35**            |    **<font  color="green">GPIO0_B3</font>**     |                                                     |
|              **36**               |           **A connector_36**            |    **<font  color="green">GPIO0_B4</font>**     |                                                     |
|              **37**               |           **A connector_37**            |    **<font  color="green">GPIO0_A6</font>**     |                                                     |
|              **38**               |           **A connector_38**            |    **<font  color="green">GPIO3_C3</font>**     |                                                     |
|              **39**               |           **A connector_39**            |    **<font  color="green">GPIO4_A2</font>**     |                                                     |
|              **40**               |           **A connector_40**            |    **<font  color="green">GPIO3_C2</font>**     |                                                     |
|              **41**               |           **A connector_41**            |    **<font  color="green">GPIO3_C4</font>**     |                                                     |
|              **42**               |           **A connector_42**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **43**               |           **A connector_43**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **44**               |           **A connector_44**            |    **<font  color="green">GPIO3_C1</font>**     |                                                     |
|              **45**               |           **A connector_45**            |    **<font  color="green">GPIO4_A3</font>**     |                                                     |
|              **46**               |           **A connector_46**            |    **<font  color="green">GPIO1_A1</font>**     |                                                     |
|              **47**               |           **A connector_47**            |    **<font  color="green">GPIO4_C6</font>**     |                                                     |
|              **48**               |           **A connector_48**            |    **<font  color="green">GPIO1_A0</font>**     |                                                     |
|              **49**               |           **A connector_49**            |    **<font  color="green">GPIO0_C0</font>**     |                                                     |
|              **50**               |           **A connector_50**            |    **<font  color="green">GPIO0_C7</font>**     |                                                     |
|              **51**               |           **A connector_51**            |    **<font  color="green">GPIO0_D0</font>**     |     **<font  color="green">DEBUG UART</font>**      |
|              **52**               |           **A connector_52**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **53**               |           **A connector_53**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **54**               |           **A connector_54**            |    **<font  color="green">GPIO3_A1</font>**     |                                                     |
|              **55**               |           **A connector_55**            |    **<font  color="green">GPIO0_D1</font>**     |     **<font  color="green">DEBUG UART</font>**      |
|              **56**               |           **A connector_56**            |    **<font  color="green">GPIO4_B3</font>**     |                                                     |
|              **57**               |           **A connector_57**            |    **<font  color="green">SDC0-CLK</font>**     | **<font  color="green">SDCARD Clock signal</font>** |
|              **58**               |           **A connector_58**            |    **<font  color="green">GPIO4_B2</font>**     |                                                     |
|              **59**               |           **A connector_59**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **60**               |           **A connector_60**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **61**               |           **A connector_61**            |     **<font  color="green">SDC0-D3</font>**     | **<font  color="green">SDCARD Data3 signal</font>** |
|              **62**               |           **A connector_62**            |    **<font  color="green">SDC0-CMD</font>**     |  **<font  color="green">SDCARD CMD signal</font>**  |
|              **63**               |           **A connector_63**            |     **<font  color="green">SDC0-D0</font>**     | **<font  color="green">SDCARD Data0 signal</font>** |
|              **64**               |           **A connector_64**            |       **<font  color="green">NC</font>**        |                                                     |
|              **65**               |           **A connector_65**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **66**               |           **A connector_66**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **67**               |           **A connector_67**            |     **<font  color="green">SDC0-D1</font>**     | **<font  color="green">SDCARD Data1 signal</font>** |
|              **68**               |           **A connector_68**            |       **<font  color="green">NC</font>**        |                                                     |
|              **69**               |           **A connector_69**            |     **<font  color="green">SDC0-D2</font>**     | **<font  color="green">SDCARD Data2 signal</font>** |
|              **70**               |           **A connector_70**            |       **<font  color="green">NC</font>**        |                                                     |
|              **71**               |           **A connector_71**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **72**               |           **A connector_72**            |       **<font  color="green">NC</font>**        |                                                     |
|              **73**               |           **A connector_73**            |    **<font  color="green">GPIO0_B5</font>**     |                                                     |
|              **74**               |           **A connector_74**            |      **<font  color="purple">GND</font>**       |                                                     |
|              **75**               |           **A connector_75**            |    **<font  color="green">GPIO3_D2</font>**     |                                                     |
|              **76**               |           **A connector_76**            |    **<font  color="green">GPIO3_D3</font>**     |    **<font  color="green">SDCARD detect</font>**    |
|              **77**               |           **A connector_77**            |      **<font  color="red">VCC_5V</font>**       |                    **5V IN /2A**                    |
|              **78**               |           **A connector_78**            |        **<font  color="red">NC</font>**         |                                                     |
|              **79**               |           **A connector_79**            |      **<font  color="red">VCC_5V</font>**       |                    **5V IN /2A**                    |
|              **80**               |           **A connector_80**            |    **<font  color="green">GPIO4_B5</font>**     |                                                     |
|              **81**               |           **A connector_81**            |      **<font  color="red">VCC_5V</font>**       |                    **5V IN /2A**                    |
|              **82**               |           **A connector_82**            |    **<font  color="green">GPIO4_B4</font>**     |                                                     |
|              **83**               |           **A connector_83**            |      **<font  color="red">VCC_5V</font>**       |                    **5V IN /2A**                    |
|              **84**               |           **A connector_84**            |        **<font  color="red">3V3</font>**        |                 **3.3v out /200mA**                 |
|              **85**               |           **A connector_85**            |      **<font  color="red">VCC_5V</font>**       |                    **5V IN /2A**                    |
|              **86**               |           **A connector_86**            |        **<font  color="red">3V3</font>**        |                 **3.3v out /200mA**                 |
|              **87**               |           **A connector_87**            |      **<font  color="red">VCC_5V</font>**       |                    **5V IN /2A**                    |
|              **88**               |           **A connector_88**            |        **<font  color="red">1V8</font>**        |                 **1.8v out /100mA**                 |
|              **89**               |           **A connector_89**            |    **<font  color="green">GPIO3_B4</font>**     |                                                     |
|              **90**               |           **A connector_90**            |        **<font  color="red">1V8</font>**        |                 **1.8v out /100mA**                 |
|              **91**               |           **A connector_91**            |        **<font  color="red">NC</font>**         |                                                     |
|              **92**               |           **A connector_92**            |      **<font  color="green">PWRON</font>**      |                                                     |
|              **93**               |           **A connector_93**            |    **<font  color="green">RECOVERY</font>**     |                                                     |
|              **94**               |           **A connector_94**            |        **<font  color="red">NC</font>**         |                                                     |
|              **95**               |           **A connector_95**            |    **<font  color="green">GPIO4_A1</font>**     |                                                     |
|              **96**               |           **A connector_96**            |        **<font  color="red">NC</font>**         |                                                     |
|              **97**               |           **A connector_97**            |    **<font  color="green">GPIO4_A5</font>**     |                                                     |
|              **98**               |           **A connector_98**            |      <font  color="purple">**GND**</font>       |                                                     |

|  99  | **A connector_99**  |     <font  color="green">**PMIC_PWRON**</font>     |                                                    |
| :--: | :-----------------: | :------------------------------------------------: | :------------------------------------------------: |
| 100  | **A connector_100** |      <font  color="green">**AP-RESET**</font>      |                                                    |
| 101  |  **B connector_1**  |    <font  color="green">**USB_OTG0_ID**</font>     |                                                    |
| 102  |  **B connector_2**  | <font  color="green">**PCIE20_CLKREQn_M 2**</font> |                                                    |
| 103  |  **B connector_3**  |    <font  color="green">**USB_OTG0_DM**</font>     |                                                    |
| 104  |  **B connector_4**  |      <font  color="green">**LINEOUTL**</font>      |                                                    |
| 105  |  **B connector_5**  |    <font  color="green">**USB_OTG0_DP**</font>     |                                                    |
| 106  |  **B connector_6**  |      <font  color="green">**LINEOUTR**</font>      |                                                    |
| 107  |  **B connector_7**  |        <font  color="purple">**GND**</font>        |                                                    |
| 108  |  **B connector_8**  |        <font  color="purple">**GND**</font>        |                                                    |
| 109  |  **B connector_9**  |  <font  color="green">**PCIE20_PERSTn_M2**</font>  |                                                    |
| 110  | **B connector_10**  |   <font  color="green">**PCIE20_REFCLKP**</font>   |                                                    |
| 111  | **B connector_11**  |      <font  color="green">**GPIO4_B0**</font>      |                                                    |
| 112  | **B connector_12**  |   <font  color="green">**PCIE20_REFCLKN**</font>   |                                                    |
| 113  | **B connector_13**  |        <font  color="purple">**GND**</font>        |                                                    |
| 114  | **B connector_14**  |        <font  color="purple">**GND**</font>        |                                                    |
| 115  | **B connector_15**  |  <font  color="green">**MIPI_CSI_RX_D0N**</font>   |                                                    |
| 116  | **B connector_16**  |     <font  color="green">**PCIE20_RXP**</font>     |                                                    |
| 117  | **B connector_17**  |  <font  color="green">**MIPI_CSI_RX_D0P**</font>   |                                                    |
| 118  | **B connector_18**  |     <font  color="green">**PCIE20_RXN**</font>     |                                                    |
| 119  | **B connector_19**  |        <font  color="purple">**GND**</font>        |                                                    |
| 120  | **B connector_20**  |        <font  color="purple">**GND**</font>        |                                                    |
| 121  | **B connector_21**  |  <font  color="green">**MIPI_CSI_RX_D1N**</font>   |                                                    |
| 122  | **B connector_22**  |     <font  color="green">**PCIE20_TXP**</font>     |                                                    |
| 123  | **B connector_23**  |  <font  color="green">**MIPI_CSI_RX_D1P**</font>   |                                                    |
| 124  | **B connector_24**  |     <font  color="green">**PCIE20_TXN**</font>     |                                                    |
| 125  | **B connector_25**  |        <font  color="purple">**GND**</font>        |                                                    |
| 126  | **B connector_26**  |        <font  color="purple">**GND**</font>        |                                                    |
| 127  | **B connector_27**  | <font  color="green">**MIPI_CSI_RX_CLK0N**</font>  |                                                    |
| 128  | **B connector_28**  |      <font  color="green">**USB3-DM**</font>       |                                                    |
| 129  | **B connector_29**  | <font  color="green">**MIPI_CSI_RX_CLK0P**</font>  |                                                    |
| 130  | **B connector_30**  |      <font  color="green">**USB3-DP**</font>       |                                                    |
| 131  | **B connector_31**  |        <font  color="purple">**GND**</font>        |                                                    |
| 132  | **B connector_32**  |        <font  color="purple">**GND**</font>        |                                                    |
| 133  | **B connector_33**  |  <font  color="green">**MIPI_CSI_RX_D2N**</font>   |                                                    |
| 134  | **B connector_34**  |      <font  color="green">**MIC1_IN**</font>       |                                                    |
| 135  | **B connector_35**  |  <font  color="green">**MIPI_CSI_RX_D2P**</font>   |                                                    |
| 136  | **B connector_36**  |      <font  color="green">**MIC2_IN**</font>       |                                                    |
| 137  | **B connector_37**  |        <font  color="purple">**GND**</font>        |                                                    |
| 138  | **B connector_38**  |        <font  color="purple">**GND**</font>        |                                                    |
| 139  | **B connector_39**  |  <font  color="green">**MIPI_CSI_RX_D3N**</font>   |                                                    |
| 140  | **B connector_40**  | <font  color="green">**MIPI_CSI_RX_CLK1N**</font>  |                                                    |
| 141  | **B connector_41**  |  <font  color="green">**MIPI_CSI_RX_D3P**</font>   |                                                    |
| 142  | **B connector_42**  | <font  color="green">**MIPI_CSI_RX_CLK1P**</font>  |                                                    |
| 143  | **B connector_43**  |      <font  color="green">**GPIO4_A7**</font>      |                                                    |
| 144  | **B connector_44**  |        <font  color="purple">**GND**</font>        |                                                    |
| 145  | **B connector_45**  |       <font  color="green">**HP_SNS**</font>       |                                                    |
| 146  | **B connector_46**  |   <font  color="green">**USB2_HOST2_DP** </font>   |                                                    |
| 147  | **B connector_47**  |      <font  color="green">**HP_DET_L**</font>      |                                                    |
| 148  | **B connector_48**  |   <font  color="green">**USB2_HOST2_DM**</font>    |                                                    |
| 149  | **B connector_49**  |    <font  color="green">**SARADC_VIN2**</font>     |                                                    |
| 150  | **B connector_50**  |        <font  color="purple">**GND**</font>        |                                                    |
| 151  | **B connector_51**  |        <font  color="green">**HCEC**</font>        |      <font  color="green">**HDMI CEC**</font>      |
| 152  | **B connector_52**  |   <font  color="green">**USB3_HOST1_DP**</font>    |                                                    |
| 153  | **B connector_53**  |        <font  color="green">**HHPD**</font>        |    <font  color="green">**HDMI Hotplug**</font>    |
| 154  | **B connector_54**  |   <font  color="green">**USB3_HOST1_DM**</font>    |                                                    |
| 155  | **B connector_55**  |        <font  color="purple">**GND**</font>        |                                                    |
| 156  | **B connector_56**  |        <font  color="purple">**GND**</font>        |                                                    |
| 157  | **B connector_57**  |  <font  color="green">**MIPI_DSI_TX0_D0N**</font>  |                                                    |
| 158  | **B connector_58**  |  <font  color="green">**USB3_HOST1_SSTXP**</font>  |                                                    |
| 159  | **B connector_59**  |  <font  color="green">**MIPI_DSI_TX0_D0P**</font>  |                                                    |
| 160  | **B connector_60**  |  <font  color="green">**USB3_HOST1_SSTXN**</font>  |                                                    |
| 161  | **B connector_61**  |        <font  color="purple">**GND**</font>        |                                                    |
| 162  | **B connector_62**  |        <font  color="purple">**GND**</font>        |                                                    |
| 163  | **B connector_63**  |  <font  color="green">**MIPI_DSI_TX0_D1N**</font>  |                                                    |
| 164  | **B connector_64**  |  <font  color="green">**USB3_HOST1_SSRXP**</font>  |                                                    |
| 165  | **B connector_65**  |  <font  color="green">**MIPI_DSI_TX0_D1P**</font>  |                                                    |
| 166  | **B connector_66**  |  <font  color="green">**USB3_HOST1_SSRXN**</font>  |                                                    |
| 167  | **B connector_67**  |        <font  color="purple">**GND**</font>        |                                                    |
| 168  | **B connector_68**  |        <font  color="purple">**GND**</font>        |                                                    |
| 169  | **B connector_69**  | <font  color="green">**MIPI_DSI_TX0_CLKN**</font>  |                                                    |
| 170  | **B connector_70**  |       <font  color="green">**HTX2P**</font>        | <font  color="green">**HDMI TX2 Positive.**</font> |
| 171  | **B connector_71**  | <font  color="green">**MIPI_DSI_TX0_CLKP**</font>  |                                                    |
| 172  | **B connector_72**  |       <font  color="green">**HTX2N**</font>        | <font  color="green">**HDMI TX2 Negative.**</font> |
| 173  | **B connector_73**  |        <font  color="purple">**GND**</font>        |                                                    |
| 174  | **B connector_74**  |        <font  color="purple">**GND**</font>        |                                                    |
| 175  | **B connector_75**  |  <font  color="green">**MIPI_DSI_TX1_D0N**</font>  |                                                    |
| 176  | **B connector_76**  |       <font  color="green">**HTX1P**</font>        | <font  color="green">**HDMI TX1 Positive.**</font> |
| 177  | **B connector_77**  |  <font  color="green">**MIPI_DSI_TX1_D0P**</font>  |                                                    |
| 178  | **B connector_78**  |       <font  color="green">**HTX1N**</font>        | <font  color="green">**HDMI TX1 Negative.**</font> |
| 179  | **B connector_79**  |        <font  color="purple">**GND**</font>        |                                                    |
| 180  | **B connector_80**  |        <font  color="purple">**GND**</font>        |                                                    |
| 181  | **B connector_81**  |  <font  color="green">**MIPI_DSI_TX1_D1N**</font>  |                                                    |
| 182  | **B connector_82**  |       <font  color="green">**HTX0P**</font>        | <font  color="green">**HDMI TX0 Positive.**</font> |
| 183  | **B connector_83**  |  <font  color="green">**MIPI_DSI_TX1_D1P**</font>  |                                                    |
| 184  | **B connector_84**  |       <font  color="green">**HTX0N**</font>        | <font  color="green">**HDMI TX0 Negative.**</font> |
| 185  | **B connector_85**  |        <font  color="purple">**GND**</font>        |                                                    |
| 186  | **B connector_86**  |        <font  color="purple">**GND**</font>        |                                                    |
| 187  | **B connector_87**  | <font  color="green">**MIPI_DSI_TX1_CLKN**</font>  |                                                    |
| 188  | **B connector_88**  |       <font  color="green">**HTXCP**</font>        | <font  color="green">**HDMI CLK Positive.**</font> |
| 189  | **B connector_89**  | <font  color="green">**MIPI_DSI_TX1_CLKP**</font>  |                                                    |
| 190  | **B connector_90**  |       <font  color="green">**HTXCN**</font>        | <font  color="green">**HDMI CLK Negative.**</font> |
| 191  | **B connector_91**  |        <font  color="purple">**GND**</font>        |                                                    |
| 192  | **B connector_92**  |        <font  color="purple">**GND**</font>        |                                                    |
| 193  | **B connector_93**  |  <font  color="green">**MIPI_DSI_TX1_D2N**</font>  |                                                    |
| 194  | **B connector_94**  |  <font  color="green">**MIPI_DSI_TX1_D3N**</font>  |                                                    |
| 195  | **B connector_95**  |  <font  color="green">**MIPI_DSI_TX1_D2P**</font>  |                                                    |
| 196  | **B connector_96**  |  <font  color="green">**MIPI_DSI_TX1_D3P**</font>  |                                                    |
| 197  | **B connector_97**  |        <font  color="purple">**GND**</font>        |                                                    |

| **198** | **B connector_97**  | **<font  color="purple">GND</font>** |                                          |
| :-----: | :-----------------: | :----------------------------------: | :--------------------------------------: |
| **199** | **B connector_99**  | **<font  color="green">HSDA</font>** | **<font  color="green">HDMI I2C</font>** |
| **200** | **B connector_100** | **<font  color="green">HSCL</font>** | **<font  color="green">HDMI I2C</font>** |

## **接口介绍**

### SW1 按键说明

SW1按住会将eMMC信号线与GND短路，禁止主控与eMMC通信。

<img src=img/CB2/CB2_Interface1.webp width="600" />

<img src=img/CB2/CB2_Interface2.webp width="600" />

### 40 pin GPIO

<img src=img/Pi2/Pi2_GPIO.webp width="1200" />

GPIO 引脚的计算方式如下：

GPIO4_B2 = (‘B’ - ‘A’) * 8 + 2 = 1 * 8 + 2 = gpiochip4/gpio10

GPIO3_D7 = (‘D’ - ‘A’) * 8 + 7 = 3 * 8 + 7 = gpiochip3/gpio31

## **烧录系统**

### 下载系统镜像

只能下载安装我们提供的系统镜像： https://github.com/bigtreetech/CB2/releases

### 烧录系统到 MicroSD 卡

1、下载 balenaEtcher（https://www.balena.io/etcher/）软件，安装并运行。

2、将 Micro SD 卡通过读卡器插入到电脑。

3、选择下载到电脑中的镜像。

<img src=img/CB2/CB2_System1.webp width="600" />

4、选择待烧录的 Micro SD 卡（烧录镜像会将 Micro SD 卡格式化，千万注意不要选错盘符，否则会将其他存储上的数据格式化），点击“烧录”

<img src=img/CB2/CB2_System2.webp width="600" />

5、等待烧录完成

<img src=img/CB2/CB2_System3.webp width="600" />

### 烧录系统到 eMMC

使用 RKDevTool (Windows) 烧录系统到 eMMC 

下载 RKDevTool 到电脑上并解压。并且注意不要插 MicroSD 卡。

https://github.com/bigtreetech/CB2

1、将拨码开关的 4（USBOTG）、3（RPIBOOT）拨到 ON 进入 BOOT 模式

<img src=img/CB2/CB2_System4.webp width="600" />

2、然后用 Type-C 线插到电脑上。

3、安装驱动

​	①在“设备管理器”中，如果发现“未知设备”意味着电脑缺少驱动

<img src=img/CB2/CB2_System5.webp width="600" />

​	② 打开下载的 RKDevTool 中的 DriverAssitant 工具，先点击“①驱动卸载”，再点击“②驱动安装”，这样可以保证安装的驱动为最新版本的。

<img src=img/CB2/CB2_System6.webp width="600" />

 ③等待安装完成后，按住“Recovery”键，重新拔插一下 Type-C 线，“设备管理器”会识别出“Rockusb Device”，意味着驱动已经安装成功

<img src=img/CB2/CB2_System7.webp width="600" />

​	④打开“RKDevTool”软件

<img src=img/CB2/CB2_System8.webp width="600" />

注意：软件中的参数默认如图所示，正常情况下仅需要设置④“.img 系统实际的路径”即可。如果您软件中的参数与图中不一致，请手动修改为一致。

<img src=img/CB2/CB2_System9.webp width="600" />

①找到下载的工具所在的路径

②打开 RKDevTool 工具

③软件会识别出一个“LOADER”或者“MASKROOM”的设备

④选择要烧录的系统（系统镜像需要提前解压为.img 文件，此工具不支持直接烧录压缩后的.xz 文件）

⑤勾选“Write by Address”

⑥点击“Run”，开始烧录系统

⑦“Download image OK”意味着系统已经烧录成功

5、烧录完成后，请将 USB OTG 的拨码开关拨到 OFF 挡位，此时即可正常开机使用了。注意：eMMC 内的文件无法像 MicroSD 卡那样直接被电脑访问，所以无法通过修改 system.cfg 配置文件的方式配置 WiFi 网络，只能用网线或者 USB 转 UART连接终端，然后通过终端配置。

### 使用 MicroSD 卡烧录系统到 eMMC

1、先将系统烧录到 MicroSD 卡中，然后将 MicroSD 卡插到主板的卡槽，然后等待系统启动。

2、通过网线，WiFi 或者 USB 转 UART 连接到系统的终端，登录系统。

login: `biqu`

password: `biqu`

①运行 sudo nand-sata-install 命令，在弹出的界面中，选择 “2 Boot 

From eMMC - system on eMMC”, 然后选择 “OK”

<img src=img/CB2/CB2_System10.webp width="600" />

②选择 “Yes”，开始擦除并烧录系统到 eMMC

<img src=img/CB2/CB2_System11.webp width="600" />

③选择文件系统为 “1 ext4”，然后选择 “OK”

<img src=img/CB2/CB2_System12.webp width="600" />

④等待烧录完成

<img src=img/CB2/CB2_System13.webp width="600" />

⑤烧录完成后会弹窗提示是否关机，选择“Power off”关机

<img src=img/CB2/CB2_System14.webp width="600" />

⑥关机后断电，然后拔出 MicroSD 卡，重新再通电即可从 eMMC 启动

### 擦除 eMMC

当不使用 eMMC，而使用 MicroSD 卡作为系统卡时，最好将 eMMC 的数据擦除，以免主板错误的从 eMMC 启动。

#### 使用 RKDevTool 擦除 eMMC (Windows)

1、参照“**4.3.1 使用 RKDevTool 烧录系统到 eMMC**”中的步骤，将主板连接到电脑

2、打开“RKDevTool”软件

<img src=img/CB2/CB2_System15.webp width="600" />

①找到下载的工具所在的路径

②打开 RKDevTool 工具

③软件会识别出一个“LOADER”的设备，如果是“MASKROOM”则说明 eMMC中没有数据，不需要擦除

④点击“Advanced Function”

⑤点击“EraseAll”开始擦除 eMMC 中的数据

⑥“Erasing sectors success”擦除完成

#### 从 MicroSD 卡启动系统后擦除 eMMC

1、参照“**4.3.2 使用 MicroSD 卡烧录系统到 eMMC**”中的步骤，登录到系统终端

2、运行 sudo mkfs /dev/mmcblk1 命令，然后输入“y”确认。

<img src=img/CB2/CB2_System16.webp width="600" />

## **系统配置**

### 使用网线

网线即插即用，不需要额外的设置

### 设置 WiFi

系统镜像烧录完成后，MicroSD 卡会有一个被电脑识别的 FAT32 分区，此分区下有个名为"system.cfg" 的配置文件，打开后将 Your SSID 替换为实际的 WIFI 名称，Your Password 替换为实际的密码

<img src=img/CB2/CB2_System17.webp width="600" />

### 配置 overlays

打开 BOOT 分区下的 armbianEnv.txt 文件,设置 overlays 的值。配置文件中同一时间仅支持打开一行 overlays，如果打开了多行 overlays 的配置，只会生效最后一行的配置。如果有打开多个 overlays 配置的需求，可以将多个配置的内容放在同一行overlays 后面，并且多个配置中间用一个空格隔开。例如我们需要同时使用 DSI 屏幕、mcp2515 SPI 转 CAN 模块，和 I2C1：

overlays=dsi mcp2515 i2c1

<img src=img/CB2/CB2_System18.webp width="600" />

### 配置显示屏

1、打开 BOOT 分区下的 armbianEnv.txt 文件

<img src=img/CB2/CB2_System19.webp width="600" />

2、overlays 默认设置为 hdmi，代表系统默认使用 hdmi 屏幕。可以将其修改为实际使用的屏幕，可设置的选项如下：

· "hdmi": [HDMI 接口的屏幕](https://biqu.equipment/collections/lcd/products/bigtreetech-hdmi5-v1-0-hdmi7-v1-0)

· "dsi": [DSI接口的屏幕](https://biqu.equipment/collections/lcd/products/bigtreetech-pi-tft43-v2-0-screen-board)

· "tft_35": [SPI 接口 3.5 寸屏幕](https://biqu.equipment/collections/lcd/products/bigtreetech-tft35-spi-v2-1-touchscreen-io2can-module)

· 

其中“tft_35”还有一个参数“tft35_spi_rotate”在系统级旋转显示界面，默认的“0”代表不旋转，可使用的参数还有“90”，“180”，“270”。

**注意：**屏幕只能选择使用其中的一个，无法同时使用多个屏幕

3、设置 KlipperScreen，打开 BOOT 分区下的 system.cfg 文件，设置屏幕的类`ks_src`，和旋转角度`ks_angle`

<img src=img/CB2/CB2_System20.webp width="600" />

### SPI 转 CAN 的使用

打开 BOOT 分区下的 armbianEnv.txt 文件，将“mcp2515”添加到 overlays 的配置中

<img src=img/CB2/CB2_System21.webp width="600" />

### CSI 相机使用及 crowsnest 配置

无论是 rpi v1.3 的 ov5647 还是 rpi v2 的 imx219 均不需要在 armbianEnv.txt 文件中配置 overlays，即插即用。

crowsnest.conf 文件中的配置如下图所示：

<font  color="blue">**device: /dev/video0**</font> # CSI 相机的节点固定为 video0

<font  color="blue">**custom_flags: --format=UYVY**</font> # 当前系统 CSI 相机不支持默认的 YUYV，需要设置为支持的 UYVY 格式

<img src=img/CB2/CB2_System22.webp width="600" />

### 蓝牙的使用

1、扫描蓝牙设备，输入如下命令，出现如下列表的蓝牙设备，如下图

<font  color="blue">**bluetoothctl --timeout 15 scan on**</font>

<img src=img/CB2/CB2_System23.webp width="600" />

2、找到自己的蓝牙设备，比如我的蓝牙设备名字是 HONOR xSport PRO，在设备列表中找到对应的蓝牙 MAC ID 如下图

<img src=img/CB2/CB2_System24.webp width="600" />

3、连接蓝牙设备，输入如下命令，连接成功如下图

<font  color="blue">**bluetoothctl connect E0:9D:FA:50:CD:4F**</font>

<img src=img/CB2/CB2_System25.webp width="600" />

①若出现如下图输出，请重新打开蓝牙设备，然后重新按 1 和 2 的步骤连接蓝牙设备

<img src=img/CB2/CB2_System26.webp width="600" />

②若如下图输出，请输入如下命令，然后重新进行 1 和 2 步骤

<font  color="blue">**bluetoothctl remove E0:9D:FA:50:CD:4F**</font> <font  color="red">**(您的蓝牙设备对应的MAC ID)**</font>

<font  color="blue">**rfkill block bluetooth**</font>

<font  color="blue">**sleep 3s**</font>

<font  color="blue">**rfkill unblock bluetooth**</font>

<font  color="blue">**pulseaudio -k**</font>

<font  color="blue">**pulseaudio –start**</font>

<img src=img/CB2/CB2_System27.webp width="600" />

4、 蓝牙使用中途退出语音播放功能，如果不能再次使用蓝牙，需要手动删除对应的播放进程，用 ps 命令查看播放的进程号，然后用 kill -9 进程号 删除对应的播放进程。如下图所示

<img src=img/CB2/CB2_System28.webp width="600" />

### 3.5mm 圆口耳机设置

1、输入命令: <font  color="blue">**aplay -l**</font>

查看对应的声卡，如下图所示：（由图所示耳机口的声卡对应的是 <font  color="blue">**card 0**</font>).

<img src=img/CB2/CB2_System29.webp width="600" />

2、输入命令:

<font  color="blue">**amixer -c 0 contents **</font>**(0 表示的上述的 <font  color="blue">**aplay -l**</font> 所找到的 card 0)**

查看播放通道和录音通道设置，如下图所示：

<img src=img/CB2/CB2_System30.webp width="600" />

3、输入命令：

<font  color="blue">**amixer -c 0 cset numid=1 3**</font>

设置播放通道，如下图所示：

<img src=img/CB2/CB2_System31.webp width="600" />

4、输入命令:

<font  color="blue">**amixer -c 0 cset numid=2 1**</font>

设置录音通道，如下图所示

<img src=img/CB2/CB2_System32.webp width="600" />

5、输入如下命令播放音频，音频文件目录 xxx 加音频文件名 xxxxx.wav

<font  color="blue">**aplay -D plughw:0,0 /xxx/xxxxx.wav**</font>

6、输入如下命令录音（其中 10 表示录音 10 秒），录音存放的目录是 xxx，文件名 xxxx.wav:

<font  color="blue">**sudo arecord -Dhw:0,0 -d 10 -f cd -r 44100 -c 2 -t wav /xxx/xxxx.wav**</font>

7、输入如下命令播放录音:

<font  color="blue">**aplay -D plughw:0,0 /xxx/xxxx.wav**</font>

## **SSH 连接设备**

1、安装 ssh 软件 Mobaxterm: https://mobaxterm.mobatek.net/download-home-edition.html

2、通电后等待系统启动，大概 1~2 分钟

3、设备连上 WIFI 或者插上网线后，会被自动分配一个 IP

4、进入路由器管理界面找到设备的 IP（这里应为 BTT-CB2）

<img src=img/CB2/CB2_System33.webp width="600" />

5、打开已经安装的 Mobaxterm 软件，点击“Session”，在弹出的窗口中点击“SSH”，在 Remote host 一栏中输入设备的 IP 地址，点击“OK”（注意：电脑和设备必须要在同一个局域网下）

<img src=img/CB2/CB2_System34.webp width="600" />

6、输入登录名和登录密码进入 SSH 终端界面

登录名 login as：`biqu`

密码：`biqu`

<img src=img/CB2/CB2_System35.webp width="600" />

## **注意事项**

1、上电后大概 10s 左右，系统进入 kernel 阶段。此时 power 灯常亮，act 灯会不断的闪烁，代表系统在正常运行

2、root 管理员:

​		Login: `root`

​		Password: `root`



​	biqu 普通用户:

​		Login: `biqu`

​		Password: `biqu`

3、PCIe M.2 接口不支持热插拔，需要预先插上固态硬盘才能识别到设备。

4、使用 eMMC 启动时，不要插 MicroSD 卡。使用 MicroSD 卡启动时，需要将 eMMC 中的数据擦除。



