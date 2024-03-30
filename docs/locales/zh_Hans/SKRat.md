# SKRat

<img src=img/SKRat/SKRat_Title.png width="600" />

## **产品简介**

BIGTREETECH SKRat V1.0 主板是必趣创新科技（深圳）有限公司联合 RatRig 合作推出的一款 3D 打印机主板。

## **产品特点**

- 采用 32 位主频 64MHz 的 ARM Cortex-M0+系列 STM32G0B1VET6 主控芯片。
- 主板预留 BOOT 按键，用户可以通过 DFU 方式更新主板引导程序。
- 热敏电阻端口保护电路，避免因热床或者加热棒漏电导致主控芯片烧毁。
- 1 路常开风扇，4 路 2 线风扇, 2 路 4 线风扇。
- 所有风扇均可通过跳帽实现 VIN、12V、5V 电压选择，每个风扇都可独立设置风扇工作电压。
- 板载 TMC 驱动的 UART/SPI 工作模式，板载 DIAG 功能引脚，只需通过简单的拔插跳帽即可使用。
- 支持断电续打、断料检测、打完关机、BLTouch、接近开关、RGB 灯等功能。
- 板载不自弹 MicroSD 卡槽，可通过 SD 卡/USB DFU 升级配置固件。
- 板载 CAN bus 接口。
- SPI 扩展口引出+3.3V 和+5V 两路电压，方便连接 ADXL345 加速度计等扩展模块。
- 板载 UART 和 I2C 扩展输出接口。

## **规格**

| 外观尺寸                         |         110*85mm 详情请参考：**BTT SKRat_V1.0_SIZE**         |
| :------------------------------- | :----------------------------------------------------------: |
| **安装尺寸**                     |                        **110 x 85mm**                        |
| **微处理器**                     |               **ARM Cortex-M0+ STM32G0B1VET6**               |
| **输入电压**                     |                       **DC12V-DC24V**                        |
| **逻辑电压**                     |                         **DC 3.3V**                          |
| **加热接口**                     |          **热床（HB）、加热棒（HE0）加热棒（HE1）**          |
| **热床端口最大输出电流**         |                      **10A，峰值 15A**                       |
| **加热棒端口最大输出电流**       |                       **8A，峰值 10A**                       |
| **风扇接口**                     |         **4 路数控风扇,1 路常开方式，2 路 4 线风扇**         |
| **风扇接口最大输出电流**         |                      **1A，峰值 1.5A**                       |
| **加热棒 + 驱动 + 风扇的总电流** |                          **＜15A**                           |
| **拓展接口**                     | **BLTouch（Servos、Probe）、PS-ON、PWR-DET、Fil-DET、RGB、CAN-FD、SPI、UART、I2C** |
| **驱动工作模式支持**             |                   **SPI, UART, STEP/DIR**                    |
| **电机驱动接口**                 |           **X、Y、Z（双 Z 轴）、E0、E1 总共五路**            |
| **温度传感器接口**               |               **5 路 NTC，1 路 PT100/PT1000**                |
| **显示**                         |          **2.4 寸 TFT、3.5 寸 TFT、LCD12864 屏等**           |
| **PC 通信接口**                  |                   **Type-C 型，方便插拔**                    |
| **支持文件格式**                 |                          **G-code**                          |
| **推荐软件**                     | **Cura, Simplify3D, Pronterface, Repetier-host, Makerware**  |

## **固件支持**

此产品仅支持 Marlin 和 Klipper 固件。

## **尺寸**

<img src=img/SKRat/SKRat_Dimension.png width="600" />

## **外围设备接口**

### 接口示意图

<img src=img/SKRat/SKRat_Diagram.png width="600" />

### 引脚说明

<img src=img/SKRat/SKRat_Pinout.png width="600" />

<font  color="red">**详情请看 BTT SKRat_V1.0_SIZE.**</font>

## **接口介绍**

### LED 指示灯说明

主板上电后:

Power 红灯为电源指示灯，整板正常供电后保持常亮。

Status 绿灯为状态指示灯：更新固件时会闪烁，完成后由固件控制。

D10 绿灯为热床 HB 状态指示灯：加热时常亮，不加热时熄灭。

D3,D6 绿灯为加热棒 E0 ,E1 状态指示灯：加热时常亮，不加热时熄灭。

FAN0,FAN1,FAN2,FAN3 蓝灯为数控风扇 FAN0，FAN1,FAN2,FAN3,状态指示灯：数控风扇开启时亮起，关闭时熄灭。

MFAN 蓝灯为数常开风扇 MFAN 状态指示灯：正常供电时保持常亮。

### **USB 供电**

BIGTREETECH SKRat 主板上电之后，板子中间 Power 红灯会亮起，表示供电正常。如需使用 USB 给主板供电时，需使用跳线帽短接 USB_5V。

<img src=img/SKRat/SKRat_USB.png width="600" />

### 使用 DFU 下载固件

按住板载 BOOT 按键情况下，给主板上电，芯片进入 DFU 模式。此时可以连接 TYPEC 到 PC端，通过 DFU 模式对主控芯片进行程序烧录。

