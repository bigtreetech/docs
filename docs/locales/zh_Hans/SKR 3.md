# SKR 3

<img src=img/SKR3/SKR3_Title.webp width="600" />

## **产品简介**

BIGTREETECH SKR 3 主板是必趣创新科技（深圳）有限公司针对 SKR V1.4/Turbo 版本存在的不足进行优化升级的 32 位 3D 打印机主板。

## **产品特点**

- 采用 32 位主频 480MHz 的 ARM Cortex-M7 系列 STM32H743VI 主控芯片，性能大幅提升。
- 电源芯片采用 TPS5450-5A，支持 DC12/24V 电源输入,该芯片输出电流高达 5A，峰值可达 6A，完美支持树莓派供电。
- 主板预留 BOOT 按键，用户可以通过 DFU 方式更新主板引导程序。
- 增加热敏电阻部分的保护电路，避免因热床或者加热棒漏电导致主控芯片烧毁。
- 数控风扇通过外插电源模块实现 24V、12V、5V 电压选择 (注意：3 个数控风扇的电压是统一的，无法单独设置为不同的电压)，省去客户外接变压模块的操作，从而减少主板损坏几率。
- 热敏电阻可通过跳线选择上拉电阻值，以此方式支持 PT1000，而不需外接模块，方便客户 DIY 使用。
- 支持本公司所有版本的串口屏、SPI 屏和 LCD 屏。
- 通过 SD 卡升级配置固件，操作简单方便高效。
- 板载 TMC 驱动的 SPI 和 UART 工作模式，板载 DIAG 功能引脚，只需通过简单的拔插跳帽即可使用。
- 支持断电续打、断料检测、打完关机、BLTouch、RGB 灯等功能。
- 采用高性能 MOSFET 管，减少发热量。
- 采用可更换的保险丝，方便更换。
- WIFI 模块（ESP-12S、ESP-07、ESP32）通用接口。
- 板载不自弹 MicroSD 卡槽，且为 SDIO 工作方式，大大加快了传输速率。
- 板载 EEPROM，方便用户保存参数信息。
- 预留两种方式的 CAN 接口，USB 口和 XH2.54 6Pin 端子接口，其中 USB 口则是通过双刀双掷开关进行 CAN 与 USB 的选择，方便客户使用 CAN 接口的其它配件。

## **规格**

| **外观尺寸**                     |     110*85mm 详情请参考：**BIGTREETECH SKR 3-SIZE.pdf**      |
| :------------------------------- | :----------------------------------------------------------: |
| **安装尺寸**                     |                         **102*76mm**                         |
| **微处理器**                     |                **ARM Cortex-M7 STM32H743VI**                 |
| **EEPROM**                       |                       **24C32 32Kbit**                       |
| **输入电压**                     |                       **DC12V-DC24V**                        |
| **逻辑电压**                     |                         **DC 3.3V**                          |
| **加热接口**                     |               **热床（HB）、加热棒（E0、E1）**               |
| **热床端口最大输出电流**         |                      **10A，峰值 11A**                       |
| **加热棒端口最大输出电流**       |                      **5.5A，峰值 6A**                       |
| **风扇接口**                     |     **三个数控风扇，两个常开风扇，其中数控风扇电压可选**     |
| **风扇接口最大输出电流**         |                      **1A，峰值 1.5A**                       |
| **加热棒 + 驱动 + 风扇的总电流** |                         **小于 10A**                         |
| **WIFI 接口**                    |                 **ESP-12S、ESP-07S、ESP32**                  |
| **拓展接口**                     | **BLTouch（Servos、Probe）、PS-ON、PWR-DET、Fil-DET、RGB、CAN FD** |
| **电机驱动**                     | **支持 TMC5160、TMC2209、TMC2225、TMC2226、TMC2208、TMC2130、ST820、LV8729、DRV8825、A4988 等** |
| **驱动工作模式支持**             |                   **SPI、UART、STEP/DIR**                    |
| **电机驱动接口**                 |           **X、Y、Z（双 Z 轴）、E0、E1 总共五路**            |
| **温度传感器接口**               |       **1 路 100K NTC，2 路 100K NTC 和 PT1000 可选**        |
| **显示屏**                       |            **串口触摸屏、SPI 触摸屏、LCD 显示屏**            |
| **PC 通信接口**                  |                   **方形 USB A，方便插拔**                   |
| **支持文件格式**                 |                          **G-code**                          |
| **支持机器结构**                 |       **Cartesian、Delta、Kossel、Ultimaker、CoreXY**        |
| **推荐软件**                     | **Cura、Simplify3D、Pronterface、Repetier-host、Makerware**  |

