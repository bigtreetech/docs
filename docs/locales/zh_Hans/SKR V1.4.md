# SKR V1.4

<img src=img/SKR_V1.4/SKR_V1.4_Title.png width="600" />

## **产品简介**

BIGTREETECH SKR V1.4 motherboard is a 32-bit 3D printer motherboard optimized and upgraded by the 3D printing team of SShenzhen BIQU Innovation Technology Co., Ltd. for the deficiencies of V1.3 version, especially suitable for small and medium-sized printers.

## **功能亮点**

- 采用32位主频100MHz ARM级Cortex-M3系列LPC1768主控芯片，大大提高了性能；
- 配备高度模块化、开源的固件Marlin2.0，方便用户自行动手、二次开发；
- 采用专用电源芯片M6130，支持12-24V电源输入；
- 支持2.4、2.8、3.5英寸彩色触摸屏，支持LCD2004屏幕、LCD12864屏幕
- 通过SD卡升级配置固件，简单、方便、高效；
- SPI和UART工作模式由TMC驱动器驱动，也有DIAG引脚，消除了复杂的布线过程，可以通过简单的拔下跳线帽使用；
- 支持关机时恢复打印、断丝检测、打印后自动关机等功能；
- 高性能MOSFET管，散热效果更好；
- 使用可拆卸保险丝使更换过程更容易；
- 预留扩展端口SERVOS和Probe，支持BL Touch；
- 支持RGB灯条；
- 采用电源选择设计，将USB电源与开关电源分离，有效避免了电脑USB端口因短路而烧坏的情况；
- 特殊的功能接口采用了颜色显眼的排针，大大降低了布线的错误率；
- 预留I2C、SPI、WIFI接口，方便DIY；
- 预留了闭环驱动接口，减少了插入式开关模块的麻烦
- 双z轴接口，消除了外置驱动器扩展模块的麻烦；
- 热敏电阻接口由胆汁电容加压电阻器保护，以增强接口的电阻；
- 更多风扇接口：1路数控风扇，3路常开风扇；
- 插入外部DC5V电源模块，为TFT屏幕、BLtouch和Neopixel供电；

## **规格**

| 外观尺寸             |                           110*85mm                           |
| :------------------- | :----------------------------------------------------------: |
| **安装尺寸**         |                         **102*76mm**                         |
| **微处理器**         |                    **ARM Cortex-M3 CPU**                     |
| **输入电压**         |                    **DC12V-DC24V 5A-15A**                    |
| **逻辑电压**         |                         **DC 3.3V**                          |
| **WIFI模块**         |                         **ESP-01S**                          |
| **电机驱动**         | **支持TMC5161、TMC5160、TMC2209、TMC2225、TMC2208、TMC2130、ST820、LV8729、DRV8825、A4988等，独立外置电机驱动** |
| **驱动工作模式支持** |                   **SPI、UART、STEP/DIR**                    |
| **电机驱动接口**     | **X、 Y、Z、E0、E1、5路（每个都有一个闭环驱动接口）最多256个细分** |
| **温度传感器接口**   | **TH0，TH1，TB，3通道100K NTC温度传感器接口：TH0，TH1，TB、3通道100K NTC（热敏电阻）** |
| **显示屏**           |  **2.4、2.8、3.5英寸TFT（支持双模屏）、LCD2004、LCD12864**   |
| **PC通信接口**       |           **方形USB，易于插入，通信波特率115200**            |
| **扩展接口功能**     | **关闭电源后继续打印、断丝检测、打印后自动关机、自动调平、BL Touch** |
| **文件格式**         |                          **G-code**                          |
| **机器架构**         |          **XYZ、delta、kossel、Ultimaker、corexy**           |
| **推荐软件**         | **Cura、Simplify3D、pronterface、Repetier-host、Makerware**  |

## **尺寸**

<img src=img/SKR_V1.4/SKR_V1.4_Dimension.png width="600" />

## **外围设备接口**

### 接口示意图

<img src=img/SKR_V1.4/SKR_V1.4_Diagram.png width="600" />

## **接口介绍**

### USB电源

SKR主板通电后，左下角的D5红灯亮起，表示电源正常。板中间的5V SEL是电源选择端子；

1、使用USB为主板供电时：

<img src=img/SKR_V1.4/SKR_V1.4_USB1.png width="600" />

2、使用12v-24v电源时：

<img src=img/SKR_V1.4/SKR_V1.4_USB2.png width="600" />

