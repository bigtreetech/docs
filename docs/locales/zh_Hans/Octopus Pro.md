# Octopus Pro

<img src=img/Octopus_Pro/Octopus_Pro_Title.png width="600"/>

## **介绍**

BIGTREETECH Octopus pro V1.0由深圳市必趣科技有限公司3D打印团队设计制造，是一款功能强大、功能丰富的3D打印机主板，最多支持8个60V步进驱动器，总共9个步进驱动器输出。

## **主要特点**

- 使用32位ARM Cortex-M4系列。选项A配备STM32F446ZET6主控芯片，核心频率为180MHz，闪存容量为512kB。选项B配备STM32F429ZGT6，核心频率为168MHz，闪存容量为1MB。对于Klipper的使用，选项A可能就足够了。
- 支持Klipper、Marlin和RRF的运行。
- 每个电机驱动器的电压选择跳线允许用户独立选择输送到该驱动器的电压。在专用电机电压输入（最高60V）和主逻辑输入（24V）之间进行选择。
- 使用USB模拟串行接口或直接UART与板上的任何串行端口进行Raspberry Pi接口。
- 最多支持4个加热棒。
- 为电机、床加热和逻辑/风扇/热端提供单独的电源输入。
- 支持12V或24V电源输入（12V仅在电机和热床上支持。逻辑必须大于14.1V和小于28V），内置12V（4A）、5V（8A）和3.3V（1A）调节器，为外围设备提供导轨。
- 最多6个PWM风扇和2个常开风扇，能够单独选择驱动每个风扇的电压轨。从Vin、12V或5V中进行选择。
- PWM风扇端口上的反飞保护–许多人在使用更大的风扇一段时间后发现他们的风扇端口会损坏。这是因为风扇线圈中的电感。Octopus在每个风扇端口上都有反激保护，可以保护FET免受风扇开关造成的损坏。
- 包括USB-C接口，支持通过USB打印的模拟串行端口。
- 支持所有版本的BIGTREETECH TFT屏幕和LCD12864屏幕。
- 支持多种语言，如英语和简体中文，并且可以在不同语言之间轻松切换（使用BTT TFT时）。
- 包括一个引导加载程序，允许通过SD卡进行固件升级。这提供了一种简单、高效和方便的方式来更新固件。
- 使用高性能MOSFET提高加热效率，同时减少主板上的热量产生。
- 使用易于更换的保险丝。
- 支持使用集成USB-A端口“从SD卡打印”和“通过USB OTG打印”。
- 提供两个并联的步进器输出到Z驱动器，从而实现并联双Z轴驱动。
- 支持通过DFU模式进行固件更新。这是固件直接从PC发送到板的地方，不需要引导加载程序，但不建议新手用户使用此方法，如本文档稍后所述。
- 包括一个板载32K EEPROM（AT24C32）。
- 提供RGB LED接口。
- 为基于ESP8266的模块提供WiFi接口。
- 使用集成MAX31865放大器提供内置PT100/1000接口。接口支持2/3/4接线。
- 热敏电阻输入保护。这允许您将热敏电阻输入直接短接到电压源（这不是一个好习惯），直到Vin，而不会对主板造成损坏。
- 支持BL Touch和各种其他ABL传感器
- 为床探头提供专用的“PROBE”端口。该端口通过光耦进行内部保护，这意味着您不需要使用BAT85二极管。此外，octopus pro在探针端口上包括一个上拉电阻器，可以使用跳线进行选择或停用。这使其能够与NPN和PNP型探针一起工作。
- 支持使用6P6C RJ11接口的CAN总线，这为板提供了与未来扩展模块接口的能力。
- 支持StallGuard与TMC驱动器实现无传感器归位
- 提供SPI扩展端口，可连接基于SPI的扩展模块。
- 支持打印后关机功能。
- 支持断电打印恢复功能。
- 包括最多6个端部停止开关和2个断料检测接口的输入。
- 为使用该协议进行通信的外围设备提供I2C扩展端口。
- 包括一个短路警告蜂鸣器，当5V导轨上的电流负载超过调节器所能产生的电流时，该蜂鸣器将发出声音警报。

## **基本参数**