## **固件支持**

此产品支持 Marlin、Klipper 和 RRF(RepRapFirmware)固件

## **尺寸**

<img src=img/SKR3/SKR3_Dimension.webp width="600" />

## **外围设备接口**

### 接口示意图

<img src=img/SKR3/SKR3_Pinout_CN.webp width="600" />

### 引脚说明

<img src=img/SKR3/SKR3_Pinout.webp width="600" />

## **接口介绍**

### USB供电

SKR 3 主板上电之后，MCU 右上角的 D7(Power)红灯会亮起，表示供电正常。板子中部的VUSB 是电源选择端，仅当使用 USB 给主板供电或需通过 USB 向外供电时，才需要使用跳帽将 VUSB 短接。

<img src=img/SKR3/SKR3_USB.webp width="600" />

### 步进电机驱动

#### 普通的 STEP/DIR(STANDALONE)模式

例如：A4988、DRV8825、LV8729、ST820 等，根据驱动细分表来选择跳帽短接 MS0-MS2。

<img src=img/SKR3/SKR3_Step.webp width="600" />

详情请点击: https://bigtreetech.github.io/docs/Tutorials.html

#### TMC 驱动的 UART 模式

例如：TMC2208、TMC2209、TMC2225 等，每个轴使用一个跳帽短接图中红框位置即可，细分和驱动电流通过固件进行设置

<img src=img/SKR3/SKR3_Uart.webp width="600" />

####  TMC 驱动的 SPI 模式

例如：TMC2130、TMC5160、TMC5161 等，每个轴使用四个跳帽短接图中红框位置即可，细分和驱动电流通过固件进行设置。

<img src=img/SKR3/SKR3_SPI.webp width="600" />

#### TMC 驱动的 DIAG(Sensorless Homing)

如图示位置，使用 Sensorless Homing 功能时就插上跳帽，不使用则不插，无需剪断驱动的 DIAG 引脚。

<img src=img/SKR3/SKR3_Diag.webp width="600" />

### USB 与 CAN 模式

如下图所示双刀双掷开关处于弹起状态时为 USB 模式，处于按下状态时为 CAN FD 模式。

<img src=img/SKR3/SKR3_USB_CAN.webp width="600" />

### 数控风扇的电压选择

若使用 DCIN 作为数控风扇电源时，需使用跳帽短接 VIN 范围内的两个 Pin。若想使用 12V

或 5V 作为数控风扇电源时，则需将跳线帽短接 VOT 范围内的两个 Pin，且在 2*4Pin 的 VOT和 VIN 排母上插入 SKR 3-DC MODE

<font  color="red">**注意：3 个数控风扇的电压是统一的，无法为不同的端口单独设置不同的电压。例如 3 个端口的电压可以同时设置为 24V、 12V 或 5V， 但无法设置为 24V+12V+5V 的组合**</font>

<img src=img/SKR3/SKR3_CNC.webp width="600" />

通过设置 SKR 3-DC MODE 上的跳帽来设置 VOT 输出电压为 5V 或是 12V。

<img src=img/SKR3/SKR3_CNC1.webp width="600" />

### 100K NTC 或 PT1000 设置

使用 100K NTC 热敏电阻时，无需插入跳线帽，此时 TH0、TH1 的上拉电阻为 4.7K。使用PT1000 时，需使用跳帽短接下图红框中的两 Pin，此时 TH0、TH1 的上拉电阻为 1K。<font  color="red">**注意：此种方式读出的温度精度会比 MAX31865 差很多。**</font>

<img src=img/SKR3/SKR3_100K.webp width="600" />

### BLTouch 接线

<img src=img/SKR3/SKR3_BLtouch.webp width="600" />

### 打完关机模块(Relay V1.2)接线

