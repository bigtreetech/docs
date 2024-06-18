# SKR 3 EZ

<img src=img/SKR3_EZ/SKR3_EZ_Title.png width="600" />

## **产品简介**

BIGTREETECH SKR 3 EZ V1.0 主板是必趣创新科技（深圳）有限公司针对本司 EZ 系列驱动模块在 SKR 3 基础上更新的一块 32 位 3D 打印机主板，其既兼容 EZ 系列驱动模块，也兼容 TMC 系列的驱动模块。

## **功能亮点**

- 采用 32 位主频 480MHz 的 ARM Cortex-M7 系列 STM32H743VI 主控芯片，性能大幅提升
- 电源芯片采用 TPS5450-5A，支持 DC12/24V 电源输入,该芯片输出电流高达 5A，峰值可达 6A，完美支持树莓派供电
- 主板预留 BOOT 按键，用户可以通过 DFU 方式更新主板引导程序
- 增加热敏电阻部分的保护电路，避免因热床或者加热棒漏电导致主控芯片烧毁
- 数控风扇通过外插电源模块实现 24V、12V、5V 电压选择，省去客户外接变压模块的操作，从而减少主板损坏几率
- 热敏电阻可通过跳线选择上拉电阻值，以此方式支持 PT1000，而不需外接模块，方便客户 DIY 使用
- 支持本公司所有版本的串口屏、SPI 屏和 LCD 屏
- 通过 SD 卡升级配置固件，操作简单方便高效
- 板载 DIAG 功能引脚，只需通过简单的拔插跳帽即可使用
- 支持断电续打、断料检测、打完关机、BLTouch、RGB 灯等功能
- 采用高性能 MOSFET 管，减少发热量
- 采用可更换的保险丝，方便更换
- WIFI 模块（ESP-12S、ESP-07、ESP32）通用接口
- 板载不自弹 MicroSD 卡槽，且为 SDIO 工作方式，大大加快了传输速率
- 板载 EEPROM，方便用户保存参数信息
- 预留两种方式的 CAN 接口，USB 口和 XH2.54 6Pin 端子接口，其中 USB 口则是通过双刀双掷开关进行 CAN 与 USB 的选择，方便客户使用 CAN 接口的其它配件
- 温度传感器接口采用高精度上拉电阻
- 采用两种驱动座子，既兼容本司 EZ 系列驱动模块，也兼容 TMC 系列驱动模块
- 各个电机驱动模块都可通过跳帽选择对应的电机电压
- 电机电源最大支持 48V，且针对使用 TMC5160 和 EZ5160 时的较大电压，采用隔离芯片保护主控不烧 IO

## **规格**

| 外观尺寸                         | 109.7*98mm 详情请参考：**BIGTREETECH SKR 3 EZ V1.0-SIZE.pdf** |
| :------------------------------- | :----------------------------------------------------------: |
| **安装尺寸**                     |                        **102 x 76mm**                        |
| **微处理器**                     |                **ARM Cortex-M7 STM32H743VI**                 |
| **EEPROM**                       |                       **24C32 32Kbit**                       |
| **输入电压**                     |                       **DC12V-DC24V**                        |
| **电机电压**                     |                       **DC12V-DC48V**                        |
| **逻辑电压**                     |                         **DC 3.3V**                          |
| **加热接口**                     |               **热床（HB）、加热棒（E0、E1）**               |
| **热床端口最大输出电流**         |                      **10A，峰值 11A**                       |
| **加热棒端口最大输出电流**       |                      **5.5A，峰值 6A**                       |
| **风扇接口**                     |     **三个数控风扇，三个常开风扇，其中数控风扇电压可选**     |
| **风扇接口最大输出电流**         |                      **1A，峰值 1.5A**                       |
| **加热棒 + 驱动 + 风扇的总电流** |                         **小于 10A**                         |
| **WIFI 接口**                    |                 **ESP-12S、ESP-07S、ESP32**                  |
| **拓展接口**                     | **BLTouch（Servos、Probe）、PS-ON、PWR-DET、Fil-DET、RGB、CAN FD** |
| **电机驱动**                     | **支持 EZ5160、EZ2209、EZ2208、EZ2225、EZ2226、EZ2130、EZ6609、TMC5160、TMC2209、TMC2225、TMC2226、TMC2208、TMC2130 等** |
| **驱动工作模式支持**             |                   **SPI、UART、STEP/DIR**                    |
| **电机驱动接口**                 |           **X、Y、Z（双 Z 轴）、E0、E1 总共五路**            |
| **温度传感器接口**               |       **1 路 100K NTC，2 路 100K NTC 和 PT1000 可选**        |
| **显示屏**                       |            **串口触摸屏、SPI 触摸屏、LCD 显示屏**            |
| **PC 通信接口**                  |                   **方形 USB A，方便插拔**                   |
| **支持文件格式**                 |                          **G-code**                          |
| **支持机器结构**                 |       **Cartesian、Delta、Kossel、Ultimaker、CoreXY**        |
| **推荐软件**                     | **Cura、Simplify3D、Pronterface、Repetier-host、Makerware**  |

