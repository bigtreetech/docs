# CB1

[<img src=img/CB1.webp width="600" />](https://bigtreetech.github.io/docs/CB1.html)

## **产品简介**

<p>BIGTREETECH CB1 是针对树莓派 CM4 缺货问题推出的替代方案,所有输出信号采用 2 个 100PIN
微型 BTB 高速连接座与外面扩展底板方便快速连接(包括百兆以太网、HDMI 等)，板载 2.4G 
WIFI。<br></p>

## **功能亮点**

* CPU: 全志 H616，四核 Cortex-A53 @1.5GHz
* GPU: Mali G31 MP2, 支持 OpenGL3.2
* RAM: 512MB/1GB DDR3L SDRAM
* 显示: HDMI2.0A 接口，支持 4K 显示器
* USB2.0 端口
* 百兆以太网+百兆 WIFI
* 与树莓派 CM4 完全相同的 BTB 座子

## **规格**

| **外观尺寸** | **40mm*55mm**         |
| ------------ | --------------------- |
| **安装尺寸** | **33mm*48mm**         |
| **输入电压** | **5V±5%/2A**          |
| **输出电压** | **3.3V±2%/100mA**     |
| **输出电压** | **1.8V±2%/100mA**     |
| **WIFI**     | **2.4G/802.11 b/g/n** |

## **产品尺寸**

**<img src=img/CB1_Size.webp width="600" />**

## **原理图**

**[BIGTREETECH_CB1_V22_220812_SCH](https://raw.githack.com/bigtreetech/docs/master/docs/download/BIGTREETECH_CB1_V22_220812_SCH.pdf)**

## **外设接口**

### **40 pin GPIO**

**当CB1与Manta M4P、M5P、M8P、PI4B_Adapter等主板一起使用时，主板上的40引脚GPIO**

| **引脚** | **信号** | **描述**               | **引脚** | **信号** | **描述**              |
| -------- | -------- | ---------------------- | -------- | -------- | --------------------- |
| **1**    | **3.3V** |                        | **2**    | **5V**   |                       |
| **3**    | **NC**   |                        | **4**    | **5V**   |                       |
| **5**    | **NC**   |                        | **6**    | **GND**  |                       |
| **7**    | **PC7**  | **GPIO71**             | **8**    | **PH0**  | **GPIO224, UART0_TX** |
| **9**    | **GND**  |                        | **10**   | **PH1**  | **GPIO225, UART0_RX** |
| **11**   | **PC14** | **GPIO78**             | **12**   | **PC13** | **GPIO77**            |
| **13**   | **PC12** | **GPIO76**             | **14**   | **GND**  |                       |
| **15**   | **PC10** | **GPIO74**             | **16**   | **PC11** | **GPIO75**            |
| **17**   | **3.3V** |                        | **18**   | **PC9**  | **GPIO73**            |
| **19**   | **PH7**  | **GPIO231, SPI1_MOSI** | **20**   | **GND**  |                       |
| **21**   | **PH8**  | **GPIO232, SPI1_MISO** | **22**   | **NC**   |                       |
| **23**   | **PH6**  | **GPIO230, SPI1_CLK**  | **24**   | **NC**   |                       |
| **25**   | **GND**  |                        | **26**   | **PG8**  | **GPIO200**           |
| **27**   | **NC**   |                        | **28**   | **PG7**  | **GPIO199**           |
| **29**   | **NC**   |                        | **30**   | **GND**  |                       |
| **31**   | **PG6**  | **GPIO198**            | **32**   | **PG9**  | **GPIO201**           |
| **33**   | **NC**   |                        | **34**   | **GND**  |                       |
| **35**   | **PC6**  | **GPIO70**             | **36**   | **NC**   |                       |
| **37**   | **PC15** | **GPIO79**             | **38**   | **PH10** | **GPIO234, IR_RX**    |
| **39**   | **GND**  |                        | **40**   | **PC8**  | **GPIO72**            |

### **2 * 100 pins**

| **A 引脚** | **信号**     | **描述**         | **A 引脚** | **信号**     | **描述**              |
| ---------- | ------------ | ---------------- | ---------- | ------------ | --------------------- |
| **1**      | **GND**      |                  | **2**      | **GND**      |                       |
| **3**      | **NC**       |                  | **4**      | **EPHY-TXP** | **以太网TX正极**      |
| **5**      | **NC**       |                  | **6**      | **EPHY-TXN** | **以太网TX负极**      |
| **7**      | **GND**      |                  | **8**      | **GND**      |                       |
| **9**      | **NC**       |                  | **10**     | **EPHY-RXP** | **以太网RX正极**      |
| **11**     | **NC**       |                  | **12**     | **EPHY-RXN** | **以太网RX负极**      |
| **13**     | **GND**      |                  | **14**     | **GND**      |                       |
| **15**     | **LINK_LED** | **以太网灯**     | **16**     | **NC**       |                       |
| **17**     | **SPD_LED**  | **以太网灯**     | **18**     | **NC**       |                       |
| **19**     | **NC**       |                  | **20**     | **NC**       |                       |
| **21**     | **PH5**      | **信号灯(ACT)**  | **22**     | **GND**      |                       |
| **23**     | **GND**      |                  | **24**     | **PC15**     |                       |
| **25**     | **PC8**      |                  | **26**     | **PC6**      |                       |
| **27**     | **PH10**     |                  | **28**     | **NC**       |                       |
| **29**     | **NC**       |                  | **30**     | **PG6**      |                       |
| **31**     | **PG9**      |                  | **32**     | **GND**      |                       |
| **33**     | **GND**      |                  | **34**     | **NC**       |                       |
| **35**     | **PG7**      |                  | **36**     | **NC**       |                       |
| **37**     | **PG8**      |                  | **38**     | **PH6**      |                       |
| **39**     | **NC**       |                  | **40**     | **PH8**      |                       |
| **41**     | **NC**       |                  | **42**     | **GND**      |                       |
| **43**     | **GND**      |                  | **44**     | **PH7**      |                       |
| **45**     | **PC9**      |                  | **46**     | **PC10**     |                       |
| **47**     | **PC11**     |                  | **48**     | **PC12**     |                       |
| **49**     | **PC13**     |                  | **50**     | **PC14**     |                       |
| **51**     | **SoC_RX**   | **调试 UART**    | **52**     | **GND**      |                       |
| **53**     | **GND**      |                  | **54**     | **PC7**      |                       |
| **55**     | **SoC_TX**   | **调试 UART**    | **56**     | **NC**       |                       |
| **57**     | **SDC0-CLK** | **MicroSD Card** | **58**     | **NC**       |                       |
| **59**     | **GND**      |                  | **60**     | **GND**      |                       |
| **61**     | **SDC0-D3**  | **MicroSD Card** | **62**     | **SDC0-CMD** | **MicroSD Card**      |
| **63**     | **SDC0-D0**  | **MicroSD Card** | **64**     | **PG11**     |                       |
| **65**     | **GND**      |                  | **66**     | **GND**      |                       |
| **67**     | **SDC0-D1**  | **MicroSD Card** | **68**     | **PG12**     |                       |
| **69**     | **SDC0-D2**  | **MicroSD Card** | **70**     | **PG13**     |                       |
| **71**     | **GND**      |                  | **72**     | **PG14**     |                       |
| **73**     | **PG16**     |                  | **74**     | **GND**      |                       |
| **75**     | **NC**       |                  | **76**     | **PI16**     | **MicroSD Card 检测** |
| **77**     | **5V**       |                  | **78**     | **NC**       |                       |
| **79**     | **5V**       | **In 2A**        | **80**     | **NC**       |                       |
| **81**     | **5V**       | **In 2A**        | **82**     | **NC**       |                       |
| **83**     | **5V**       | **In 2A**        | **84**     | **3.3V**     | **Out 200mA**         |
| **85**     | **5V**       | **In 2A**        | **86**     | **3.3V**     | **Out 200mA**         |
| **87**     | **5V**       | **In 2A**        | **88**     | **1.8V**     | **Out 100mA**         |
| **89**     | **NC**       |                  | **90**     | **1.8V**     | **Out 100mA**         |
| **91**     | **NC**       |                  | **92**     | **PWRON**    |                       |
| **93**     | **FEL**      |                  | **94**     | **NC**       |                       |
| **95**     | **NC**       |                  | **96**     | **NC**       |                       |
| **97**     | **NC**       |                  | **98**     | **GND**      |                       |
| **99**     | **Recovery** |                  | **100**    | **Reset**    |                       |

| **B 引脚** | **信号**    | **描述**        | **B 引脚** | **信号**      | **描述**          |
| ---------- | ----------- | --------------- | ---------- | ------------- | ----------------- |
| **101**    | **NC**      |                 | **102**    | **NC**        |                   |
| **103**    | **USB1-DM** | **Host USB1**   | **104**    | **LineOut L** |                   |
| **105**    | **USB1-DP** | **Host USB1**   | **106**    | **LineOut R** |                   |
| **107**    | **GND**     |                 | **108**    | **GND**       |                   |
| **109**    | **NC**      |                 | **110**    | **NC**        |                   |
| **111**    | **TV_OUT**  | **CVBS OUT**    | **112**    | **NC**        |                   |
| **113**    | **GND**     |                 | **114**    | **GND**       |                   |
| **115**    | **NC**      |                 | **116**    | **NC**        |                   |
| **117**    | **NC**      |                 | **118**    | **NC**        |                   |
| **119**    | **GND**     |                 | **120**    | **GND**       |                   |
| **121**    | **NC**      |                 | **122**    | **NC**        |                   |
| **123**    | **NC**      |                 | **124**    | **NC**        |                   |
| **125**    | **GND**     |                 | **126**    | **GND**       |                   |
| **127**    | **NC**      |                 | **128**    | **USB3-DM**   | **Host USB3**     |
| **129**    | **NC**      |                 | **130**    | **USB3-DP**   | **Host USB3**     |
| **131**    | **GND**     |                 | **132**    | **GND**       |                   |
| **133**    | **NC**      |                 | **134**    | **USB2-DM**   | **Host USB2**     |
| **135**    | **NC**      |                 | **136**    | **USB2-DP**   | **Host USB3**     |
| **137**    | **GND**     |                 | **138**    | **GND**       |                   |
| **139**    | **NC**      |                 | **140**    | **USB0-DM**   | **OTG USB**       |
| **141**    | **NC**      |                 | **142**    | **USB0-DP**   | **OTG USB**       |
| **143**    | **NC**      |                 | **144**    | **GND**       |                   |
| **145**    | **NC**      |                 | **146**    | **NC**        |                   |
| **147**    | **NC**      |                 | **148**    | **NC**        |                   |
| **149**    | **NC**      |                 | **150**    | **GND**       |                   |
| **151**    | **HCEC**    | **HDMI CEC**    | **152**    | **NC**        |                   |
| **153**    | **HHPD**    | **HDMI 热插拔** | **154**    | **NC**        |                   |
| **155**    | **GND**     |                 | **156**    | **GND**       |                   |
| **157**    | **NC**      |                 | **158**    | **NC**        |                   |
| **159**    | **NC**      |                 | **160**    | **NC**        |                   |
| **161**    | **GND**     |                 | **162**    | **GND**       |                   |
| **163**    | **NC**      |                 | **164**    | **NC**        |                   |
| **165**    | **NC**      |                 | **166**    | **NC**        |                   |
| **167**    | **GND**     |                 | **168**    | **GND**       |                   |
| **169**    | **NC**      |                 | **170**    | **HTX2P**     | **HDMI TX2 正极** |
| **171**    | **NC**      |                 | **172**    | **HTX2N**     | **HDMI TX2 负极** |
| **173**    | **GND**     |                 | **174**    | **GND**       |                   |
| **175**    | **NC**      |                 | **176**    | **HTX1P**     | **HDMI TX1 正极** |
| **177**    | **NC**      |                 | **178**    | **HTX1N**     | **HDMI TX1 负极** |
| **179**    | **GND**     |                 | **180**    | **GND**       |                   |
| **181**    | **NC**      |                 | **182**    | **HTX0P**     | **HDMI TX0 正极** |
| **183**    | **NC**      |                 | **184**    | **HTX0N**     | **HDMI TX0 负极** |
| **185**    | **GND**     |                 | **186**    | **GND**       |                   |
| **187**    | **NC**      |                 | **188**    | **HTXCP**     | **HDMI CLK 正极** |
| **189**    | **NC**      |                 | **190**    | **HTXCN**     | **HDMI CLK 负极** |
| **191**    | **GND**     |                 | **192**    | **GND**       |                   |
| **193**    | **NC**      |                 | **194**    | **NC**        |                   |
| **195**    | **NC**      |                 | **196**    | **NC**        |                   |
| **197**    | **GND**     |                 | **198**    | **GND**       |                   |
| **199**    | **HSDA**    | **HDMI I2C**    | **200**    | **HSCL**      | **HDMI I2C**      |

## **软件配置**

### **配置网络**

#### **使用网线**

**网线即插即用，不需要额外的设置**

#### **WiFi Settings**

**系统镜像烧录完成后，Micro SD 卡会有一个被电脑识别的 FAT32 分区，此分区下有个名为"system.cfg" 的配置文件**
**<img src=img/system.webp width="600" /><br/>**

**用记事本打开，将 WIFI-SSID 替换为实际的 WIFI 名称，PASSWORD 替换为实际的密码**
**例如: `WIFI_SSID="CB1 Tester"`**
**<img src=img/wifi.webp width="600" /><br/>**

### **Overlays Settings**

**操作系统写入SD卡后，有一个名为“BOOT”的FAT32分区，用“Notpad”、“Notpad++”或“VSCode”打开“BoardEnv.txt”文件。 <br/><img src=img/BoardEnv.webp width="600" /><br/>**

**根据需要进行设置，如下图所示。 <br/><img src=img/overlays.webp width="600" /><br/>**

**默认值为“console=display”，这意味着CB1的“UART0”默认用作调试端口。我们可以使用“MobaXterm”通过UART0连接到CB1并进行调试。如果klipper想要使用`UART0`来控制主板，我们需要将其设置为`console=serial`，现在klippe可以将`UART0'用作`/dev/ttyS0`。**

**CB1会自动识别HDMI分辨率，但如果您的HDMI屏幕无法正常通过EDID报告分辨率，我们可以通过取消注释extraargs=video来强制指定CB1输出的分辨率，并设置实际分辨率。**
**比如:<br/>**
**BTT-HDMI7 resolution = 1024x600: `extraargs=video=HDMI-A-1:1024x600-24@60`<br/>**
**BTT-HDMI5 resolution = 800x480: `extraargs=video=HDMI-A-1:800x480-24@60`<br/>**

**取消注释 `overlays=tft35_spi` 以启用tft35 spi屏幕。**

**取消注释 `overlays=mcp2515` 以启用mcp2515 spi到canbus模块。**

**取消注释 `overlays=tft35_spi mcp2515` 如果要同时使用tft35 spi屏幕和mcp2515 spi到can总线模块。**

**取消注释以下覆盖和参数以将“spidev1.1”释放到用户空间，并且“spidev1.1'不能与TFT35_SPI和MCP2515一起使用。**

```
 overlays=spi-spidev
 param_spidev_spi_bus=1
 param_spidev_spi_cs=1
 param_spidev_max_freq=1000000
```

**注：TFT35 SPI和MCP2515多路复用一组SPI1**

```
SPI1_CLK=PH6
SPI1_MISO=PH8
SPI1_MOSI=PH7
TFT35_SPI_CS=PC7
MCP2515_CS=PC11
MCP2515_IRQ=PC9
```

### **SSH 连接**

**安装 ssh 软件 Mobaxterm： https://mobaxterm.mobatek.net/download-home-edition.html**

**将Micro SD卡（已安装的操作系统）插入主板，等待系统通电后加载。1-2分钟。主板上的ACT LED在成功启动后会持续闪烁。**

**设备连上 WIFI 或者插上网线后，会被自动分配一个 IP**

**进入路由器管理界面找到设备的 IP**
**<img src=img/Router.webp width="600" /><br/>** 

**或者使用https://angryip.org/工具，扫描当前网络中的所有IP地址，按名称组织，找到名为Hurakan、BTT-CB1的IP，如下所示**
**<img src=img/AngryIP.webp width="600" /><br/>** 

**打开已经安装的 Mobaxterm 软件，点击“Session”，在弹出的窗口中点击“SSH”，在Remote host 一栏中输入设备的 IP 地址，点击“OK”（注意：电脑和设备必须要在同一个局域网下）**
**<img src=img/MobaXterm_Login.webp width="600" /><br/>** 

**输入登录名和登录密码进入 SSH 终端界面**

* **login as: biqu**
* **password: biqu**

## **软件安装**

1. **下载系统镜像**

​		**只能下载安装我们提供的系统镜像： https://github.com/bigtreetech/CB1/releases**

2. **下载并安装烧录软件**

​		**树莓派官方的 Raspberry Pi Imager： https://www.raspberrypi.com/software/**

​		**balenaEtcher: https://www.balena.io/etcher/<br/>**

​		**以上两种软件都可以使用，任选一种下载安装即可。**

3. **格式化SD卡**

​		**通常，您可以使用计算机系统提供的工具格式化SD卡。使用专业的SD卡格式化软件完全格式化SD卡。 https://www.sdcard.org/downloads/formatter/**

4. **烧录系统**

5. **使用 Raspberry Pi Imager**

​		**将 Micro SD 卡通过读卡器插入到电脑。**

​		**选择系统**

**<img src=img/RPI_Imager_1.webp width="600"/><br/>**

**选择“用户自定义”，然后选择下载到电脑中的镜像 <br/><img src=img/RPI_Imager_2.webp width="600"/><br/>**

**选择待烧录的 Micro SD 卡（烧录镜像会将 Micro SD 卡格式化，千万注意不要选错盘符，否则会将其他存储上的数据格式化），点击“烧录” <br/><img src=img/RPI_Imager_3.webp width="600"/><br/>**

**等待烧录完成 <br/><img src=img/RPI_Imager_4.webp width="600"/><br/>**

6. **使用 balenaEtcher**

​	**将 Micro SD 卡通过读卡器插入到电脑。**

​	**选择下载到电脑中的镜像 <br/><img src=img/Etcher_1.webp width="600"/><br/>**

**选择待烧录的 Micro SD 卡（烧录镜像会将 Micro SD 卡格式化，千万注意不要选错盘符，否则会将其他存储上的数据格式化），点击“烧录” <br/><img src=img/Etcher_2.webp width="600"/><br/>**

​	**等待烧录完成 <br/><img src=img/Etcher_3.webp width="600"/><br/>**



## **产品购买链接**

**购买链接:**

**https://biqu.equipment/products/pi4b-adapter-v1-0?variant=40353646051426**



**如果您对产品有任何问题，请与我们联系并提交支持工单**

**https://biqu3d.com/pages/submit-a-ticket**



**导航:**

**BIQU官方网站：                            							  http://biqu3d.com**

**BIGTREETECH官方网站：            				 			 http://bigtree-tech.com**

**网上商店：                                          				 		https://biqu.equipment**

**BIGTREETECH官方群: 								  			  https://www.facebook.com/groups/bigtreetech**

**Discord: 																	   https://discord.gg/hhZsV7zk**

**Reddit:																		  https://www.reddit.com/r/BIGTREETECH/**

**微信公众号：																BIGTREETECH** 

**官方社群：**

**1群：																			190180312（已满）**

**2群：																			633401944**

**微信社群：																   关注微信公众号获取社群二维码**

**资料获取由微信公众号提供，关注公众号发送及消息即可获取（网盘链接）**