<img src=img/SKR3/SKR3_Auto.webp width="600" />

### 断电续打(UPS 24V V1.0)接线

<img src=img/SKR3/SKR3_Power.webp width="600" />

### RGB 接线

<img src=img/SKR3/SKR3_RGB.webp width="600" />

### 断料检测接线

<img src=img/SKR3/SKR3_Filament.webp width="600" />

### 触摸屏接线

<img src=img/SKR3/SKR3_Display.webp width="600" />

### 加热棒 IO

SKR 3 加热棒的 IO 是通过跳帽连接到 MOS 管的，如果需要接激光头之类需要 PWM 信号的设备，可以将跳帽拔掉，将信号线的 IO 直接引出使用

<font  color="red">**注意：此 IO 经过逻辑转换芯片，输出的高电平为 5V，并且无法作为输入使用**</font>

<img src=img/SKR3/SKR3_Heater.webp width="600" />

## **Marlin**

### 安装编译环境

https://github.com/bigtreetech/Document/blob/master/How%20to%20install%20VScode%2BPlatformio.md

https://marlinfw.org/docs/basics/install_platformio_vscode.html

参考这两个链接的说明安装 VSCode 以及 PlatformIO 插件（国内的用户在线安装PlatformIO 插件可能会很慢）

### 下载 Marlin 固件

1、从 Marlin 官网下载最新版本的 bugfix 版本的固件

https://github.com/MarlinFirmware/Marlin/tree/bugfix-2.0.x

2、从我们 github 上下载预先配置好编译环境和主板类型的固件

https://github.com/bigtreetech/SKR-3

### 配置固件

#### 打开 Marlin 工程

您可以通过以下几种方式之一在 VSCode 中打开 Marlin：

- 将下载的 Marlin Firmware 文件夹拖到 VSCode 应用程序图标上。
- 使用 VSCode **File** 菜单中的 **Open...**命令
- 打开 PIO Home 选项卡，然后单击“**Open Project**”按钮

#### 配置编译环境

打开 **platformio.ini** 文件并将 **default_envs** 修改为 **STM32H743Vx_btt**

<img src=img/SKR3/SKR3_Marlin1.webp width="600" />

#### 配置主板类型、串口号

设置主板类型 **MOTHERBOARD** 为 **BOARD_BTT_SKR_3**

<font  color="pink">**#define**</font> <font  color="blue">**MOTHERBOARD BOARD_BTT_SKR_3**</font>

<font  color="pink">**#define**</font> <font  color="blue">**SERIAL_PORT**</font> <font  color="green">**1**</font> (启用 TFT 串口)

<font  color="pink">**#define**</font> <font  color="blue">**BAUDRATE**</font> <font  color="green">**115200**</font> （设置波特率，注意要跟通信的设备一致）

<font  color="pink">**#define**</font> <font  color="blue">**SERIAL_PORT_2 **</font> <font  color="green">**-1** </font>（启用 USB 模拟串口）

<font  color="pink">**#define**</font> <font  color="blue">**SERIAL_PORT_3**</font> <font  color="green">**3** </font> （启用 WIFI 的串口）

以上的设置根据需求自行启用

<img src=img/SKR3/SKR3_Marlin2.webp width="600" />

#### 配置电机驱动

<img src=img/SKR3/SKR3_Marlin3.webp width="600" />

如果使用的驱动为 SPI 模式，还需在 Configuration_adv.h 文件中使能 <font  color="blue">**TMC_USE_SW_SPI**</font>

<font  color="pink">**#define**</font> <font  color="blue">**TMC_USE_SW_SPI**</font>

<img src=img/SKR3/SKR3_Marlin4.webp width="600" />

#### Sensorless homing

<img src=img/SKR3/SKR3_Marlin5.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**SENSORLESS_HOMING**</font> // 打开驱动堵转检测作为 Home 限位开关的功能

<font  color="pink">**#define**</font> <font  color="blue">**xx_STALL_SENSITIVITY **</font> <font  color="green">**8**</font> // 设置堵转检测的灵敏度。TMC2209 范围为 0~255，数值越大越灵敏，容易误触发，现象为 Home 的时候轴还没有回到原点就停下来了，数值越小越不灵敏容易不触发，现象为归零时一直撞轴发出“噔噔噔”的声音。其他驱动范围为63~-64，数值越小越灵敏#define IMPROVE_HOMING_RELIABILITY // 可以在上面单独设置归零时的电流参数(X_CURRENT_HOME)，以便得到最好的归零效果

