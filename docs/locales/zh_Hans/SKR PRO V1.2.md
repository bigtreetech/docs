# SKR PRO V1.2

## **产品简介**

BIGTREETECH-SKR-PRO-1.2是必趣创新科技（深圳）有限公司针对市场上3D打印主板存在的一些问题推出了以STM32F407ZGT6为核心控制器的高性能3D打印机主板。

## **功能亮点**

- 主控采用ARM级Cortex-M4系列，32位主频168MHz STM32F407ZGT6芯片，性能大幅提升。
- 配备高度模块化的开源固件Marlin2.0，方便用户自行动手和进一步开发，避免了无法掌握核心代码的担忧。
- Visual Studio Code是Marlin2.0的强大开发工具。其集成开发环境具有以下优点：支持在线调试，更有助于产品开发和性能优化，并使用C语言进行开发，易于上手。
- PCB板布局严谨美观，专为散热而设计。
- 采用专用电源芯片，支持12-24V电源输入，输出电流3A。
- 在24V输入和相同功率的情况下，可以将热床电流降低到1/4，有效地解决了热床MOS管的发热问题。
- BIGTREETECH-2.8英寸TFT和BIGTREETECH-3.5英寸TFT彩色触摸屏是兼容的，LCD2004和LCD12864屏幕也是兼容的。
- 系统支持简体中文、英文等多种语言，可自行切换。
- 固件采用SD卡升级，简单、方便、高效。
- 支持串行WIFI在线打印。
- 6台电机驱动，3台挤出机，3台数控风扇。
- 它具有以下功能：断电时可以保存数据，破损时可以发现材料，完工时可以关闭工作。
- 高性能MOSFET管，散热效果更好。
- 使用可拆卸保险丝，使更换过程更容易。
- 保留BL Touch、PWM、ADC、UART、I2C和SPI的扩展端口。
- 使用电源选项将USB电源与开关电源分开，可以有效防止计算机USB端口因短路而烧坏。
- 特殊的功能接口使用了彩色显眼的行引脚，大大降低了布线的错误率。
- 最多可以保留20个扩展端口，并且可以使用扩展端口为打印机添加更多功能，而不用担心主板端口短缺。
- 支持离线打印和在线打印。
- 支持双Z轴打印机（双Z系列）。

## **规格**

| **外观尺寸**                   |                         **147*95mm**                         |
| ------------------------------ | :----------------------------------------------------------: |
| **安装尺寸**                   |                      **138 * 86.5 mm**                       |
| **微处理器**                   |                **ARM 32-bit Cortex / M4 CPU**                |
| **输入电压**                   |                       **DC12V-DC24V**                        |
| **电机驱动**                   | **TMC5160,TMC2208,TMC2130,ST820,LV8729, DRV8825,A4988, etc.** |
| **驱动模式**                   |           **TMC2130SPI, TMC5160SPI, TMC2208 UART**           |
| **电机驱动接口**               |              **X, Y, Z, E0, E1, E2,共6个通道.**              |
| **温度传感器接口**             |      **T0、T1、T2、T3共4个通道100K NTC。（热敏电阻）**       |
| **显示屏**                     | **BIGTREETECH-2.8英寸TFT，BIGTREETECH-3.5英寸TFT，LCD2004，LCD12864** |
| **PC通信接口**                 |            **方形USB，插拔方便，通讯波特率11520**            |
| **支持扩展端口**               | **打印后自动关机模块、断电恢复打印模块、断丝检测和自动调平、BL Touch、WIFI、PWM、ADC、UART、I2C和SPI等。** |
| **支持文件格式**               |                          **g-code**                          |
| **支持打印机结构**             |          **XYZ, delta, kossel, Ultimaker, corexy**           |
| **推荐软件**                   | **Cura, Simplify3D, pronterface, Repetier-host, Makerware**  |
| **多电源，分担单个电源的压力** |                                                              |

## **尺寸**

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Dimensions.png width="600" />

## **升级内容**

- 更改热床界面丝网印刷；
- 改变热床保险丝的位置，有效处理热床加热时保险丝底部PCB的过热问题；
- 模拟量（AD）输入增加箝位二极管，有效保护芯片；

## **外围设备接口**

### 接口示意图

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Diagram.png width="600" />

### 引脚说明

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Pin.png width="600" />

## **接口介绍**

### 主板电源选择

#### 电源跳线帽选择

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Power.png width="600" />

1. 如红框所示，当跳线帽连接到in和VCC时，主板选择12V/24V电源；当跳线帽连接到USB和VCC时，主板选择USB电源。
2. 如果跳线帽已选择USB电源，则5V和3.3V指示灯也将点亮。
3. 当主板由12V/24V供电时，12V指示灯将点亮。如果跨接线帽有12V/24V电源，则3.3V、5V和12V指示灯将点亮。