### 连接

SKR主板通过USB接口与计算机通信。计算机需要先安装驱动程序，然后将主板插入计算机，以识别数据传输的端口。如果不安装驱动程序，计算机很容易无法识别USB端口。使用Marlin2.0固件，请按照教程进行安装:

教程：https://www.dropbox.com/s/ppjfflhf3j5yzh2/MarlinV2.0%20SKRV1.1%20instruction.docx?dl=0

驱动：https://www.dropbox.com/s/a0k5idjmf4fn82f/lpc176x_usb_driver.inf?dl=0

<img src=img/SKR_V1.4/SKR_V1.4_Connect.png width="600" />

### 驱动方式和选择方法

1、常用STEP/DIR模式：（例如：A4988、DRV8825、LV8729、ST820等）根据驱动器细分表选择短路帽连接MS0-MS2。

<img src=img/SKR_V1.4/SKR_V1.4_Step.png width="600" />

<font  color="red">**注意：如果使用A4988或DRV8825驱动程序，则必须使用跳线帽连接RST和SLP。** </font>

详情请点击: https://bigtreetech.github.io/docs/Tutorials.html

2、TMC驱动器UART模式：（例如：TMC2208、TMC2209、TMC2225等）每个轴使用短路帽连接图中的红色框架。细分和驱动电流由固件设置。

<img src=img/SKR_V1.4/SKR_V1.4_UART.png width="600" />

<font  color="red">**注意：使用TMC2209时，如果不使用安装保护功能，则需要切断驱动器上的DIAG引脚，以便机械开关能够正常工作。操作方法如下所示：** </font>

<img src=img/SKR_V1.4/SKR_V1.4_Before.png width="600" />

<font  color="red">**注意：只有在不使用阻塞检测功能时，才需要裁剪此功能引脚。** </font>

3、TMC驱动器SPI模式：（如：TMC2130、TMC5160、TMC516 1等）每个轴使用四个短路帽连接图中的红框位置。细分和驱动电流由固件设置。

<img src=img/SKR_V1.4/SKR_V1.4_SPI.png width="600" />

### BLTouch

SKR V1.4与BL touch的连接：

<img src=img/SKR_V1.4/SKR_V1.4_BLTouch.png width="600" />

### Relay V1.2

SKR V1.4与打印后自动关机模块（继电器V1.2）的连接：

<img src=img/SKR_V1.4/SKR_V1.4_Auto.png width="600" />

### UPS

SKR V1.4与断电时恢复打印模块（UPS 24V V1.0）的连接：

<img src=img/SKR_V1.4/SKR_V1.4_Power.png width="600" />

### 树莓派

SKR V1.4和树莓派的连接：

<img src=img/SKR_V1.4/SKR_V1.4_RPI.png width="600" />

### 闭环驱动器

SKR V1.4与闭环驱动器的连接：

<img src=img/SKR_V1.4/SKR_V1.4_Loop.png width="600" />

## **Marlin**

SKR主板固件说明

<font  color="red">工厂主板安装了用于测试的固件（型号I3），可以直接使用，也可以根据自己的需要进行更改。 </font>

1、SKR主板固件的获取方法:

通过询问客户服务或技术人员获得;

在我们公司的开源网站下载: https://github.com/bigtreetech

2、Marlin2.0固件更新方法

下载我们的开源Marlin2.0固件后，使用Visual Studio Code打开项目进行编译，然后找到firmware.bin文件，将其复制到SD卡中，然后重置主板。有关详细步骤，请参阅教程:

https://www.dropbox.com/s/ppjfflhf3j5yzh2/MarlinV2.0%20SKRV1.1%20instruction.docx?dl=0

## **注意事项**

1. 主板5V SEL在打印前必须连接VDD和+5V两个引脚（即必须向主板提供12v-24v电源进行打印）；
2. 连接到主板的热床的功率必须小于或等于144W（即热床电阻大于1Ω）。如果要使用大功率热床，必须连接外置的热床电源扩展板；
3. SD卡中的固件文件名不能更改（包括字母大小写）
4. 线过程和插电驱动过程必须在停电的前提下进行。检查线路连接是否正确、驱动器插入是否正确后才能通电，防止错误的连接线路烧坏主板和驱动器，造成不必要的损失
5. 要更换配置文件，请备份出厂配置文件，记录芯片每个部件的引脚号，然后更改新的配置文件！