<img src=img/SKRat/SKRat_DFU.png width="600" />

### TMC 驱动的工作模式选择方法

普通的 STEP/DIR 模式：（如：A4988、DRV8825、LV8729、ST820 等）根据驱动细分表来选择短路帽短接 MS0-MS2。

<img src=img/SKRat/SKRat_STEP.png width="600" />

详情请点击: https://bigtreetech.github.io/docs/Tutorials.html

#### TMC 驱动的 UART 模式选择

TMC 驱动的 UART 模式：（如：TMC2208、TMC2209、TMC2225 等）每个轴使用一个短路帽短接图中红框位置即可，细分和驱动电流通过固件进行设置。

<img src=img/SKRat/SKRat_UART.png width="600" />

#### TMC 驱动的 SPI 模式选择

TMC 驱动的 SPI 模式：（如：TMC2130、TMC5160、TMC5161 等）每个轴使用四个短路帽短接图中红框位置即可，细分和驱动电流通过固件进行设置。

<img src=img/SKRat/SKRat_SPI.png width="600" />

#### Sensorless homing 功能选择

使用跳帽对相应的轴进行如图连接，即可使用 Sensorless homing 功能。

<img src=img/SKRat/SKRat_Sensorless.png width="600" />

<font  color="red">**注：选择该功能就不能使用外部 ENDSTOP！！！**</font>

#### 风扇电压选择

使用+5V 为风扇供电

使用跳帽短接风扇电压选择的 5V 电压的横向排针。

<img src=img/SKRat/SKRat_FAN5V.png width="600" />

**使用 12V 为风扇供电**

使用跳帽短接风扇电压选择的 12V 电压的横向排针。

<img src=img/SKRat/SKRat_FAN12V.png width="600" />

**使用电源输入电压为风扇供电**

使用跳线帽短接下图中突出显示的水平引脚。

<img src=img/SKRat/SKRat_FANVIN.png width="600" />

<font  color="red">**备注：禁止短接风扇电压选择排针左侧任意两排针，否则会造成主板损坏（如下图）**</font>

<img src=img/SKRat/SKRat_FANVIN1.png width="600" />

#### 两线风扇连接

板载 4 路 2 线风扇(FAN0,FAN1,FAN2,FAN3)，和一路常开风扇(MFAN)

<img src=img/SKRat/SKRat_2pinFanWiring.png width="600" />

#### 四线风扇连接

板载 2 路 4 线风扇，通过 Four-Wire FAN0，Four-Wire FAN1 连接

<img src=img/SKRat/SKRat_4pinFanWiring.png width="600" />

<font  color="red">**注：使用风扇的额定工作电压必须与风扇选择的电压保持一致，防止由于工作电压不匹配造成风扇工作不正常或者损坏。**</font>

### 接近开关选择与设置

#### 接近开关电源选择

通过跳帽短接对应的排针，可实现接近开关工作电压选择，可选电压为 VIN,+12V,+5V

<img src=img/SKRat/SKRat_Voltage.png width="600" />

#### 接近开关类型选择

通过跳帽选择接近开关类型为 PNP 型或者 NPN 型。PNP 型需要拔出跳帽，NPN 型需要插入跳帽。

<img src=img/SKRat/SKRat_PNP.png width="600" />

<font  color="red">**备注：禁止短接接近开关电压选择横向排针中的任意两个，否则会造成主板损坏（如下图） **</font>

<img src=img/SKRat/SKRat_PNP1.png width="600" />

### 接近开关接线

<img src=img/SKRat/SKRat_Proximity.png width="600" />

### 打完关机模块(BIGTREETECH Relay V1.2)接线

<img src=img/SKRat/SKRat_Auto.png width="600" />

### 断电续打(BTT UPS 24V V1.0)接线

<img src=img/SKRat/SKRat_UPS.png width="600" />

### RGB 接线

<img src=img/SKRat/SKRat_RGB.png width="600" />

### BLTouch 接线

<img src=img/SKRat/SKRat_Bltouch.png width="600" />

### 断料检测接线

<img src=img/SKRat/SKRat_Filament.png width="600" />

### EXP1+EXP2 与 LCD 屏的接线

<img src=img/SKRat/SKRat_LCD.png width="600" />

### SPI,I2C UART 扩展口连接

<img src=img/SKRat/SKRat_I2C.png width="600" />

### 100K NTC 热敏电阻

使用 100K NTC 热敏电阻时，NTC 电阻接入 THB，TH0-TH3 即可，此时 TH0-TH3 的上拉电阻为 4.7K 0.1%。

<img src=img/SKRat/SKRat_100K.png width="600" />

通过 MAX31865 的方式使用 PT100/PT1000 如下图:

<img src=img/SKRat/SKRat_PT100.png width="600" />

### CAN BUS 连接

CAN BUS 传感器连接到主板 CAN BUS 接口即可

<img src=img/SKRat/SKRat_CAN.png width="600" />

<font  color="red">**备注：主板 CAN BUS 接口输出电压固定，电压值等于输入电压**</font>

## Marlin
