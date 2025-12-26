# EBB 42 CAN

<figure class="half">
  <img src=/img/EBB42CAN/072/EBB42_072_Title.webp width="550"/>  
  <img src=/img/EBB42CAN/G0B1/EBB42_G0B1_Title.webp width="550"/>  
</figure> 

## **产品简介**

BIGTREETECH EBB42 CAN V1.0/V1.1是必趣创新科技（深圳）有限公司3D打印团队推出的一款专为42挤出机步进电机设计的喷嘴转接板，可通过USB端口或CAN总线进行通信，大大简化了布线.

## **功能亮点**

- 通过保留BOOT和RESET按钮，用户可以通过USB通过DFU模式更新固件。
- 热敏电阻上增加了保护电路，避免了加热棒泄漏电流导致主控制芯片烧坏。
- 用户可以通过跳线选择热敏电阻的上拉电阻值，从而支持PT1000（2.2K上拉电阻），方便DIY。
- 用跳线帽连接USB，使其通电，从而有效地将主控制板DC-DC与USB 5V隔离。
- 保留的I2C接口允许检测灯丝断裂和堵塞，并支持其他DIY功能。
- 在加热棒和风扇端口上增加了反激二极管，有效地保护MOS管不因反向电压而烧坏。
- 电源接口上的防反向连接保护防止用户在DIY过程中错误连接反向电源线时烧坏主板。
- 板载MAX31865支持PT100/PT1000的2线制或4线制选择。
- 支持通过CAN或USB进行通信。CAN的终端电阻120R可以通过跳线帽进行选择，并预留CAN扩展接口。
- USB端口上配备ESD保护芯片，防止主控板被USB端口的静电击穿。
- 转接板配有端子、内簧片、双向螺柱和螺钉，这些都是DIY所需的配件，极大地满足了客户的DIY需求。

## **规格**

| **外形尺寸**               | **40mm x 40mm。有关更多详细信息，请阅读：尺寸**              |
| -------------------------- | ------------------------------------------------------------ |
| **安装尺寸**               | **孔间距31mm x 31mm，M3螺孔x 4**                             |
| **微处理器**               | **ARM Cortex-M0 STM32F072C8T6 48MHz**                        |
| **输入电压**               | **DC12V-DC24V 9A**                                           |
| **逻辑电压**               | **DC 3.3V**                                                  |
| **加热接口**               | **加热棒（E0），最大输出电流：5A**                           |
| **板载传感器**             | **ADXL345**                                                  |
| **风扇接口**               | **两个CNC风扇（FAN0、FAN1）**                                |
| **风扇接口最大输出电流**   | **1A，峰值1.5A**                                             |
| **扩展接口**               | **EndStop、I2C、Probe、RGB、PT100/PT1000、USB接口、CAN接口** |
| **电机驱动**               | **板载TMC2209**                                              |
| **驱动程序工作模式**       | **UART**                                                     |
| **步进电机接口**           | **EM**                                                       |
| **温度传感器接口（可选）** | **1路100K NTC或PT1000（TH0），1路PT100/PT1000**              |
| **USB通信接口**            | **USB-C型**                                                  |
| **DCDC 5V最大输出电流**    | **1A**                                                       |

<font  color="red">***注：BTT EEB42 CAN V1.0/V1.1目前仅支持Klipper。***</font>

## **尺寸**

版本:V1.0

<img src=/img/EBB42CAN/072/EBB42_072_Diagram.webp width="600"/>  

版本:V1.1

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_Diagram.webp width="600"/>

## **引出线**

版本:V1.0

<img src=/img/EBB42CAN/072/EBB42_072_Pinout.webp width="600"/>

版本:V1.1

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_Pin.webp width="600"/>

## **硬件配置**

### **usb电源**

版本:V1.0

控制板通电时，D1 RGB灯亮，表示正常供电。电路板中间的VUSB是电源的选择端子。只有当USB向板供电时，或者板通过USB供电时，用户才需要通过跳线将VUSB短路。

<img src=/img/EBB42CAN/072/EBB42_072_USBP.webp width="600"/>

版本:V1.1

主板通电后，黄绿色LED1指示灯亮起，表示电源正常。电路板中间的VUSB是电源选择部分。只有在使用USB向主板供电或需要通过USB供电时，才需要使用跳线帽连接VUSB。

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_USBP.webp width="600"/>

## **硬件安装**

### **100K NTC or PT1000 设置**

1.不带31865的版本：使用100K NTC热敏电阻时无需插入跳线帽，TH0的上拉电阻值为4.7K。当使用PT1000时，您需要使用跳线帽来短接红色圆圈中的两个引脚，如下所示。此时，TH0的上拉电阻值为2.2K（注意：以这种方式读取的温度精度将低于MAX31865）。

版本:V1.0

<img src=/img/EBB42CAN/072/EBB42_072_PT100.webp width="600"/>

版本:V1.1

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_PT100.webp width="600"/>

2.31865版本：通过DIP开关选择PT100/PT1000，两线或四线。

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

<img src=/img/EBB42CAN/072/EBB42_072_TwoW.webp width="600"/>

<img src=/img/EBB42CAN/072/EBB42_072_FourW.webp width="600"/>

版本:V1.1

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_TwoW.webp width="600"/>

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_FourW.webp width="600"/>

### **BL-Touch**

版本:V1.0

<img src=/img/EBB42CAN/072/EBB42_072_BLTouch.webp width="600"/>

版本:V1.1

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_BLTouch.webp width="600"/>

### **耗材断裂检测**

版本:V1.0

<img src=/img/EBB42CAN/072/EBB42_072_Broke.webp width="600"/>

版本:V1.1

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_Broke.webp width="600"/>

###  **RGB**

版本:V1.0

<img src=/img/EBB42CAN/072/EBB42_072_RGB.webp width="600"/>

版本:V1.1

<img src=/img/EBB42CAN/G0B1/EBB42_G0B1_RGB.webp width="600"/>

## **软件配置**

详情请点击：

https://bigtreetech.github.io/docs/zh/EBB%20Series.html



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39760665247842



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