<font  color="pink">**#define**</font> <font  color="blue">**IMPROVE_HOMING_RELIABILITY**</font> // 可以在上面单独设置归零时的电流参数(xx_CURRENT_HOME)，以便得到最好的归零效果

#### 100K NTC 或 PT1000

通过跳帽设置热敏电阻的上拉电阻为 4.7K（搭配 100K NTC）或是 1K（搭配 PT1000）,Marlin 固件中 1 代表 100K NTC + 4.7K 上拉电阻，1010 代表 PT1000 + 1K 上拉电阻（注意：此种方式读出的温度精度会比 MAX31865 差很多）。

<font  color="pink">**#define**</font> <font  color="blue">**TEMP_SENSOR_0 **</font><font  color="green">**1**</font>

<font  color="pink">**#define**</font> <font  color="blue">**TEMP_SENSOR_1 **</font><font  color="green">**1**</font>

<font  color="pink">**#define**</font> <font  color="blue">**TEMP_SENSOR_BED **</font><font  color="green">**1**</font>

<img src=img/SKR3/SKR3_Marlin6.webp width="600" />

#### BLTouch

<img src=img/SKR3/SKR3_Marlin7.webp width="600" />

<font  color="green">**//#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN**</font>	// 不把 Z_PROBE_PIN 重映射到Z_MIN 端口上

<img src=img/SKR3/SKR3_Marlin8.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**BLTOUCH**</font>  // 使能 BLtouch 功能

<img src=img/SKR3/SKR3_Marlin9.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**NOZZLE_TO_PROBE_OFFSET**</font>  <font  color="green">**{ -40, -10, -2.85 }**</font>  // 设置 BLtouch 探针相对于喷嘴的偏移量

<font  color="pink">**#define**</font> <font  color="blue">**PROBING_MARGIN**</font>  <font  color="green">**10**</font> // 设置调平探测点到最边缘的距离

<img src=img/SKR3/SKR3_Marlin10.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**AUTO_BED_LEVELING_BILINEAR**</font> // 设置调平策略

<font  color="pink">**#define**</font> <font  color="blue">**RESTORE_LEVELING_AFTER_G28**</font> // Home 之后自动重新加载调平补偿

<img src=img/SKR3/SKR3_Marlin11.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**GRID_MAX_POINTS_X **</font> <font  color="green">**5**</font> // 设置调平探测的点数，X 轴探测 5 个点
<font  color="pink">**#define**</font> <font  color="blue">**GRID_MAX_POINTS_Y GRID_MAX_POINTS_X**</font> // Y 轴探测 5 个点如果想用 BLtouch 作为 Z 轴限位开关，不需要更改接线，只需要修改固件的设置即可

<img src=img/SKR3/SKR3_Marlin12.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**USE_PROBE_FOR_Z_HOMING**</font> // 使用 Z Probe(BLtouch) 作为 Z 轴 Home 限位开关

<img src=img/SKR3/SKR3_Marlin13.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**Z_SAFE_HOMING**</font> // Z 轴 Home 时，将 X、Y 移动到指定的坐标(通常是平台中心)，保证 Z 轴 Home 时，Z Probe(BLtouch)的探针在平台的范围内。

#### 打完关机模块(Relay V1.2)

<img src=img/SKR3/SKR3_Marlin14.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**PSU_CONTROL**</font> // 打开控制电源功能，可以通过 M80 开机、M81 关机

<font  color="pink">**#define**</font> <font  color="blue">**PSU_ACTIVE_STATE HIGH **</font> // 设置开机的电平， Relay V1.2 模块是高电平开机低电平关机，所以需要设置为 HIGH

#### 断电续打

断电续打目前有两种实现方式

1、无需外接模块，固件定期向 SD 卡中保存打印状态，断电重启后从 SD 卡中保存的点继续打印，这种方式的缺点就是会向 SD 卡中频繁的写入数据，非常影响 SD 卡的使用寿命。

