# Octopus

<img src=img/Octopus/Octopus_Title.png width="600"/>

## **产品简介**

BIGTREETECH Octopus V1.0 是必趣创新科技（深圳）有限公司3D打印团队推出的一款可以最多支持8路步进电机的3D打印机主板。

## **功能亮点**

- 主控采用 32 位主频高达 180MHz 的ARM 级Cortex-M4 系列STM32F446ZET6 芯片。
- 搭载高度模块化开源固件 Marlin2.0 ，方便用户DIY 及二次开发，免除无法掌握核心代码的后顾之忧。
- Marlin2.0 使用强大的开发工具， Visual Studio Code 集成开发环境：支持在线调试，对产品开发和性能优化更有帮助，采用C/C++语言开发，开发门槛低。
- 支持Klipper 固件与树莓派联机打印。
- 最多支持 4 路加热棒。
- 最多 6 路可控风扇，两路常开风扇，且均支持电源电压（24V），12V,5V 选择。
- 采用Type-C 接口，支持联机打印。
- 采用专用电源芯片，支持 24V 电源输入。
- 支持 BIGTREETECH 生产TFT 彩色触摸屏，LCD12864 屏等。
- 系统支持中文简体、英文等语言，可自行切换。
- 通过 SD 卡升级配置固件，操作简单方便高效。
- 采用高性能 MOSFET 管，散热效果更好。
- 采用可拔插的保险丝，使更换过程更加简易。
- 支持SD 卡脱机打印与USB 联机打印。
- 预留双Z 轴型打印机。
- 支持DFU 更新固件。
- 板载EEPROM（AT24C32）。
- 支持RGB 灯条。
- 预留WIFI 接口（ESP8266）。
- 预留 PT100 热敏电阻接口（可选，出厂为空贴需要用户自己焊接INA826AIDR，封装为SOP-8，请注意芯片引脚位置）。
- 热敏电阻漏电保护。
- 支持BL_Touch。
- 支持CAN 总线，采用 6P6C RJ11 接口，方便扩展。
- 支持堵转检测。
- 支持SPI 扩展，可接MAX31865 模块等基于SPI 的扩展模块
- 打完关机。
- 断电续打。
- 6 组限位开关，两组断料检测。
- 支持U 盘功能。
- 支持IIC 扩展

## **规格**

| **外观尺寸**         | **160*100mm**                                                |
| -------------------- | ------------------------------------------------------------ |
| **安装尺寸**         | **150*90mm**                                                 |
| **微处理器**         | **ARM 32-bit Cortex™-M4 CPU**                                |
| **输入电压**         | **DC24V**                                                    |
| **电机驱动器**       | **可拔插驱动**                                               |
| **电机接口**         | **MOTOR0、MOTOR1、MOTOR2_1、MOTOR2_2、MOTOR3、MOTOR4、MOTOR5、MOTOR6、MOTOR7** |
| **温度传感器接口**   | **TB、T0、T1、T2、T3**                                       |
| **显示屏**           | **BIGTREETECH TFT、LCD12864、LCD2004 等**                    |
| **PC 通信接口**      | **Type-C，方便插拔，通信波特率115200**                       |
| **拓展接口功能支持** | **断料检测，断电续打，打完关机，BL_Touch等**                 |
| **支持文件格式**     | **G-code**                                                   |
| **推荐软件**         | **Cura、Simplify3D、pronterface、Repetier-host、Makerware**  |

## **尺寸**

<img src=img/Octopus/Octopus_Dimension.png width="600"/>

## **接口示意图**

<img src=img/Octopus/Octopus_Pinout_CN.png width="600"/>

## **引出线**

下图是从PINS.pdf文档中截取的片段。要获得更好的可视性，请参阅PINS.pdf文档。

<img src=img/Octopus/Octopus_Pin.png width="600"/>

## **硬件配置**

### **电源接线**

主板提供三个独立的电源输入：主板电源、电机电源和床加热器电源。这允许用户使用具有公共接地的多个电源，以确保它们能够向其系统的每个部分提供所需的电力。主板电源使用多种开关模式和低压差电源进行调节，以提供12V、5V和3.3V的电源。

