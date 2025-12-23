# M5P

!!! info "Bigtreetech WiKi NEO"
    此界面已迁移到 Bigtreetech WiKi NEO

    [M5P Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/board-docs/manta-series/manta-m5p)

[<img src=img/M5P/M5P_Title.webp width="600" />](https://bigtreetech.github.io/docs/M5P.html)

## **产品简介**

BIGTREETECH MANTA M5P是必趣创新科技（深圳）有限公司3D打印团队为Klipper运行开发的32位主板。它可以使用核心板运行Klipper，这大大消除了主板和树莓派之间的大量布线，也大大节省了机箱空间。BTB头标是在MANTA M5P上设计的，因此客户可以选择使用CM4或其他解决方案，从而解决了Raspberry Pi CM4的疯狂短缺。

## **功能亮点**

- 32位64MHz ARM Cortex-M0+系列STM32G0B1RET6 MCU。
- 热敏电阻电路受到保护，以防止加热床和加热器芯连接短路导致MCU损坏。
- CNC风扇的电压可选择24V、12V和5V，无需再进行外部降压，从而防止用户错误导致的电路板损坏。
- 热敏电阻连接支持使用跳线设置上拉电阻值，PT1000不再需要额外的模块。
- MCU固件可以通过SD卡升级，也可以通过Klipper的make-flash命令使用DFU。
- 主板和核心板之间采用BTB连接器，除了CM4之外，还可以选择其他核心板解决方案。
- TMC驱动器和DIAG引脚的集成SPI和UART模式，可通过跳线轻松配置。
- 支持断料检测、BLTouch、RGB等。
- 可更换保险丝，便于维护。
- 板载接近开关端口，支持NPN和PNP选型，（24V、12V、5V）电压选择。
- 板载SPI接口，用于连接加速度传感器，以实现Klipper的输入整形。
- 配备了全新的E-FUSE保险丝，可以快速响应，增强自我保护能力，大大减少因短路或点火而导致的主板烧坏。

## **规格**

| 尺寸                  | 137.5mm x 95mm，详情请参考BIGTREETECH MANTA M5P V1.0-SIZE-top.pdf |
| --------------------- | ------------------------------------------------------------ |
| 安装尺寸              | 请参阅BIGTREETECH MANTA M5P V1.0-SIZE-top.pdf                |
| MCU                   | ARM Cortex-M0+ STM32G0B1RET6 64MHz                           |
| 驱动器输入电压        | VIN（DC12V-24V）、HV（DC24V-56V）可选                        |
| 主板输入电压          | VIN=DC12V或DC24V                                             |
| 逻辑电压              | 直流3.3V                                                     |
| 加热端连接            | 加热床（HB）、加热棒（HE0、HE1）                             |
| HB端口最大电流        | 10A连续，11A瞬时                                             |
| 加热棒最大电流        | 5.5A连续，6A瞬时                                             |
| 风扇端口              | 3 x 2引脚CNC（FAN0、FAN1、Pi FAN）（5/12/24V可选电压），1 x常开（FAN） |
| 风扇端口最大电流      | 1A连续，1.1A瞬时                                             |
| 风扇端口的总电流      | ＜2.5A                                                       |
| 扩展端口              | CAN、探针、RGBx2、SPI、EXP1+EXP2、MIN1-MIN4、40Pin GPIO      |
| 电机驱动器            | 支持TMC5160, TMC2209, TMC2225, TMC2226, TMC2208, TMC2130, ST820, LV8729, DRV8825, A4988... |
| 驱动模式              | SPI, UART, STEP/DIR                                          |
| 电机驱动器端口        | Motor1, Motor2, Motor3 (双Motors端口), Motor4, Motor5   共5个通道 |
| 热敏电阻              | 3 x 100K NTC，其中两个可用于NTC和PT1000                      |
| 显示                  | SPI触摸屏、LCD显示屏、HDMI触摸屏、DSI触摸屏                  |
| PC连接                | Type-C                                                       |
| 界面                  | USB 2.0x2，LAN，DSI，CSI，SPI，HDMI0，HDMI1，SOC卡，MCU卡    |
| 支持的运动学          | Cartesian, Delta, Kossel, Ultimaker, CoreXY                  |
| 推荐的切片软件/控制台 | Cura, Simplify3D, Pronterface, Repetier-host, Makerware      |

## **尺寸**

<img src=img/M5P/M5P_Dimension1.webp width="600" />

<img src=img/M5P/M5P_Dimension2.webp width="600" />

## **接口示意图**

<img src=img/M5P/M5P_Pinout_CN.webp width="600" />

## **引出线**

<img src=img/M5P/M5P_Pinout.webp width="600" />

## **硬件配置**

**usb电源**

BIGTREETECH MANTA M5P通电后，MCU左侧的红灯D22将亮起，表示已通电。当仅使用USB为板供电或通过USB供电时，请将跳线帽插入VUSB。

<img src=img/M5P/M5P_USB_PS.webp width="600" />

## **硬件安装**

### **步进驱动器**

#### **STEP/DIR（单机）模式**

例如：A4988、DRV8825、LV8729、ST820等，根据微步图连接跳线（MS0-MS2）。

<img src=img/M5P/M5P_STEP_Mode.webp width="600" />

**<font  color="red">注：对于A4988或DRV8825，RST和SLP必须通过跳线短路。</font>**

详情请点击： https://z1996xm.github.io/BIGTREETECH/Tutorials.html


#### **TMC驱动器的UART模式**

例如：TMC2208、TMC2209、TMC2225等，根据下图放置跳线，微步和电流可以在固件中配置。

<img src=img/M5P/M5P_UART_Mode.webp width="600" />

#### **TMC驱动器的SPI模式** 

例如：TMC2130、TMC5160、TMC2160等，根据下图放置跳线，微步和电流可以在固件中配置。

<img src=img/M5P/M5P_SPI_Mode.webp width="600" />

#### **TMC驱动的DIAG（无传感器归位）** 

当使用无传感器归位时，根据下图放置跳线，不使用时无需切断DIAG引脚。

<img src=img/M5P/M5P_DRI_Diag.webp width="600" />

#### **驱动器电压选择** 

<img src=img/M5P/M5P_DRI_Vol1.webp width="600" />

<img src=img/M5P/M5P_DRI_Vol2.webp width="600" />

### **通过BTB连接安装核心板**

**M5P+CM4：注意方向，如下图所示：**

<img src=img/M5P/M5P_CM4.webp width="600" />

**M5P+CB1：注意方向，如下图所示：**

<img src=img/M5P/M5P_CB1.webp width="600" />

### **数控风机的电压选择**

通过跳线帽，您可以将输出电压设置为5V、12V或24V。

**<font  color="red">注：我们不对因电压选择错误而导致的风扇烧坏负责。</font>**

在选择电压之前，请确认风扇支持的电压。

<img src=img/M5P/M5P_Vol_CNC.webp width="600" />

### **100K NTC或PT1000设置**

当使用100K NTC时，无需连接跳线，TH0-TH3的上拉电阻为4.7K 0.1%。当使用PT1000时，下图所示的引脚需要通过跳线连接，并联4.12K 0.1%电阻器，TH0-TH1的上拉电阻为2.2K。（这种方法在读取温度方面的精度远低于MAX31865。）

<img src=img/M5P/M5P_100K.webp width="600" />

### **BLTouch 接线**

<img src=img/M5P/M5P_BLTouch_Wiring.webp width="600" />

### **LCD屏幕和EXP1+EXP2之间的接线**

<img src=img/M5P/M5P_LCD_E1_E2.webp width="600" />

### **RGB 接线**

<img src=img/M5P/M5P_RGB_Wiring.webp width="600" />

### **断料检测 接线**

<img src=img/M5P/M5P_Filament.webp width="600" />

### **40 Pins GPIO**

<img src=img/M5P/M5P_40_Pins.webp width="600" />

### **DSI/CSI 接线**

<img src=img/M5P/M5P_DSI.webp width="600" />

### **接近开关 接线**

如下图所示，以24V为例，常开（NPN型），无需通过跳线帽短路：

<img src=img/M5P/M5P_Proximity.webp width="600" />

如下图所示，以24V为例，常闭（PNP型），需要通过跳线帽进行短路。

<img src=img/M5P/M5P_Proximity1.webp width="600" />

## **软件配置**

详情请点击：

https://bigtreetech.github.io/docs/zh/Software%20Configuration.html

## **软件安装**

详情请点击：

https://bigtreetech.github.io/docs/zh/Software%20Installation.html

## **常问问题**

- 所有插拔操作都应在断电的情况下进行，包括启用eMMC写入。
- 注意CM4和CB1的散热。如果正在运行的应用程序消耗了太多的系统资源，CM4/CB1将非常严重地变热。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/manta-m4p-m8p?variant=40215552852066



**如果您对产品有任何问题，请与我们联系并提交支持工单**

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