### 主板电源接线方法

1. 开关电源的三种供电方式。

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Wiring.png width="600" />

如上所示，主板上需要连接三组电源线，即电机电源、热床电源和主板电源，额外的一组是热床接口。

<font  color="red">**连接时，一定要断开220V电源，并区分正负极，以免烧坏主板。**</font>

### 主板与计算机之间的通信

主板通过USB线连接到计算机后，计算机会自动安装驱动程序。在这种情况下，可以识别主板进行数据传输。如果安装失败，我们可以访问我们的开源网站：

https://github.com/bigtreetech?tab=repositories 找到相应的主板下载驱动程序。

驱动器安装完成后，打开“设备管理器”以查看如下图所示的端口，这表明系统板已正确连接到计算机。

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_COM.png width="600" />

### 模式和接口的描述

1、STEP/DIR 模式

根据所使用的驱动程序，细分表是对应的，跳线帽用于细分选择。

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_STEP.png width="600" />

注意：高电平连接到上面两排针，低电平连接到下面两排针。

2、A4988 and 8825 驱动说明

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_A4988.png width="600" />

如果驱动使用A4988或8825，则有必要用跳线帽短接紫色盒子中的两个引脚（如图所示）。如果不是A4988或8825，则需要拔出接线盒中的跳线帽。

3、UART 模式

使用UART模式时，需要用跳线帽短接红色框中的针脚。

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_UART.png width="600" />

如下图所示，TMC2208 UART模式对应的引脚是红色框选择的引脚，即从上到下的第4个引脚。

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_UART1.png width="600" />

4、SPI 模式

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_SPI.png width="600" />

使用SPI模式时，需要用跳线帽短接红色框中的针脚

5、USB和U盘选择

如图所示，当跳线帽连接到左侧时，USB功能打开，而USB闪存驱动器功能关闭；当跳线帽连接到右侧时，USB闪存驱动器功能打开，USB功能关闭。

<font  color="red">**注意：目前固件暂时不支持U盘功能。**</font>

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_USB.png width="600" />

6、SPI扩展端口

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_SPI_PORT.png width="600" />

SPI扩展端口与驱动程序的SPI模式共享IO，只有在未使用SPI模式驱动程序的情况下才能使用。

7、WIFI接口

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_WIFI.png width="600" />

WIFI接口如上图所示。插入WIFI时，右侧紫色框所示的板边缘朝外，垂直插入。

8、stallguard引脚描述

如下图所示，紫色框是与失速检测相对应的失速插脚。

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_stallguard.png width="600" />

以TMC2209为例。当不使用安装保护功能时，需要切断TMC2209的安装保护销，以便机械开关能够正常工作。

操作方法如下所示：

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Operation.png width="600" />

只有在不使用stallguard功能时，才需要裁剪此功能引脚。

9、双Z轴连接说明

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Double.png width="600" />

10、限位开关指示灯的说明

<img src=img/SKR_PRO_V1.2/SKR_PRO_V1.2_Description.png width="600" />

状态指示器是常闭限位开关指示器。

第一：当限位开关未连接时，指示灯始终亮起。

第二：连接常闭限位开关时，指示灯熄灭，触发时，指示灯会点亮。

第三：常开限位开关接通时指示灯常亮，触发时指示灯熄灭。

### 主板固件说明

1、目前只支持我们的开源Marlin2.0固件，请访问我们的开源网站：

https://github.com/bigtreetech?tab=repositories

找到相应的主板下载。

2、Marlin2.0固件更新方法：下载我们的开源Marlin2.0软件后，使用Visual Studio Code打开项目进行编译，然后找到firmware.bin文件，将其复制到SD卡中，然后重置主板约10秒。（您也可以直接下载firmware.bin）

有关详细步骤，请参阅教程：

https://www.dropbox.com/s/ppjfflhf3j5yzh2/MarlinV2.0%20SKRV1.1%20instruction.docx?dl=0

## **注意事项**

- 目前，仅支持我们公司的开源固件Marlin2.0。
- 暂时不支持U盘功能。请继续关注！
- 连接到主板的热床的功率必须小于或等于180W（热床电阻值大于0.8）。
- 当主板提供12V/24V电源时，一定要注意电源的正极和负极。
- SD卡中的固件文件名不能更改，包括大写。
- 通电前，确保所有导线、跨接线帽和驱动器都已正确插入。
- 请勿插入或拔下带电源的驱动模块，以免损坏。
- 在主板布线时，一定要注意正负电源、驱动方向、电源选择等，以便通电。