## **固件支持**

此产品支持 Marlin、Klipper 和 RRF(RepRapFirmware)固件。

## **尺寸**

<img src=img/SKR3_EZ/SKR3_EZ_Dimension.png width="600" />

## **外围设备接口**

### 接口示意图

<img src=img/SKR3_EZ/SKR3_EZ_Pinout_CN.png width="600" />

### 引脚说明

<img src=img/SKR3_EZ/SKR3_EZ_Pin.png width="600" />

## **接口介绍**

### USB供电

SKR 3 EZ V1.0 主板上电之后，MCU 右上角的 D7(Power)红灯会亮起，表示供电正常。板子中部的 VUSB 是电源选择端，仅当使用 USB 给主板供电或需通过 USB 向外供电时，才需要使用跳帽将 VUSB 短接。

<img src=img/SKR3_EZ/SKR3_EZ_USB.png width="600" />

### 电机电压选择

#### 电机电压选择主板电源电压

<img src=img/SKR3_EZ/SKR3_EZ_Motor1.png width="600" />

#### 电机电压选择电机电源电压

<img src=img/SKR3_EZ/SKR3_EZ_Motor2.png width="600" />

### 步进电机驱动

#### TMC 驱动的独立模式

细分数需要通过固件来给对应的细分配置引脚设置高或低电平。

#### TMC/EZ 驱动的 UART/SPI 模式

TMC 系列驱动不支持同时使用既包括 UART 和 SPI 的驱动，例如：X，Y 轴使用 TMC/EZ2209（UART），Z，E0 轴使用 TMC/EZ5160(SPI)。

EZ 系列驱动支持同时使用既包括 UART 和 SPI 的驱动。

#### TMC 驱动的 DIAG(Sensorless Homing)

如图示位置，使用 Sensorless Homing 功能时就插上跳帽，不使用则不插，无需剪断驱动的 DIAG 引脚。

<img src=img/SKR3_EZ/SKR3_EZ_Motor3.png width="600" />

### USB 与 CAN 模式

如下图所示双刀双掷开关处于弹起状态时为 USB 模式，处于按下状态时为 CAN FD 模式。

<img src=img/SKR3_EZ/SKR3_EZ_Motor4.png width="600" />

### 数控风扇的电压选择

若使用 DCIN 作为数控风扇电源时，需使用跳帽短接 VIN 范围内的两个 Pin。若想使用 12V或 5V 作为数控风扇电源时，则需将跳线帽短接 VOT 范围内的两个 Pin，且在 2*4Pin 的 VOT 和 VIN 排母上插入 SKR 3-DC MODE。

<img src=img/SKR3_EZ/SKR3_EZ_Voltage.png width="600" />

通过设置 SKR 3-DC MODE 上的跳帽来设置 VOT 输出电压为 5V 或是 12V。

<img src=img/SKR3_EZ/SKR3_EZ_Voltage1.png width="600" />

### 100K NTC 或 PT1000 设置

使用 100K NTC 热敏电阻时，无需插入跳线帽，此时 TH0、TH1 的上拉电阻为 4.7K。使用PT1000 时，需使用跳帽短接下图红框中的两 Pin，此时 TH0、TH1 的上拉电阻为 2.2K

<font  color="red">**注意：此种方式读出的温度精度会比 MAX31865 差很多**</font>

<img src=img/SKR3_EZ/SKR3_EZ_100K.png width="600" />

### BLTouch 接线

<img src=img/SKR3_EZ/SKR3_EZ_BLtouch.png width="600" />

### 打完关机模块(Relay V1.2)接线

<img src=img/SKR3_EZ/SKR3_EZ_Relay.png width="600" />

### 断电续打(UPS 24V V1.0)接线

<img src=img/SKR3_EZ/SKR3_EZ_UPS.png width="600" />

### RGB 接线

<img src=img/SKR3_EZ/SKR3_EZ_RGB.png width="600" />

### 断料检测接线

<img src=img/SKR3_EZ/SKR3_EZ_Break.png width="600" />

### 触摸屏接线

<img src=img/SKR3_EZ/SKR3_EZ_Touch.png width="600" />

### 加热棒 IO

SKR 3 EZ 加热棒的 IO 是通过跳帽连接到 MOS 管的，如果需要接激光头之类需要 PWM 信号的设备，可以将跳帽拔掉，将信号线的 IO 直接引出使用。

<font  color="red">**注意：此 IO 经过逻辑转换芯片，输出的高电平为 5V，并且无法作为输入使用。**</font>

<img src=img/SKR3_EZ/SKR3_EZ_Heater.png width="600" />

## **Marlin**

详情请点击：https://bttwiki.com/zh/SKR%203.html#marlin

## **Klipper**

详情请点击：https://bttwiki.com/zh/SKR%203.html#klipper

## **Firmware Update**

For details, please click:https://bttwiki.com/zh/SKR%203.html#firmware-update

## **Precausions**

For details, please click:https://bttwiki.com/zh/SKR%203.html#precausions

## **FAQ**

For details, please click:https://bttwiki.com/zh/SKR%203.html#faq