12V、5V和3.3V导轨通过主板上的各种引脚提供。如果您计划使用这些供应导轨中的一个，请参阅PINS.pdf文档以查找分接头。请注意，12V导轨可提供高达4A、5V高达8A和3.3V高达1A的电源，但是，为了防止导轨过载，不建议将其加载到最大容量，因为主板上已经有各种组件也从中获取电源。

电源接线如下所示（查看电路板的下侧，以确定每个输入的用途）。电源的正极（红色）导线连接到标有+的端子。电源的负极（黑色）导线连接到标有-的端子。极性（+和-）也被丝网印刷在板的下侧，以方便用户。

<img src=img/Octopus/Octopus_24V.png width="600"/>



<font  color="red">***注意：不要在通电的情况下更改主板接线，并确保极性正确，否则可能会损坏主板。***</font>

### **MCU电源跳线**

如下图所示，插入跳线即可使用USB-C端口为主板供电。这可以使使用DFU模式直接编译和下载固件到主板更容易。

如果您不连接此跳线，那么如果您想通过USB-C进行通信，则必须通过主输入电源为板供电。

<img src=img/Octopus/Octopus_5V.png width="600"/>

## **硬件安装**

### **自动断电接线**

当使用BIGTREETECH继电器V1.2模块时，可以按照下图所示进行接线。

<img src=img/Octopus/Octopus_Auto.png width="600"/>



<font  color="red">***注意：由于在切断主板电源后，继电器1.2模块仍将通电，因此在打印机仍连接到电源时触摸继电器1.2模块是极其危险的。在处理此接线时，请务必断开所有主电源。***</font>

### **BL TOUCH 接线**

使用BL Touch时，如下图所示将其连接到主板。和往常一样，永远不要在通电的情况下在主板上执行任何工作。

<img src=img/Octopus/Octopus_BLTouch.png width="600"/>

### **功率损耗恢复模块接线**

使用BIGTREETECH小型UPS时，如下图所示将其连接到主板。和往常一样，永远不要在通电的情况下在主板上执行任何工作。

<img src=img/Octopus/Octopus_Power_L.png width="600"/>

### **RGB LED 接线**

当使用带有RGB LED的主板时，您应该如下图所示连接它们。连接器的确切引脚可以在主板下侧的丝网上找到。

<img src=img/Octopus/Octopus_RGB.png width="600"/>

### **RASPBERRY PI 接线**

<font  color="red">***注：SPI3端口的3.3V和GND引脚在一些早期板下侧的丝印上被错误地交换。为了确定确切的引脚输出，请参考SPI3端口的PIN.pdf文件。***</font>

主板支持连接到树莓派进行打印。有几个连接选项可用于连接树莓派。最简单的是将树莓pi直接连接到USB-C端口，该端口将模拟pi上的虚拟串行端口。然而，如果您对USB-C端口有其他需求，您仍然可以通过UART或SPI使用直接串行连接将树莓派连接到主板。

为此，主板上提供了专用的UART和SPI引脚头，引脚映射方便地打印在板的下侧。详细说明如何将树莓派连接到这两个接头都超出了本手册的范围，但网上有大量材料解释了如何通过这两个串行总线将树莓皮连接到外部设备。

树莓派的5V电源是通过专用的树莓派头提供的。请参阅PINS.pdf文档以了解此标头的确切引脚。

<img src=img/Octopus/Octopus_RAS.png width="600"/>

### **PROBE PORT 接线**

提供探针端口允许用户将床探针直接连接到主板，而不需要BAT85二极管作为高电压保护。探针信号引脚连接到内部光耦，该内部光耦依次触发连接到微控制器的引脚。


根据您使用的探针类型，您可能需要在探针正电压轨和探针信号引脚之间添加一个外部4k7上拉电阻器，以获得读数。如果您使用的是“NPN”型探针，当它处于活动状态时，输出会拉到接地。您可以通过使用万用表检查探针的输出来判断这一点。如果它在未激活时浮动（没有其他连接），然后在激活时接地，则它是NPN型探针。如果它在激活时进入正极轨道，则它是PNP型探针。下图显示了使用NPN探针时如何连接外部4k7电阻器。