<img src=img/SKR3/SKR3_Marlin15.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_RECOVERY**</font> // 使能断电续打功能

<font  color="pink">**#define**</font> <font  color="blue">**PLR_ENABLED_DEFAULT true**</font> // true 默认使用开启断电续打

2、外接 UPS 24V V1.0 模块，断电时给主板提供电源并给主板发送信号，提醒主板保存打印状态，这方式只会在断电时向 SD 卡写入数据，对 SD 卡的使用寿命几乎没有影响。

<img src=img/SKR3/SKR3_Marlin16.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_RECOVERY**</font> // 使能断电续打功能

<font  color="pink">**#define**</font> <font  color="blue">**PLR_ENABLED_DEFAULT true**</font> // true 默认使用开启断电续打

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_ZRAISE**</font> <font  color="green">**10**</font> // 断电时喷头抬升 10mm 避免喷头烫坏模型

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_STATE HIGH **</font> // 断电时模块反馈的电平，UPS 24V V1.0 正常工作时反馈低电平，断电时反馈高电平，所以设置为 HIGH

#### RGB彩灯

<img src=img/SKR3/SKR3_Marlin17.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_LED**</font> // 使能 Neopixel 功能
<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_TYPE NEO_GRB **</font> // 设置彩灯的类型
<font  color="green">**//#define NEOPIXEL_PIN 4**</font> // 屏蔽 PIN 设置，使用主板 pin 文件中正确的信号线
<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_PIXELS**</font> <font  color="green">**30**</font> // 彩灯的数量
<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_STARTUP_TEST**</font> // 开机时会依次显示红绿蓝三种颜色便于测试

如果启用了 LCD2004、12864、mini12864 之类的显示器，还可以在界面上启用 RGB 的控制菜单

<img src=img/SKR3/SKR3_Marlin18.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**LED_CONTROL_MENU**</font> // 在屏幕上添加控制 LED 颜色的菜单

#### 断料检测

普通的断料检测模块一般是由机械开关设计而成的，模块给主板一个恒定的高低电平代表耗材的状态

<img src=img/SKR3/SKR3_Marlin19.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**FILAMENT_RUNOUT_SENSOR**</font> // 使能耗材检测的功能
<font  color="pink">**#define**</font> <font  color="blue">**FIL_RUNOUT_ENABLED_DEFAULT true**</font> // true 默认是打开的状态
<font  color="pink">**#define**</font> <font  color="blue">**NUM_RUNOUT_SENSORS**</font> <font  color="green">**1**</font> // 耗材检测传感器的数量
<font  color="pink">**#define**</font> <font  color="blue">**FIL_RUNOUT_STATE LOW **</font> // 耗材异常时的电平状态，根据模块实际情况设置，如果耗材异常时模块发出低电平就设置为 LOW

#### 智能耗材检测(SFS V1.0 / V2.0)

智能耗材检测模块在耗材正常通过时会不断的发出跳变的电平信号，当堵料/断料等异常情况出现，耗材无法正常的通过 SFS，模块就无法发出跳变的信号给主板，主板从而得知耗材异常。

<img src=img/SKR3/SKR3_Marlin20.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**FILAMENT_MOTION_SENSOR**</font> // 设置耗材传感器为编码器类型
<font  color="pink">**#define**</font> <font  color="blue">**FILAMENT_RUNOUT_DISTANCE_MM**</font> <font  color="green">**7**</font> // 设置检测灵敏度，SFS V1.0 推荐设置为 7mm，耗材 7mm 内如果没有电平跳变就意味着耗材异常。SFS V1.0 推荐设置为3mm。

耗材检测还需要通过以下两个地方来设置耗材异常暂停后的动作。

<img src=img/SKR3/SKR3_Marlin21.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**NOZZLE_PARK_FEATURE **</font> // 喷头暂停功能

<font  color="pink">**#define**</font> <font  color="blue">**NOZZLE_PARK_POINT { (X_MIN_POS + 10), (Y_MAX_POS - 10), 20 }**</font> //设置喷头暂停时的 X、Y 的坐标以及 Z 轴抬升的高度