- 边缘到边缘尺寸：160*100mm
- 安装孔对孔尺寸：150*90mm
- 微处理器：ARM 32位Cortex™-M4 CPU:STM32F446ZET6或STM32F429ZGT6
- 建议主板输入电压：DC15V–28V
- 电机输入电压范围：DC12-60V
- 热床输入电压范围：DC12-28V
- 电机驱动器：可插拔驱动器，支持所有流行的驱动器类型。
- 电机驱动插座：Motor0，Motor1，Motor2_1，Motor2_2，Motor3，Motor4，Motor5，Motor6，Motor7
- 温度传感器接口：TB、T0、T1、T2、T3
- 显示接口：BIGTREETECH TFT触摸屏、LCD12864、LCD2004等
- PC通信接口：USB Type-C，可配置BAUD
- 扩展接口：断料检测、功率损耗检测、自动断电、BL触摸等。
- 支持的打印文件格式：G代码或正在使用的固件支持的任何格式。
- 推荐切片/接口软件：Cura、IdeaMaker、Simplify3D、Prusa切片器、Pronterface、Repetier主机、Makerware等…

## **尺寸**

<img src=img/Octopus_Pro/Octopus_Pro_Dimension.png width="600"/>

## **接口示意图**

<img src=img/Octopus_Pro/Octopus_Pro_CAD.png width="600"/>

## **引出线**

下图是从PINS.pdf文档中截取的片段。要获得更好的可视性，请参阅PINS.pdf文档。

<img src=img/Octopus_Pro/Octopus_Pro_Pin.png width="600"/>

## **硬件配置**

