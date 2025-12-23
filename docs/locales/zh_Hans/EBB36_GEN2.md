# **EBB36 GEN2 V1.0**

<img src=img/EBB36_GEN2/EBB36_GEN2.jpg width="300"/>

- **产品链接**: [点此购买](https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-bigtreetech-ebb-36-42-can-bus-u2c-v2-1-for-connecting-klipper-expansion-device-support-pt1000connecting-klipper-expansion-device?variant=42238091821154)  

## **修订历史**

| 版本号   | 日期              | 更新内容   |
|:---------|:------------------|:-----------|
| v1.00    | 2025年10月17日      | 初始版本   |

## **产品简介**

跨世代的工具板设计

全方位的电路保护机制显著降低了硬件损坏风险；配置信号增强电路，实现更稳定、更高效的 CAN 与 USB 通讯性能。

通过单个跳线帽即可轻松切换 CAN 与 USB 模式

带来业内领先的可靠性与使用体验。

### **产品特点**

* 几乎所有输入与输出电路均具备电路保护，防止因误接线造成的硬件损坏。

* 通过单个跳线实现CAN与USB通信模式切换，输出端口随之自动适配新设置。

* 内置信号增强模块，确保 USB 连接稳定可靠。

* 经75°C腔体温度长时耐久性测试验证（腔体温度超过60°C时建议启用风扇散热）。

* 热端风扇配备3线测速接口，支持风扇故障实时检测。

* 所有风扇均支持电压选择（5V/24V）。

* 预留 I²C 接口，可连接环境传感器或 Eddy 模块。

* 独立热敏电阻用于电机驱动温度监测。

* 三路 PWM 可控风扇输出，具备短路与过热保护功能。

* 复位键与Boot按键位置优化，操作更便捷。

* 主控芯片：ARM Cortex-M0+ 内核 STM32G0B1CBT6，主频 64MHz。

* 安装孔接地设计，有效释放静电。

### **产品参数**

| 产品名称 | BIGTREETECH EBB 36 GEN2 V1.0 |
|------|------|
| 微处理器 | ARM Cortex-M0+ STM32G0B1CBT6 64MHz |
| 主板输入电压 | DCIN=DC24V-DC28V |
| 逻辑电压 | DC3.3V |
| 加热棒端口功率 | 96W（24V 4A） |
| 热端热敏电阻 | PT1000 or NTC |
| 风扇接口 | 2 个双线 PWM 风扇（FAN0、FAN1），1 个带转速反馈的三线风扇（FAN2） |
| 风扇接口额定电流 | 总和：1A，峰值1.5A，超过电流和过热会自动保护 |
| 主板5V输出最大电流 | 峰值1.5A |
| 拓展接口 | Probes (Multiplexed Microprobe, BLTouch, 24V Probe port), RGB, TH, motors, USB/CAN expansion ports等 |

### **产品尺寸**

<img src=img/EBB36_GEN2/size.jpg width="500"/>

## **外设接口**

### **主板接口示意图**

<img src=img/EBB36_GEN2/zh/interface.jpg width="1000"/>

### **转接板接口示意图**

<img src=img/EBB36_GEN2/zh/interface_adapter.jpg width="1000"/>

## **接口介绍**

### **供电接口**

<img src=img/EBB36_GEN2/zh/power_supply.jpg width="300"/>

* **关于转接板的重要说明**

    为了在工具板上集成更多功能，我们将部分核心保护元件设计在了转接板上。因此供电必须经过转接板，安装时请勿跳过这一环节直接给工具板供电。