<img src=img/SKR3/SKR3_Marlin22.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**ADVANCED_PAUSE_FEATURE**</font> // 可以设置暂停时耗材回抽的长度及速度，继续打印后耗材挤出的长度和速度等参数。

#### ESP3D

Marlin 中只需设置正确的 “SERIAL_PORT” 和 “BAUDRATE” 即可。主板上 ESP8266 与Marlin 通信的串口是 UART3, 所以将 SERIAL_PORT 设置为 3。

<img src=img/SKR3/SKR3_Marlin23.webp width="600" />

可以在 https://github.com/luc-github/ESP3D 中获取最新的 ESP3D 固件，编译出您自己的二进制文件，将其重命名为 “esp3d.bin” 然后复制到 SD 卡的根目录中，插到主板上然后 Reset，主板中的引导程序会自动将 esp3d.bin 更新到 ESP8266 中，更新完成后文件会被重命名为 “ESP3D.CUR”

#### 编译固件

1、点击底部状态栏中的`√`编译固件

<img src=img/SKR3/SKR3_Marlin24.webp width="600" />

2、编译完成后会生成`firmware.bin`文件，复制到 SD 卡中即可更新固件

<img src=img/SKR3/SKR3_Marlin25.webp width="600" />

## **Klipper**

### 准备工作

#### 下载系统镜像

下载内置你喜欢的 WebUI 的系统镜像，目前主流的有 Fluidd、Mainsail 等。

内置 Fluidd 的系统：https://github.com/fluidd-core/FluiddPI/releases

<img src=img/SKR3/SKR3_Klipper1.webp width="600" />

内置 Mainsail 的系统：https://github.com/mainsail-crew/MainsailOS/releases

<img src=img/SKR3/SKR3_Klipper2.webp width="600" />

或者参考官方的安装说明: https://www.klipper3d.org/Installation.htmlKlipper  使用 Octoprint

#### 下载并安装 Raspberry Pi Imager

下载并安装树莓派官方的烧录软件 https://www.raspberrypi.com/software/

### 烧录镜像

详情请点击: https://bttwiki.com/Software%20Installation.html#write-os

### 设置 WIFI

<font  color="red">**注意：如果使用网线端口而不是 WIFI，可以跳过此步。 **</font>

1、重新拔插一下读卡器

2、在 SD 卡的 boot 盘中找到“fluiddpi-wpa-supplicant.txt”或者“mainsail-wpa-supplicant.txt”文件，用 VSCode 打开（不要用 windows 自带的记事本打开）

<img src=img/SKR3/SKR3_WIFI1.webp width="600" />

3、删除红框中四行行首的‘#’字符，然后设置正确的 WIFI 名称和密码后保存

<img src=img/SKR3/SKR3_WIFI2.webp width="600" />

### ssh 软件连接树莓派

1、安装 ssh 软件 Mobaxterm：https://mobaxterm.mobatek.net/download-home-edition.html

2、将 SD 卡插到树莓派，通电后等待系统启动，大概 1~2 分钟

3、树莓派连上 WIFI 或者插上网线后，会被自动分配一个 IP

4、进入路由器管理界面找到树莓派的 IP

<img src=img/SKR3/SKR3_WIFI3.webp width="600" />

5、或者使用 https://angryip.org/ 工具，扫描当前局域网下的所有 IP 地址，并使用主机名重新排序，找到主机名为 Fluidd 或者 Mainsail 的设备，如下图所示

<img src=img/SKR3/SKR3_WIFI4.webp width="600" />

6、打开已经安装的 Mobaxterm 软件，点击`Session`，在弹出的窗口中点击`SSH`，在 Remote host 一栏中输入树莓派的 IP 地址，点击`OK`

<font  color="red">**注意：电脑和树莓派必须要在同一个局域网下**</font>

<img src=img/SKR3/SKR3_WIFI5.webp width="600" />

7、输入登录名 login as：pi 登录密码：raspberry 进入 SSH 终端界面

<img src=img/SKR3/SKR3_WIFI6.webp width="600" />

### 编译固件

1、ssh 连接到树莓派后，在命令行输入:

```
cd ~/klipper/
make menuconfig
```

使用下面的配置编译固件(如果没有下列选项，请更新 Klipper 固件源码到最新版本)

