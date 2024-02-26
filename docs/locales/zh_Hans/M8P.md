# M8P

[<img src=img/M8P/M8P_Title.png width="600" />](https://bigtreetech.github.io/docs/M8P.html)

## **介绍**

<p>BIGTREETECH MANTA M8P是深圳市必趣科技有限公司3D打印团队为Klipper固件开发的32位打印机主板。您只需插入核心板即可运行Klipper固件，这大大简化了主板和树莓派之间的连接，并节省了大量空间。此外，BTB连接器被设计为安装CM4或其他解决方案，以解决当前CM4的昂贵问题。</p>

## **主要特点**

- 采用32位64MHz ARM Cortex-M0+系列STM32G0B1VET6作为主控芯片；
- 电源芯片TPS5450-5A，支持DC12/24V电源输入。芯片的输出电流高达5A，峰值可达6A，完美支持树莓派的供电；
- 主板上保留了BOOT按钮，用户可以通过DFU更新引导程序；
- 热敏电阻部分包括保护电路，该保护电路保护主控制芯片免受由加热床或加热器筒的泄漏引起的燃烧的可能性；
- CNC风扇提供24V、12V和5V电压，无需外部变压器模块，从而减少了因操作不当而损坏主板的机会；
- 热敏电阻可以通过跳线选择上拉电阻值，这样，它支持PT1000，无需外部模块，方便客户自己动手；
- MCU固件可以通过SD卡进行更新，也可以使用DFU通过Klipper的make flash命令进行更新；
- 主板和核心板使用BTB连接，允许使用CM4以外的其他解决方案；
- 板载TMC驱动SPI和UART工作模式，板载DIAG功能引脚，只需插拔跳线即可使用；
- 支持断料检测、自动关机、BLTouch、RGB灯。。。
- 高效MOSFET，减少发热;
- 采用可更换保险丝，便于更换;
- 预留三通四线制风机接口，可用于连接水冷装置；
- 预留接近开关接口，支持NPN和PNP两种类型，可选择（24V、12V、5V）电压，与VFAN6共同选择电压；
- 提供SPI扩展接口，允许Klipper固件用户连接外部加速度传感器进行加速度补偿。。

## **基本参数**

- 产品尺寸：170 x 102.7毫米。有关更多详细信息，请阅读： **尺寸**
- 微处理器：ARM Cortex-M0+STM32G0B1VET6 64MHz
- 驱动输入电压：VIN（12V/24V）或HV（≤56V）
- 主板输入电压：VIN=DC12V或DC24V
- 加热床输入电压：Bed IN=DC12V或DC24V
- 逻辑电压：DC3.3V
- 加热端口：加热床（HB）、喷嘴（HE0、HE1、HE2、HE3）
- 加热床端口的最大输出电流：10A，峰值：12A
- 喷嘴端口的最大输出电流：5.5A，峰值：6A
- 来自端口：两线制数控风扇（FAN0、FAN1、FAN2、FAN3）、四线制数控扇（FAN4、FAN5、FAN6）、常开风扇（24V Fan x 2），其中数控风扇电压为5V、12V、24V可选
- 风扇端口最大输出电流：1A，峰值：1.5A
- 喷嘴+驱动器+风扇总电流：＜12A
- 扩展接口：BLTouch（伺服、探针）、PS-ON、Fil-DET、RGBx2、SPI
- 电机驱动器：支持TMC5160、TMC2209、TMC2225、TMC2226、TMC2208、TMC2130、ST820、LV8729、DRV8825、A4988。。。
- 驱动程序工作模式支持：SPI、UART、STEP/DIR
- 电机驱动接口：Motor1、Motor2、Motor3（双电机接口）、Motor4、Motor5、Motor6、Motor7、Motor8，共8台
- 温度传感器接口：5路100K NTC，其中4路100K和PT1000可选
- 支持屏幕：SPI触摸屏、LCD屏幕
- PC通信接口：Type-C
- 功能接口：USB 2.0 x 3、LAN、DSI、CSI、SPI、40Pin GPIO、HDMI0和HDMI1、SOC卡、MCU卡
- 支持机器结构: Cartesian, Delta, Kossel, Ultimaker, CoreXY
- 推荐软件: Cura, Simplify3D, Pronterface, Repetier-host, Makerware

## **尺寸**

<img src=img/M8P/M8P_Dimensions1.png width="600" />

<img src=img/M8P/M8P_Dimensions2.png width="600" />

## **引出线**

<img src=img/M8P/M8P_Pin_Out.png width="600" />

**V1.0和V1.1之间的差异**

V1.1中的更改包括：M6、M7、M8、SPI、MCU卡、RGB1和RGB2、FAN4、CAN、Pi FAN

<img src=img/M8P/M8P_Pin_Out1.png width="600" />

## **接口示意图**

<img src=img/M8P/M8P_CAD.png width="600" />

**V1.1增加了功能**

CAN接口（2引脚*2 XH2.54），USB端口功能选择（UART到USB，USB OTG），Pi FAN（由GPIO26控制），FAN4成为2线CNC风扇。

<img src=img/M8P/M8P_Add_Func1.png width="600" />

5V和12V电源输出端口增加E-FUSE保护，反应时间短，保护强，实现过流保护、短路保护和火花保护。

**M8P V1.1+CB1：**

<img src=img/M8P/M8P_Add_Func2.png width="600" />

**M8P V1.1-Bot：**

<img src=img/M8P/M8P_Add_Func3.png width="600" />

## **硬件配置**

**usb电源**

M8P主板通电后，MCU左侧的D32红灯亮起，表示电源正常。电路板中间的VUSB是电源选择端子。只有在使用USB向主板供电或需要通过USB供电时，才需要使用跳线将其短路。

<img src=img/M8P/M8P_USB_PS.png width="600" />

## **硬件安装**

### **步进驱动器**

#### **STEP/DIR（单机）模式**

例如，A4988、DRV8825、LV8729、ST820……根据驱动器细分表，使用跳线帽短接MS0-MS2。

<img src=img/M8P/M8P_Dri_Step.png width="600" />



<font  color="red">**注意：如果使用A4988或DRV8825，RST和SLP必须用跨接线帽短路才能正常工作。**</font>

详情请点击： https://z1996xm.github.io/BIGTREETECH/Tutorials.html


例如，TMC2208、TMC2209、TMC2225…每个都使用一个跳线帽连接图中红框的位置，细分和驱动器电流由固件设置。

<img src=img/M8P/M8P_Dri_Uart_Mode.png width="600" />

#### **TMC驱动器的SPI模式** 

例如，TMC2130、TMC5160、TMC5.161…每个使用4个跳线帽连接图中红框的位置，细分和驱动器电流由固件设置。

<img src=img/M8P/M8P_Dri_SPI_Mode.png width="600" />

#### **TMC驱动的DIAG（无传感器归位）** 

如图所示，使用无传感器归位功能时，请插上跳线帽，不使用时请拔下。

<img src=img/M8P/M8P_Dri_Diag_Mode.png width="600" />

#### **驱动器电压选择** 

<img src=img/M8P/M8P_Sel_PS1.png width="600" />

<img src=img/M8P/M8P_Sel_PS1.png width="600" />

### **通过BTB连接安装核心板**

**M8P+CM4：注意方向，如下所示。**

<img src=img/M8P/M8P_M8P+CM4.png width="600" />

**M8P+CB1：注意方向，如下所示。**

<img src=img/M8P/M8P_M8P+CB1.png width="600" />

### **数控风机的电压选择**

使用跨接线帽将输出电压设置为5V、12V或24V。注意：在选择电压之前，请确认风扇的工作电压。由于选择错误而导致风扇烧坏，我公司不承担任何责任。

<img src=img/M8P/M8P_CNC_Fans.png width="600" />

### **100K NTC或PT1000设置**

当使用100K NTC热敏电阻时，无需插入跳线帽，TH0-TH3的上拉电阻为4.7K 0.1%。使用PT1000时，需要使用跳线帽连接下图中红色框中的两个引脚，并并联连接4.12K 0.1%电阻器。此时，TH0-TH1的上拉电阻为2.2K（注意：这样读取的温度精度将远不如MAX31865读取的精度）。

<img src=img/M8P/M8P_NTC.png width="600" />

### **BLTouch 接线**

<img src=img/M8P/M8P_BLTouch.png width="600" />

### **自动关闭模块（继电器V1.2） 接线**

<img src=img/M8P/M8P_Auto_S.png width="600" />

### **LCD屏幕和EXP1+EXP2之间的接线**

<img src=img/M8P/M8P_LCD.png width="600" />

### **RGB 接线**

<img src=img/M8P/M8P_RGB.png width="600" />

### **断料检测 接线**

<img src=img/M8P/M8P_Filament.png width="600" />

### **40 Pins GPIO**

<img src=img/M8P/M8P_40_Pin.png width="600" />

### **DSI/CSI 接线**

<img src=img/M8P/M8P_DSI.png width="600" />

### **接近开关接线**

**常开（NPN型），无需通过跳线帽短路，例如24V，如下图所示：**

<img src=img/M8P/M8P_Proximity.png width="600" />

**始终关闭（PNP型），需要通过跳线帽短路，例如24V，如下图所示：**

<img src=img/M8P/M8P_Proximity1.png width="600" />

### **四线CNC风扇的接线**

<img src=img/M8P/M8P_4_Wire.png width="600" />

### **ADXL345加速计**

请参阅此处：https://www.klipper3d.org/Measuring_Resonances.html，我们在连接M8P主板时可以参考以下接线和配置

<img src=img/M8P/M8P_ADXL345.png width="600" />

```
[adxl345]
cs_pin: PC4 # PB15 for V1.0
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
- 注意CM4和CB1的散热。如果运行的应用程序消耗了太多的系统资源，CM4/CB1可能会变得相当热。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/manta-m4p-m8p?variant=39859521716322



**如果您对产品有任何问题，请提交一张支持票**

https://biqu3d.com/pages/submit-a-ticket



BIQU官方网站：                            							  http://biqu3d.com

BIGTREETECH官方网站：            				               http://bigtree-tech.com

线上商店：                                           				        https://biqu.equipment

社区：                                            				               https://community.biqu3d.com