* **供电连接方式**

    使用随附线缆将转接板连接到24V电源即可。连接时请仔细核对PCB板上的引脚图和丝印标识，确保正负极接对。转接板配备了MX输出接口，可以同时传输电源和通信信号。如果您使用的是老款线束（电源线和信号线分开的那种），我们也提供了电源螺丝端子接口。

    > **需要注意的是**：螺丝端子只能用于CAN连接，USB连接必须使用配套的屏蔽线缆。

    电源接口为XT30型，额定电压24V。如果需要让线缆穿过密封套管，可能需要先拆下MX连接器，可以使用这个工具来操作: [Molex Microfit 3.0 拔针器](https://www.printables.com/model/394113-molex-microfit-30-extractor-using-staplers-din-246)。

    拆线后重新装回时，请务必按照原来的顺序插入，不要接错位置。

* **多重保护**

    本系统具备完善的多层保护设计。防反接保护分两级：转接板上有MOSFET保护电路作为第一道防线，工具板上还有二极管应急保护作为第二道防线。短路保护通过保险丝实现，当电流超过5A时会自动断开。特别值得一提的是，正极和地线都配有独立保险丝，这样即使在USB连接状态下不小心接反了电源，地线回路同样受到保护。防护等级极高。


### **数控风扇的电压选择**

* FAN0，FAN2输出接口

    <img src=img/EBB36_GEN2/fan0.jpg width="500"/>

* FAN1 输出接口

    <img src=img/EBB36_GEN2/fan1.jpg width="500"/>


本产品配备三个风扇接口：FAN0、FAN1和FAN2。其中FAN0和FAN1为2线接口，FAN2为3线接口。三个风扇接口的输出电压（5V或24V）均通过跳线帽设置。

FAN2接口采用了巧妙的设计：由于热端风扇通常以100% PWM占空比全速运行，我们利用这一特点通过3线接口实现了转速反馈功能。这样固件就能检测到风扇是否正常转动，对于热端风扇这种关键部件来说，这项功能非常重要。

> **重要提示**：FAN0和FAN2的电压选择跳线虽然相邻，但跳线引脚顺序是相反的。这是我们为了确保两路风扇都能获得足够宽的供电走线而做的特意设计。请务必为您的风扇选择正确的电压，否则可能会烧毁风扇，这种情况BIGTREETECH概不负责。

**多重保护**
风扇输出端配备了车规级的全方位保护设计。首先具备续流保护，可以安全驱动电感性负载而不会损坏电路。其次采用了车规级MOSFET，内置短路保护、过压保护、过温保护、过流保护以及静电防护功能。

### **测温接口**

<img src=img/EBB36_GEN2/thermistor.jpg width="300"/>

该接口兼容PT1000和NTC传感器，配备2.2k上拉电阻以及完善的保护电路。

**多重保护**
保护设计采用多层防护策略。首先，热敏电阻输入端的"正极"通过高阻抗输入电路实现24V短路保护，当发生短路时会将过载电流引导回3.3V电源。其次，"负极"同样具备24V短路保护，采用自恢复保险丝，短路时会自动断开。这些防护措施的效果非常显著：即使在热端位置出现故障（热敏电阻线和加热棒线通常靠得很近），也不太可能对工具板造成损坏。

### **RGB接口**

<img src=img/EBB36_GEN2/rgb.jpg width="300"/>

板载一个三针RGB接口。该接口通过电平转换芯片进行信号缓冲，确保输出驱动信号达到5V电平。

**多重保护**
该接口配备全方位保护设计。静电防护通过在缓冲芯片与输出端之间设置高阻抗电路实现；瞬态短路保护则采用肖特基二极管，当发生短路时会将过载电流引导回5V电源。

### **通信接口**

工具板同时支持USB和CAN总线通信。通过简单的跳线帽即可选择所需接口，规则如下：

* **USB模式** → 不插跳线帽

* **CAN模式** → 插上跳线帽

选定接口后，输入端口和输出端口都会自动适配所选模式。这意味着工具板上会提供一个CAN或USB扩展接口供您使用。

如果选择CAN总线模式，请注意工具板上配有可选的120Ω终端电阻。当本设备作为CAN总线物理网络的末端设备时，可通过插入相应跳线帽来启用该电阻（如下图所示）。

两种通信接口都需要配合转接板使用。切记不可同时连接CAN接口和USB接口，否则可能损坏您的主控设备。使用USB接口时，直接连接到USB-C端口即可；使用CAN接口时，请使用JST-XH端口。无论哪种方式，都需要同时接入24V电源。

**多重保护**
通信总线配备全方位保护设计。首先，USB和CAN总线接口均具备静电防护功能。其次，两种接口的通信引脚都能承受与24V直接短路的故障情况。不过我们不建议人为制造这种故障，因为USB的保护电路并非设计用于承受频繁的短路切换。

<img src=img/EBB36_GEN2/zh/communication.jpg width="500"/>

该板子的USB通信还需要转接板的配合。转接板如下图所示，通过TYPE-C接口与上位机连接，然后使用双头艾迈斯线连接到EBB36 GEN2 V1.0。

> 注意：TYPE-C接口供电是无法给EBB36 GEN2 V1.0供电，需要另外接上24V供电。

<img src=img/EBB36_GEN2/zh/interface_adapter.jpg width="1000"/>

输出接口的位置见下图。

<img src=img/EBB36_GEN2/passthrough-port.jpg width="500"/>

### **PROBE接口**

<img src=img/EBB36_GEN2/probe.jpg width="300"/>

Probe接口通过复用技术提升了工具板的功能密度，单个端口即可支持以下类型：

- BIQU MicroProbe
- BLTouch
- 24V电感式探针

您可以通过跳线帽配置工作电压。探针可设置为工具板输入电压或5V供电。

> 注意：连接探针前请务必选择正确的电压。

探针输出引脚会上拉至跳线帽所选的电压。

**多重保护**
探针端口配备全方位保护设计。首先，探针引脚具备静电防护功能；其次通过光耦实现过压保护。

> 注意：SERVOS引脚设计上无任何保护。该引脚是唯一直连MCU的引脚，为开发者预留了特殊用途。因此在使用该引脚时需格外小心，确保连接正确。

### **加热棒接口**

<img src=img/EBB36_GEN2/heater.jpg width="300"/>

加热棒输出采用立柱压接螺丝端子。请勿使用焊锡固化的线头连接，因为焊锡会随时间松动，可能导致接触不良。

> 注意：加热棒接口电压与输入电压一致。如果输入电压 > 24V，需确认您的加热棒元件是否支持该电压输入。

该加热器的输出具有反接保护功能，而短路保护则通过适配板上的保险丝来实现。

### **电机接口**

电机接口采用TMC2209驱动器，配备弯插JST-XH连接器，线圈引脚定义如下图所示。

<img src=img/EBB36_GEN2/zh/motor.jpg width="300"/>

电机接口通过在每个线圈输出端配置TVS二极管阵列，实现反接保护和静电防护。

一颗NTC热敏电阻直接安装在电机驱动器下方,可精确测量驱动器温度。具体配置方法请参考固件章节说明。

### **限位开关接口**

<img src=img/EBB36_GEN2/switch.jpg width="300"/>

本产品提供两个开关接口,分别标记为断料检测(filament)和限位(endstop),用户可根据实际需求使用。

两个输入端均上拉至3.3V,并配备多重保护机制。首先具备静电防护功能,其次通过齐纳二极管和限流电阻实现瞬态短路保护。

### **电机接地/安装孔说明**

工具板的每个安装孔都通过100kΩ电阻连接到地线。这一设计至关重要,可确保电机上积累的静电在形成可能导致MCU复位并影响打印的静电放电之前被及时释放。

为充分利用这一功能,请确保工具板与电机外壳之间采用导电性安装方式。如果无法实现导电安装,建议使用两端压接环形端子的导线,将工具板安装孔与电机外壳连接起来。

### **I²C接口**

<img src=img/EBB36_GEN2/i2c.jpg width="300"/>

I²C接口可连接环境传感器和Eddy等设备。该端口集成了3.3V上拉电阻。

**多重保护**
I²C端口配备全方位保护设计。通过高阻抗电阻与肖特基二极管网络,实现瞬态短路保护和静电防护。


## Klipper

### menuconfig

`[*] Enable extra low-level configuration options`

`    Micro-controller Architecture (STMicroelectronics STM32)  --->`

`    Processor model (STM32G0B1)  --->`


**使用 katapult**

`    Bootloader offset (No bootloader)  --->`

**不使用 katapult**

`    Bootloader offset (8KiBbootloader)  --->`


`    Clock Reference (8 MHz crystal)  --->`


**使用 USB 通信**

`    Communication interface (USB (on PA11/PA12))  --->`

**使用 CAN bus 通信**

`    Communication interface (CAN bus (on PB12/PB13))  --->`


`    USB ids  --->`

`[*] Optimize stepper code for 'step on both edges'`

`()  GPIO pins to set at micro-controller startup`


#### USB

<img src=img/EBB36_GEN2/usb.webp width="800"/>

#### CAN bus

<img src=img/EBB36_GEN2/canbus.webp width="800"/>

## **注意事项**

- 3个风扇接口在接24V供电电压的时候单个可以达到1A；如果接5V供电电压的时候，3个加一起最大只能1.5A。

## **相关导航**
- [BIQU 官方网站](http://biqu3d.com)  
- [BIGTREETECH 官方网站](http://bigtree-tech.com)  
- [官方商城](https://biqu.equipment)  
- [用户社区](https://community.biqu3d.com)  