* [*] Enable extra low-level configuration options 
* Micro-controller Architecture (STMicroelectronics STM32) ---> 
* Processor model (STM32H743) ---> 
* Bootloader offset (128KiB bootloader (SKR SE BX v2.0)) ---> 
* Clock Reference (25 MHz crystal) ---> 
* Communication interface (USB (on PA11/PA12)) --->

<img src=img/SKR3/SKR3_Firmware1.webp width="600" />

2、配置选择完成后, 输入 `q` 退出配置界面，当询问是否保存配置是选择 `Yes`

3、输入 **make** 编译固件，当 **make** 执行完成后会在树莓派的 **home/pi/kliiper/out** 文件夹中生成我们所需要的`klipper.bin`固件，在 ssh 软件左侧可以直接下载到电脑中

<img src=img/SKR3/SKR3_Firmware2.webp width="600" />

4、将 klipper.bin 重命名为`firmware.bin`，复制到 SD 卡中即可更新固件

5、在命令行输入：**ls /dev/serial/by-id/**查询主板的 ID 来确认固件是否烧录成功，如果烧录成功了会返回一个 klipper 的设备 ID，如下图所示

<img src=img/SKR3/SKR3_Firmware3.webp width="600" />

复制保存此 ID，配置文件中需要设置此 ID

### 配置 Klipper

1、在电脑的浏览器中输入树莓派的 IP 访问，如下图所示的路径中下载主板的参考配置，如果找不到此文件，请更新 Klipepr 固件源码到最新版本，或者到 github 下载:https://github.com/bigtreetech/SKR-3

<img src=img/SKR3/SKR3_Klipper1.webp width="600" />

2、将主板的配置文件上传到 Configuration Files 中, 并重命名为`printer.cfg`

<img src=img/SKR3/SKR3_Klipper2.webp width="600" />

3、将配置文件中的 ID 号修改为主板实际的 ID

<img src=img/SKR3/SKR3_Klipper3.webp width="600" />

4、按照 https://www.klipper3d.org/Overview.html 的说明配置机器的具体功能

### 固件更新

1. Micro SD 卡更新
2. 确保 Micro SD 卡已经被格式化为 FAT32 文件系统
3. 将自行编译或从 github 下载的固件重命名为`firmware.bin`（注意：明确电脑系统的 扩 展 名 设 置 ， 有 部 分 用 户 隐 藏 了 扩 展 名 ， `firmware.bin` 实 际 显 示 的 是`firmware`）
4. 将`firmware.bin`复制到 Micro SD 卡的根目录中
5. 将 Micro SD 卡插入主板的卡槽中，给主板重新通电，主板的引导程序会自动更新固件
6. 固件更新的过程中，主板右上角的状态指示灯会开始闪烁
7. 当状态指示灯停止闪烁并且 Micro SD 卡中的文件名被重命名为“FIRMWARE.CUR”代表固件更新成功

## **注意事项**

1. 不使用 PT1000 时，不能往上面插跳线帽，否则 100K NTC 无法正常使用。
2. 主板所接热床电流必须小于等于 10A，若想要使用大功率热床时，建议选择 24V 供电的热床，使用 24V 给主板供电。
3. 注意数控风扇的电源选择，必须设置跳帽，风扇才能正常工作。
4. 注意 USB 端口开关的设置，当插入电脑没反应时，应确保双刀双掷开关处于弹起状态的 USB 模式。
5. 主板采用不自弹卡槽，行程比自弹型卡槽少很多，用户插卡时动作务必要轻而缓，切忌不可大力插卡，造成的损坏，我司不予以承则。

## **FAQ**

**问：热床、加热棒、风扇端口的最大电流** 
答：热床端口最大输出电流：10A，峰值 11A
 	  加热棒端口最大输出电流：5.5A，峰值 6A
	   风扇接口最大输出电流：1A，峰值 1.5A
       加热棒 + 驱动 + 风扇的总电流需小于 10A

**问：SD 卡无法更新固件**

答：确保 SD 卡已经被格式化为 FAT32 文件系统，确保固件名称是`firmware.bin`，有部分用户的电脑设置了“隐藏已知的扩展名”，显示的是`firmware.bin`，文件名实际上是`firmware.bin.bin`
