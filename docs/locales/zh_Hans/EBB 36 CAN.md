# EBB 36 CAN

<figure class="half">
  <img src=img/EBB36CAN/072/EBB_072_Title.png width="550"/>  
  <img src=img/EBB36CAN/G0B1/EBB_G0B1_Title.png width="550"/>  
</figure> 

## **产品简介**

BIGTREETECH EBB36 CAN V1.0/V1.1是必趣创新科技（深圳）有限公司3D打印团队推出的专为36挤出机步进电机设计的喷嘴转接板，可通过USB端口或CAN总线进行通信，大大简化了布线。

## **功能亮点**

- 通过保留BOOT和RESET按钮，用户可以通过USB通过DFU模式更新固件。
- 热敏电阻上增加了保护电路，避免了加热棒泄漏电流导致主控制芯片烧坏。
- 用户可以通过跳线选择热敏电阻的上拉电阻值，从而支持PT1000（2.2K上拉电阻），方便DIY。
- 用跳线帽连接USB，使其通电，从而有效地将主控制板DC-DC与USB 5V隔离。
- 预留I2C接口，可进行断丝和堵塞检测，并支持其他DIY功能。
- 在加热棒和风扇端口上增加了反激二极管，有效地保护MOS管不因反向电压而烧坏。
- 电源接口上的防反向连接保护防止用户在DIY过程中错误连接反向电源线时烧坏主板。
- 板载MAX31865支持PT100/PT1000的2线制或4线制选择。
- 支持通过CAN或USB进行通信。CAN的终端电阻器120R可以通过跳线帽进行选择，并保留CAN扩展接口。
- USB端口上配备ESD保护芯片，防止主控板被USB端口的静电击穿。
- 转接板配有端子、内簧片、双向螺柱和螺钉，这些都是DIY所必需的，极大地满足了DIY需求的客户。

## **规格**

| **外形尺寸**             | **51.5毫米x 37毫米。有关更多详细信息，请阅读：尺寸**         |
| ------------------------ | ------------------------------------------------------------ |
| **安装尺寸**             | **孔间距43.85mm，M3螺孔x 2**                                 |
| **微处理器**             | **ARM Cortex-M0 STM32F072C8T6 48MHz（V1.0）**                |
| **微处理器**             | **ARM Cortex-M0+STM32G0B1CBT6 64MHz（V1.1）**                |
| **输入电压**             | **DC12V-DC24V 6A**                                           |
| **逻辑电压**             | **DC 3.3V**                                                  |
| **加热接口**             | **加热棒（E0），最大输出电流：5A**                           |
| **板载传感器**           | **ADXL345**                                                  |
| **风扇接口**             | **两个CNC风扇（FAN0、FAN1）**                                |
| **风扇接口最大输出电流** | **1A，峰值1.5A**                                             |
| **扩展接口**             | **EndStop、I2C、Probe、RGB、PT100/PT1000、USB接口、CAN接口** |
| **电机驱动**             | **板载TMC2209**                                              |
| **驱动程序工作模式**     | **UART**                                                     |
| **步进电机接口**         | **EM**                                                       |
| **温度传感器接口可选**   | **1通道100K NTC或PT1000（TH0），1通道PT100/PT1000**          |
| **USB通信接口**          | **USB-C型**                                                  |
| **DC 5V最大输出电流**    | **1A**                                                       |

<font  color="red">***注意：BTT EEB36 CAN V1.0/V1.1目前仅支持Klipper。***</font>

## **尺寸**

版本:V1.0

<img src=img/EBB36CAN/072/EBB_072_Diagram.png width="600"/>  

版本:V1.1

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Diagram.png width="600"/>

## **引出线**

Version:V1.0

<img src=img/EBB36CAN/072/EBB_072_Pinout.png width="600"/>

版本:V1.1

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Pin.png width="600"/>

## **硬件配置**

### **usb电源**

版本:V1.0

控制板通电时，D1 RGB灯亮，表示正常供电。电路板中间的VUSB是电源的选择端子。只有当USB向板供电时，或者板通过USB供电时，用户才需要通过跳线将VUSB短路。

<img src=img/EBB36CAN/072/EBB_072_USB_Power.png width="600"/>

版本:V1.1

主板通电后，黄绿色LED1指示灯亮起，表示电源正常。板右侧的VUSB是电源选择端子。只有在使用USB向主板供电或需要通过USB供电时，才需要使用跳线帽连接VUSB。

<img src=img/EBB36CAN/G0B1/EBB_G0B1_USB_Power.png width="600"/>

## **硬件安装**

### **100K NTC or PT1000 设置**

不带31865的版本：使用100K NTC热敏电阻时无需插入跳线帽，TH0的上拉电阻值为4.7K。使用PT1000时，需要使用跳线帽将两个引脚短路，如下图所示。此时，TH0的上拉电阻值为2.2K（注意：以这种方式读取的温度精度将低于MAX31865）。

版本:V1.0

<img src=img/EBB36CAN/072/EBB_072_PT100.png width="600"/>

版本:V1.1

<img src=img/EBB36CAN/G0B1/EBB_G0B1_PT100.png width="600"/>

带31865的版本：通过DIP开关选择PT100/PT1000，双线或四线：

<table border="1">
	<tr>
    <td>1</td><td>2</td><td>3</td><td>4</td><td>传感器模型</td></tr>
	<tr>
    <td>0N</td><td>0N</td><td>0N</td><td>OFF</td><td>两线 PT100</td></tr>
	<tr>
    <td>0N</td><td>0N</td><td>OFF<td>OFF</td><td>两线 PT1000</td></tr>
    <tr>
    <td>OFF</td><td>OFF</td><td>0N</td><td>OFF</td><td>四线 PT100</td></tr>
    <tr>
    <td>OFF</td><td>OFF</td><td>OFF</td><td>0N</td><td>四线 PT1000</td></tr>
    <tr>
</table>


版本:V1.0

<img src=img/EBB36CAN/072/EBB_072_TwoW.png width="600"/>

<img src=img/EBB36CAN/072/EBB_072_FourW.png width="600"/>

版本:V1.1

<img src=img/EBB36CAN/G0B1/EBB_G0B1_TwoW.png width="600"/>

<img src=img/EBB36CAN/G0B1/EBB_G0B1_FourW.png width="600"/>

### **BL-Touch 接线**

版本:V1.0

<img src=img/EBB36CAN/072/EBB_072_BLTouch.png width="600"/>

版本:V1.1

<img src=img/EBB36CAN/G0B1/EBB_G0B1_BLTouch.png width="600"/>

### **耗材断裂检测**

版本:V1.0

<img src=img/EBB36CAN/072/EBB_072_Broke.png width="600"/>

版本:V1.1

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Broke.png width="600"/>

### **RGB**

版本:V1.0

<img src=img/EBB36CAN/072/EBB_072_RGB.png width="600"/>

版本:V1.1

<img src=img/EBB36CAN/G0B1/EBB_G0B1_RGB.png width="600"/>

## **软件配置**

详情请点击：

https://bigtreetech.github.io/docs/zh/EBB%20Series.html



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device



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