无论您使用的是哪种探针，都需要启用探针输入引脚上的内部下拉电阻器，以便其生成输出信号。请参阅引脚配置说明，了解您正在使用的特定固件，以了解如何在探针输入引脚上启用下拉电阻器。

<img src=img/Octopus/Octopus_Probe.png width="600"/>

### **步进驱动器操作模式**

<font  color="red">***注意：主板有很多功能，这意味着它有很多连接器和组件。为了将板的尺寸保持在最低限度，我们将步进器插座彼此靠近放置。这意味着驱动将拥有舒适的贴合感。***</font>

#### **步进/模式**

如果您使用的驱动程序不支持通过串行端口进行配置，则需要在step/dir模式下操作它们，并根据所需的微步进设置步进驱动程序下方的跳线。

每个驱动程序都有自己的微型步进表，因此我们不会试图在指南中代表驱动程序制造商发言。请参阅驱动程序的数据表，以确定需要将哪些信号应用于微步配置引脚，以实现您想要的微步。

尽管如此，您将在下面看到一个图，该图将帮助您确定哪些跳线对应于您的驱动程序将用于配置微步进的引脚，我们在附录A1中还包括了一节，其中包含一些最常见驱动程序的微步进表。这应该被视为对用户的便利，我们仍然建议您查阅驱动程序制造商的数据表。

<img src=img/Octopus/Octopus_DRI1.png width="600"/>

在上图中，红色矩形隔离一组驱动器引脚。为了在step/dir模式下运行驱动程序，可以根据下表描述引脚输出（注意，这不是实际的引脚输出，而是step/dir方式的简化）。

<img src=img/Octopus/Octopus_DRI2.png width="600"/>

连接上两排之间的跳线将中间引脚（MS）设置为0V。
下面两行之间的连接跳线将中间引脚（MS）设置为3.3V，第一列中的跳线除外，它将连接SLP和RST。

<font  color="red">***请注意，如果您在步进/目录模式中使用的驱动程序使用的是除16以外的微步进因子，则您不能在SPI模式中使用任何其他驱动程序，因为将微步进设置为除16以外任何值所需的引脚也与SPI共享。***</font>

<font  color="red">***请注意，如果使用A4988或DRV8825驱动程序，则必须连接RST和SLP。***</font>

详情请点击：https://bigtreetech.github.io/docs/Tutorials.html

#### **UART模式**

在UART模式下使用驱动程序时，如下图所示，连接该驱动程序下方的跳线。

<img src=img/Octopus/Octopus_DRI3.png width="600"/>

#### **SPI模式**

在SPI模式下使用驱动程序时，如下图所示，连接该驱动程序下方的跳线。

<img src=img/Octopus/Octopus_DRI4.png width="600"/>

### **主板跳线设置**

#### **风扇和接近开关设置**

主板具有6个PWM风扇输出和两个“常开”风扇输出。还有一个用于接近传感器的专用针头。这些标题如下图所示。

<font  color="red">***注意：在一些早期板下侧的丝网印刷上，风扇端口的极性被错误地交换了。为了确保正确的极性，
请查阅PINS.pdf文档或查看下面的图片。***</font>

<img src=img/Octopus/Octopus_DRI5.png width="600"/>

所有风扇输出和接近传感器输入都可以通过配置与每个插头相关的跳线来分别选择由其引脚插头提供的电压。

<img src=img/Octopus/Octopus_DRI6.png width="600"/>

如下配置跳线以选择12V。

<img src=img/Octopus/Octopus_DRI7.png width="600"/>

将跳线配置为5V，如下所示。

<img src=img/Octopus/Octopus_DRI8.png width="600"/>



<font  color="red">***注意：由于跳线直接从其中一个调节器或输入端携带电压轨，如果您以所示连接以外的任何方式短路跳线，很可能会损坏主板。连接风扇时，确保将正极端子连接到如图像中所示的正输出。***</font>

#### **STALLGUARD跳线设置**

