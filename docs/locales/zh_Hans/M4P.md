# M4P

[<img src=img/M4P/M4P_Title.png width="600"/>](https://z1996xm.github.io/BIGTREETECH/M4P.html)

## **介绍**

<p>BIGTREETECH CB1是目前缺货的树莓派CM4的替代品<br>BIGTREETECH M4P是一款使用CM4 BTB头的4轴主板，可以完美地与CB1或CM4配合使用。<br></p>

## **主要特点**

- DSI1、CSI1接口（用于CM4）
- 千兆以太网接口 (1000M for CM4, 100M for CB1)
- 3 USB 2.0 ports
- 在USB和以太网端口上配备ESD保护芯片，防止静电破坏
- 当使用Raspberry Pi CM4时，其40针插头的功能与Raspberrry Pi相同（CB1的自定义IO）
- 使用BTB板对板连接，可通过螺钉进一步加固，与CB1或Raspberry Pi CM4完全兼容
- MCU采用STM32G00RE 32位ARM Cortex-M0+@64MHz芯片
- 电源芯片采用TPS5450-5A，支持DC12/24V电源输入，芯片输出电流高达5A，峰值可达6A，完美支持核心板供电
- 热敏电阻部分的保护电路防止主控制芯片因加热床或加热筒泄漏而燃烧
- 在CNC风扇端口：FAN0、FAN1和FAN2中，可以选择带跳线帽的24V（DCIN）或5V电源（注意：三个CNC风扇的电压应该相同，不能单独设置为不同的电压）
- MCU固件可以通过SD卡升级，也可以使用Klipper的make-flash命令通过DFU升级
- 板载TMC驱动的SPI和UART工作模式，板载DIAG功能引脚，只需插拔跳线即可使用
- 支持断料检测、BLTouch、RGB灯等
- 采用可更换保险丝，便于更换

## **基本参数**

- 产品尺寸：160 x 95mm
- 安装尺寸：146 x 84.2mm；97 x 84.2毫米
- 核芯板安装尺寸：33 x 48mm
- 加热床端口的最大输出电流：10A
- 加热棒端口的最大输出电流：6A
- 风扇端口：三个用于CNC风扇（24V/5V电压可选），一个SoC风扇（电压不可选）
- 风扇端口的最大输出电流：1A
- 加热棒+驱动器+风扇总电流：＜20A
- 扩展接口：BLTouch（伺服、探针）、Fil-DET、2*RGB
- 电机驱动器：支持TMC5160、TMC2209、TMC2225、TMC2226、TMC2208、TMC2130、ST820、LV8729、DRV8825、A4988等
- 驱动程序工作模式支持：SPI、UART、STEP/DIR
- 电机驱动接口：X、Y、Z（双Z轴）、E0，共四个。
- 温度传感器接口：双向100K NTC
- 显示屏：RepRapDiscount EXP-1+EXP-2

## **尺寸**

<img src=img/M4P/M4P_Size.png width="600"/>

## **接口示意图**

<img src=img/M4P/M4P_Interface_Diagram.png width="600" />

## **引出线**

<img src=img/M4P/M4P_Pin_Out.png width="600" />

## **硬件配置**

**TYPE-C**

<p>M4P开机后，主板右下侧的红色LED1会亮起，表示电源正常。板中间的J8是电源选择端子，只有当type-C USB用于向<br>主板供电或USB用于外部供电时，才需要短路。type-C的信号连接到SoC，仅在写入CM4 eMMC版本的操作系统映像时使用。</p>

<img src=img/M4P/M4P_TYPE_C.png width="600" />

## **硬件安装**

### **步进驱动器**

#### **正常STEP/DIR（单机）模式**

<p>例如，A4988、DRV8825、LV8729、ST820……根据驱动器细分表，使用跳线帽短接MS0-MS2。</p>

<img src=img/M4P/M4P_Stepper_Driver.png width="600" />

**<font  color="red">注意：如果使用A4988或DRV8825，RST和SLP必须用跨接线帽短路才能正常工作。 </font>**

详情请点击： https://z1996xm.github.io/BIGTREETECH/Tutorials.html


#### **TMC驱动器的UART模式**

<p>例如，TMC2208、TMC2209、TMC2225…每个都使用一个跳线帽连接图中红框的位置，细分和驱动器电流由固件设置。</p>

<img src=img/M4P/M4P_TMC_UART_Mode.png width="600" />

#### **TMC驱动器的SPI模式** 

<p>例如，TMC2130、TMC5160、TMC2160…每个使用4个跳线帽连接图中红框的位置，细分和驱动器电流由固件设置。</p>

<img src=img/M4P/M4P_TMC_SPI_Mode.png width="600" />

#### **TMC驱动的DIAG（无传感器归位）** 

<p>如图所示，使用无传感器归位功能时，请插上跳线帽，不使用时请拔下。无需切割驱动器的DIAG引脚。</p>

<img src=img/M4P/M4P_TMC_DIAG_Mode.png width="600" />

#### **驱动器电压选择** 

<p>每个驱动器的电源都可以通过跳线进行设置。当跳线插入左侧时，独立的MOTOR POWER端口用于驱动器电源，支持的电压高达56V。将跳线插入右侧时，主电源端口用于驱动器电源，并支持12/24v电压。</p>

**独立于驱动器的电源**

跳线插入左侧，由MOTOR POWER端口供电。支持的电压高达56V。

<img src=img/M4P/M4P_IPS.png width="600" />

**主电源**

跳线插入右侧，由主电源端口供电。支持12/24v电压。

<img src=img/M4P/M4P_MPS.png width="600" />

### **通过BTB连接安装核心板**

**M4P+CM4：注意方向，如下所示。**

<img src=img/M4P/M4P+CM4.png width="600" />

**M4P+CB1：注意方向，如下所示。**

<img src=img/M4P/M4P+CB1.png width="600" />

### **40 pin GPIO**

<p>当使用CM4时，40引脚GPIO的引脚排列与Raspberry Pi的引脚排列完全相同。当使用CB1时，它是一种自定义的IO排列，如下图所示，“_”前面的“GPIO4”是CM4的IO，后面的“PC7”是CB1的IO。</p>

<img src=img/M4P/M4P_40_Pin.png width="600" />

### **BLTouch 接线**

M4P_BLTouch_Wiring

<img src=img/M4P/M4P_BLTouch_Wiring.png width="600" />

### **EXP1+EXP2和LCD屏幕接线**

M4P_E1_E2_LCD

<img src=img/M4P/M4P_E1_E2_LCD.png width="600" />

### **RGB 接线**

<img src=img/M4P/M4P_RGB_Wiring.png width="600" />

### **DSI/CSI 接线**

<img src=img/M4P/M4P_DSI_CSI_Wiring.png width="600" />

### **SPI 显示接线**

<img src=img/M4P/M4P_SPI_Display_Wiring.png width="600" />

### **ADXL345 加速度计**

<p>请参阅此处：https://www.klipper3d.org/Measuring_Resonances.html，连接到M4P主板时，我们可以参考以下接线和配置</p>

<img src=img/M4P/M4P_ADXL345.png width="600" />

[adxl345]

    ```
    cs_pin: PD9
    spi_bus: spi1
    #spi_software_sclk_pin: PA5
    #spi_software_mosi_pin: PA7
    #spi_software_miso_pin: PA6
    ```

## **软件配置**

详情请点击：

https://bigtreetech.github.io/docs/Software%20Configuration.html

## **软件安装**

详情请点击：

https://bigtreetech.github.io/docs/Software%20Installation.html

## **常问问题**

- 所有插拔操作都应在断电的情况下进行，包括启用eMMC写入。
- 注意CM4和CB1的散热。如果正在运行的应用程序消耗了太多的系统资源，CM4/CB1将非常严重地变热。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/manta-m4p-m8p



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