<font  color="red">***注意：octopus-pro包含大量功能，需要许多组件和连接器。考虑到组件和连接器密度，不可能在顶部包括连接器标签的丝网。我们建议您在开始之前先拍一张木板底部的照片安装，以便手头有标签参考。如果您忘记了这样做，那么您可以随时使用我们[github repo]上提供的PINS.pdf文件(https://github.com/bigtreetech/BIGTREETECH-OCTOPUS-Pro).***</font>

### **电源接线**

octopus pro提供三种独立的电源输入：主板电源、电机电源和床加热器电源。这允许用户使用具有公共接地的多个电源，以确保它们能够向其系统的每个部分提供所需的电力。主板电源使用多种开关模式和低压差电源进行调节，以提供12V、5V和3.3V的电源轨。

12V、5V和3.3V导轨通过主板上的各种引脚提供。如果您计划使用这些供应导轨中的一个，请参阅PINS.pdf文档以查找分接头。请注意，12V导轨可提供高达4A、5V高达8A和3.3V高达1A的电源，但是，为了防止导轨过载，不建议将其加载到最大容量，因为主板上已经有各种组件也从中获取电源。

电源接线如下所示（如果引脚文件不在手上，请查看电路板的下侧，以快速识别每个输入的用途）。电源的正极（红色）导线连接到标有+的端子。电源的负极（黑色）导线连接到标有-的端子。极性（+和-）也被丝印印刷在板的下侧。

<img src=img/Octopus_Pro/Octopus_Pro_Pow.png width="600"/>

<font  color="red">***注意：不要在通电的情况下更改主板接线，并确保极性正确，否则可能会损坏主板。***</font>

### MCU电源跳线

如下图所示，插入跳线即可使用USB-C端口为octopus供电。这可以使使用DFU模式直接编译和下载固件到主板更容易。

如果您不连接此跳线，那么如果您想通过USB-C进行通信，则必须通过主输入电源为板供电。

<img src=img/Octopus_Pro/Octopus_Pro_5V.png width="600"/>

## **硬件安装**

### **自动断电接线**

当使用BIGTREETECH继电器V1.2模块时，可以按照下图所示进行接线。

<img src=img/Octopus_Pro/Octopus_Pro_Auto.png width="600"/>

<font  color="red">***注意：由于Relay 1.2模块在切断主板电源后仍将供电，因此在打印机仍连接到电源时触摸它是极其危险的。在处理此接线时，请务必断开所有主电源。***</font>

### **BL TOUCH 接线**

使用BL Touch时，如下图所示将其连接到主板。和往常一样，永远不要在通电的情况下在主板上执行任何工作。

<img src=img/Octopus_Pro/Octopus_Pro_BLTouch.png width="600"/>

### **功率损耗恢复模块接线**

使用BIGTREETECH小型UPS时，如下图所示将其连接到主板。和往常一样，永远不要在通电的情况下在主板上执行任何工作。

<img src=img/Octopus_Pro/Octopus_Pro_Pow_L.png width="600"/>

### **RGB-LED接线**

当使用带有RGB LED的主板时，您应该如下图所示连接它们。连接器的确切引脚可以在主板下侧的丝印上找到。

<img src=img/Octopus_Pro/Octopus_Pro_RGB.png width="600"/>

### **RASPBERRY PI 接线**

主板支持连接到树莓派进行打印。有几个连接选项可用于连接树莓派。最简单的是将树莓pi直接连接到USB-C端口，该端口将模拟pi上的虚拟串行端口。然而，如果您对USB-C端口有其他需求，您仍然可以通过UART或SPI使用直接串行连接将树莓派连接到主板。

为此，主板上提供了专用的UART和SPI引脚头，引脚映射方便地打印在板的下侧。详细说明如何将树莓派连接到这两个接头都超出了本手册的范围，但网上有大量材料解释了如何通过这两个串行总线将树莓派连接到外部设备。

通过专用的raspberry pi头标（UART2）为树莓派提供5V电源。请参阅PINS.pdf文档以了解此标头的确切引脚。

<img src=img/Octopus_Pro/Octopus_Pro_RAS.png width="600"/>

### **PROBE PORT 接线**

提供探针端口允许用户将床探针直接连接到主板，而不需要BAT85二极管作为高电压保护。探针信号引脚连接到内部光耦，该内部光耦依次触发连接到微控制器的引脚。

根据您使用的探针类型，您可能需要添加一个跳线来激活探针正电压轨和探针信号引脚之间的内部12k上拉电阻器。如果您使用的是“NPN”型探针，当它处于活动状态时，输出会拉到接地。您可以通过使用万用表检查探针的输出来判断这一点。如果它在未激活时浮动（没有其他连接），然后在激活时接地，则它是NPN型探针。如果它在激活时进入正极轨道，则它是PNP型探针。下图显示了用于激活12k上拉电阻器的跳线的位置。

无论您使用的是哪种探针，都需要启用探针输入引脚上的内部下拉电阻器，以便其生成输出信号。请参阅引脚配置说明，了解您正在使用的特定固件，以了解如何在探针输入引脚（PC5）上启用下拉电阻器。

有关如何配置探针端口使用的电压的更多信息，请参阅第4.2节。

<img src=img/Octopus_Pro/Octopus_Pro_Probe.png width="600"/>

### **步进驱动器操作模式**

#### **步进/模式**

如果您使用的驱动程序不支持通过串行端口进行配置，则需要在step/dir模式下操作它们，并根据所需的微步进设置步进驱动程序下方的跳线。

每个驱动程序都有自己的微型步进表，因此我们不会试图在手册中代表驱动程序制造商发言。请参阅驱动程序的数据表，以确定需要将哪些信号应用于微步配置引脚，以实现您想要的微步。

尽管如此，您将在下面看到一个图，该图将帮助您确定哪些跳线对应于您的驱动程序将用于配置微步进的引脚，我们在附录A1中还包括了一节，其中包含一些最常见驱动程序的微步进表。这应该被视为对用户的便利，我们仍然建议您查阅驱动程序制造商的数据表。

<img src=img/Octopus_Pro/Octopus_Pro_DRI1.png width="600"/>

在上图中，红色矩形隔离驱动器引脚组。为了在step/dir模式下运行驱动程序，引脚输出可以按照下表进行描述。

<font  color="red">***请注意，这不是实际的引脚输出，而是对step/dir模式的简化。***</font>

<img src=img/Octopus_Pro/Octopus_Pro_DRI2.png width="600"/>

下面两行之间的连接跳线将中间引脚（MS）设置为5V，但第一列中的跳线除外，它将连接SLP和RST。请注意，如果步进驱动器要求任何引脚上都有0V电压，那么在步进/目录模式下运行时实际上不需要将跳线连接到该引脚，在这种情况下连接跳线可能会造成干扰，因为这些线路用于SPI总线。

<font  color="red">***请注意，如果使用A4988或DRV8825驱动程序，则必须连接RST和SLP。***</font>

详情请点击： https://z1996xm.github.io/BIGTREETECH/Tutorials.html

#### **UART模式**

在UART模式下使用驱动程序时，如下图所示，连接该驱动程序下方的跳线。

<img src=img/Octopus_Pro/Octopus_Pro_DRI3.png width="600"/>

#### **SPI模式**

在SPI模式下使用驱动程序时，如下图所示，连接该驱动程序下方的跳线。

<img src=img/Octopus_Pro/Octopus_Pro_DRI4.png width="600"/>

### **主板跳线设置**

#### **电机功率选择跳线**

Octopus_Pro上的每个电机驱动器都可以通过跳线配置其使用的电压。

<font  color="red">***注意：在为您的octopus pro供电之前，请务必仔细检查驱动器的电压跳线，以确保每个跳线都有正确的电压，使用者向驱动器发送高电压可能会损坏驱动器，甚至可能对主板造成损坏。***</font>

如下图所示，将任意给定驱动器的跳线设置在右侧，将为该驱动器提供主板输入电压。主板一般采用24V。

<img src=img/Octopus_Pro/Octopus_Pro_DRI5.png width="600"/>

如下图所示，将任意给定驱动器的跳线设置在左侧，将为该驱动器提供电机输入电压。这可以高达60V。

<img src=img/Octopus_Pro/Octopus_Pro_DRI6.png width="600"/>

<font  color="red">***注意：当电路板输入或电机输入通电时，切勿取出或插入跳线。***</font>

#### **风扇和接近开关电压设置**

Octopus_Pro具有6个PWM风扇输出和两个“常开”风扇输出。还有一个用于接近传感器或探针的专用针头。

所有风扇输出和接近传感器输入都可以通过配置与每个插头相关的跳线来分别选择由其引脚插头提供的电压。

按以下方式配置跳线以选择24V（注意，所有跳线都显示在相同的配置中，即使它们可以单独配置）。

<img src=img/Octopus_Pro/Octopus_Pro_DRI7.png width="600"/>

如下配置跳线以选择12V。

<img src=img/Octopus_Pro/Octopus_Pro_DRI8.png width="600"/>

将跳线配置为5V，如下所示。

<img src=img/Octopus_Pro/Octopus_Pro_DRI9.png width="600"/>

<font  color="red">***注意：由于跳线直接从其中一个调节器或输入端携带电压轨，如果您以所示连接以外的任何方式短路跳线，很可能会损坏主板。连接风扇时，确保将正极端子连接到正极输出，如图所示。***</font>

#### **STALLGUARD跳线设置**

可在下图所示的位置找到用于将诊断输出引脚连接到支持安装保护功能（TMC2209/TMC2226等）的驱动器端部停止输入的“diag”跳线。

确切的diag编号可以通过查看引脚文件或板下的丝印来找到。

<img src=img/Octopus_Pro/Octopus_Pro_DRI10.png width="600"/>

#### **PT100/PT1000拨动开关**

PT100放大器支持2、3和4线连接到板。但是，DIP开关需要针对您正在使用的设置进行配置。

您可以在下图所示的位置找到DIP开关。请注意，DIP开关上印有开关编号和“打开”位置。

<img src=img/Octopus_Pro/Octopus_Pro_PT100.png width="600"/>

根据下表选择热敏电阻的连接安排。请记住，您仍然需要使用正确的感应电阻器值（430）来配置固件 用于PT100和4300 用于PT1000。

<table border="1">
	<tr>
    <td>1</td><td>2</td><td>3</td><td>4</td><td>Sensor model</td></tr>
	<tr>
    <td>ON</td><td>ON</td><td>ON</td><td>OFF</td><td>Two-wire PT100</td></tr>
	<tr>
    <td>ON</td><td>ON</td><td>OFF</td><td>ON</td><td>Two-wire PT1000</td></tr>
    <tr>
    <td>OFF</td><td>ON</td><td>ON</td><td>OFF</td><td>Three-wire PT100</td></tr>
    <tr>
    <td>OFF</td><td>ON</td><td>OFF</td><td>ON</td><td>Three-wire PT1000</td></tr>
    <tr>
</table>

如果您使用三线制布置，则还需要对板上的SMD电阻器进行小的调整。下图显示了蓝色框中的出厂默认电阻器设置（2/4导线排列）。使用3线布置将需要将电阻器从蓝色方框移到红色方框中，然后使蓝色方框中的焊盘未填充。这些电阻器为0 因此，如果你觉得把它们焊回原位不舒服，你总是可以在焊盘之间创建一个焊料桥，选择适合你安排的焊盘。

<img src=img/Octopus_Pro/Octopus_Pro_PT100_1.png width="600"/>

## 软件安装

### 主板通信

通过USB电缆将主板连接到计算机后，驱动程序将自动安装（windows、linux和macos）。安装驱动程序后，主板应自动枚举为可用于数据传输的虚拟串行设备。如果未能做到这一点，您可以访问我们的GitHub网站：https://github.com/bigtreetech?tab=repositories并找到相应的存储库来下载驱动程序。

如果您想确认驱动程序安装正确，您可以在windows中访问设备管理器，并在插入主板时查找虚拟com端口。在下面的图像中，主板已分配COM7，但您的操作系统可以为其分配任何可用的com端口号。其他操作系统将以不同的方式列出串行端口。

<img src=img/Octopus_Pro/Octopus_Pro_Soft1.png width="600"/>

### **主板固件支持**

Marlin、Klipper和RRF（429变体）都支持Octopus Pro。您可以根据固件开发人员指定的方法编译和配置您选择的固件变体。随着时间的推移，不同固件发行版的配置文件将在[Octopus_Pro]上提供(https://github.com/bigtreetech/BIGTREETECH-OCTOPUS-Pro). 介绍如何使用VSCode编译固件超出了本手册的范围，但网上有大量信息解释了如何在您的机器上设置VSCode以及此后如何配置Marlin。以下链接为您提供了方便的起点：

• https://marlinfw.org/docs/basics/install_platformio_vscode.html

• https://www.youtube.com/watch?v=eq_ygvHF29I

一旦您编译了自己的Marlin版本或下载了预编译版本，您可以按照以下步骤进行安装：

1. 确保固件二进制文件名为“firmware.bin”。任何其他名称都将是被引导加载程序拒绝。
2. 在此处使用已使用SD格式化程序工具格式化的SD卡：
https://www.sdcard.org/downloads/formatter/
3. 将固件二进制文件复制到SD卡。
4. 将SD卡插入主板并重置。
5. 取出SD卡，检查文件名称是否已更改为“FIRMWARE.CUR”。这将确认固件已成功安装。

如果您正在使用Klipper，请确保为446 variant启用了以下设置。注意晶体振荡器的频率为12MHz，与429 variant不同。

<img src=img/Octopus_Pro/Octopus_Pro_Soft2.png width="600"/>

该板的429 variant使用了不同频率的晶体振荡器（8MHz），因此需要稍微调整klipper配置，如下图所示。

<img src=img/Octopus_Pro/Octopus_Pro_Soft3.png width="600"/>

## **注意事项**

本节中列出的注意事项不容忽视。它们作为提醒被包括在内，以防止损坏您的主板。

- 切勿在通电的情况下在主板上工作。
- 通电前，务必仔细检查所有跳线和接线。不正确的跳线或布线可能会损坏主板，甚至可能损坏与其接口的外围设备。
- 主板可为高达300W的加热床供电。如果您使用的热床功率更高，则需要使用外部MOSFET。请勿将大于28V的电压源连接到此输入。
- 切勿将3.3V、5V、12V或24V电源彼此短路。这样做会导致短路冒烟，BTT将无法为您将其恢复。
- 您无法使用USB-C接口为外部设备供电。它只是为数据而设计的。
- 进行跳线连接或接线更改时，请务必参阅PIN.pdf图。假设连接顺序可能会导致主板损坏。
- 建议使用SD卡更新固件。使用DFU（通过USB端口直接编程）将覆盖引导加载程序，这意味着您将不再可以选择通过SD卡进行更新，除非您重新刷新引导加载程序。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-octopus-pro-v1-0-chip-f446



**如果您对产品有任何问题，请提交一张支持票**

https://biqu3d.com/pages/submit-a-ticket



**导航:**

BIQU官方网站：                            							  http://biqu3d.com

BIGTREETECH官方网站：            				 			 http://bigtree-tech.com

网上商店：                                          				 		https://biqu.equipment

BIGTREETECH官方群: 								  			  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/

微信公众号：																BIGTREETECH 

官方社群：

1群：																			190180312（已满）

2群：																			633401944

微信社群：																   关注微信公众号获取社群二维码

资料获取由微信公众号提供，关注公众号发送及消息即可获取（网盘链接）