用于将诊断输出引脚连接到支持安装保护功能（TMC2209/TMC2226）的驱动器端部停止输入的“diag”跳线可在下图所示的位置找到。

确切的diag编号可以通过查看引脚文件或板下的丝印来找到。

<img src=img/Octopus/Octopus_DRI9.png width="600"/>

### **关于扩展接口的特别说明**

<font  color="red">***为SPI、UART和I2C提供扩展接口。在Octopus的第一次生产中，PCB下侧的丝印有两个引脚在SPI3接口上标记错误，两个在Raspberry Pi UART接口上标记不正确。为了确保正确连接外围设备，如果使用SPI或UART接口，请参阅PINS.pdf文档。***</font>

## 软件安装

### 主板通信

通过USB电缆将主板连接到计算机后，驱动程序将自动安装（windows、linux和macos）。安装驱动程序后，主板应自动枚举为可用于数据传输的虚拟串行设备。如果未能做到这一点，您可以访问我们的GitHub网站：https://github.com/bigtreetech?tab=repositories并找到相应的存储库来下载驱动程序。

如果您想确认驱动程序安装正确，您可以在windows中访问设备管理器，并在插入主板时查找虚拟com端口。在下面的图像中，主板已分配COM7，但您的操作系统可以为其分配任何可用的com端口号。其他操作系统将以不同的方式列出串行端口。

<img src=img/Octopus/Octopus_Soft1.png width="600"/>

### **主板固件支持**

您可以通过访问找到Octopus的Marlin预编版本https://github.com/bigtreetech?tab=repositories并寻找Octopus库。或者，您可以使用VScode编译自己的版本。介绍如何使用VSCode编译固件超出了本手册的范围，但网上有大量信息解释了如何在您的机器上设置VSCode以及此后如何配置Marlin。以下链接为您提供了方便的起点：

• https://marlinfw.org/docs/basics/install_platformio_vscode.html

• https://www.youtube.com/watch?v=eq_ygvHF29I

一旦您编译了自己的Marlin版本或下载了预编译版本，您可以按照以下步骤进行安装：

1. 确保固件二进制文件名为“firmware.bin”。任何其他名称都将被引导加载程序拒绝。
2. 在此处使用已使用SD格式化程序工具格式化的SD卡：https://www.sdcard.org/downloads/formatter/
3. 将固件二进制文件复制到SD卡。
4. 将SD卡插入主板并重置。
5. 取出SD卡，检查文件名称是否已更改为“FIRMWARE.CUR”。这将确认固件已成功安装。

如果您正在使用Klipper，请确保您启用了以下设置，以便在保留出厂引导程序的同时将固件下载到板上：

<img src=img/Octopus/Octopus_Soft2.png width="600"/>

## **注意事项**

本节中列出的注意事项不容忽视。它们作为提醒被包括在内，以防止损坏您的主板。

- 切勿在通电的情况下在主板上工作。
- 通电前，务必仔细检查所有跳线和接线。不正确的跳线或布线可能会损坏主板，甚至可能损坏与其接口的外围设备。
- 主板可为高达300W的加热床供电。如果您使用的床功率更高，则需要使用外部MOSFET。
- 进行跳线连接或接线更改时，请务必参阅PIN.pdf图。假设连接顺序可能会导致主板损坏。
- 建议使用SD卡更新固件。使用DFU（通过USB端口直接编程）将覆盖引导加载程序，这意味着您将不再可以选择通过SD卡进行更新。
- Octopus没有配备INA826AIDR放大器芯片。如果您想使用PT100接口，您需要单独购买INA826AIDR芯片（SOP-8封装），并将芯片焊接到正确的位置，如下所示。

<img src=img/Octopus/Octopus_Soft3.png width="600"/>

- Octopus第一次生产时的丝印印刷错误地标记了下面列出的连接器上的引脚。为了确保接线正确，请在使用这些连接器时使用pins.pdf文档。丝印印刷已经被更正，所有后续的Octopus都将反映正确的映射

  a. Fans

  b. SPI3

  c. Raspberry pi UART.



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-octopus-v1-1



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
