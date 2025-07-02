# PI4B

<img src=img/PI4B/PI4B_Title.png width="600"/>

## **产品简介**

BIGTREETECH PI4B适配器V1.0是必趣创新科技（深圳）有限公司推出的树莓派CM4载板插上电源，可以作为树莓派4使用，为客户使用CM4带来了便利。

## **功能亮点**

- 使用树莓派4B板外形，安装孔直径相同；
- 支持各种版本的CM4模块；
- 设计有千兆以太网接口、HDMI0接口、HDMI1接口、CAM接口、CSI接口；
- 在USB和网络接口处配备ESD保护；
- 40引脚双排引脚头，具有与Raspberry Pi相同的功能；
- 采用Type-C接口，可与eMMC一起写入CM4，同时为整个系统供电；
- 预留5V电源接口，可连接5V风扇进行CM4散热。

## **规格**

| **产品尺寸**     | **85 x 54.29mm**                                             |
| ---------------- | ------------------------------------------------------------ |
| **安装尺寸**     | **58 x 49mm**                                                |
| **电源输入**     | **Type-C 5±0.25V**                                           |
| **模块类型支持** | **各种版本的树莓派CM4模块**                                  |
| **接口支持**     | **Micro HDMI x 2，USB 2.0x4，RJ45，CAM，CSI，Micro SD。。。** |

## **尺寸**

<img src=img/PI4B/PI4B_Dimension.png width="600"/>

## **接口示意图**

<img src=img/PI4B/PI4B_Interface.png width="600"/>

<font  color="red">***警告：Type-C的电压为5V，不允许使用12/24V，否则会造成不可逆的损坏。***</font>

## **硬件配置**

### **板载指示灯**

板载2个指示灯。通电时，当Raspberry Pi电源成功启动时，PWR（红色）灯将亮起，当系统运行时，ACT（绿色）灯将闪烁。

<img src=img/PI4B/PI4B_Light.png width="600"/>

## **硬件安装**

### **CM4安装**

CM4到BIGTREETECH PI4B适配器V1.0的安装方向如下：

<img src=img/PI4B/PI4B_CM4.png width="600"/>

## **软件配置**

详情请点击： 

https://bigtreetech.github.io/docs/Software%20Configuration.html

## **软件安装**

详情请点击：

https://bigtreetech.github.io/docs/Software%20Installation.html

### **eMMC版本**

<font  color="red">***注意：eMMC版本不会从SD卡运行系统。***</font>

1.安装rpiboot

对于Windows:

http://github.com/raspberrypi/usbboot/raw/master/win32/rpiboot_setup.exe

对于Maca和Linux：

https://github.com/raspberrypi/usbboot#building

2.将DIP开关1（USB OTG）和2（RPI BOOT）推至ON（接通），进入BOOT（引导）模式。

<img src=img/PI4B/PI4B_eMMC.png width="600"/>

3.将Type-C插入计算机的USB端口（为了避免计算机的USB电源不足引起的问题，最好使用带外部电源的USB集线器，或者使用外部电源通过40针插头的5V端口为CM4供电）。运行sudo/rpiboot（Mac/Linux）或Windows上的rpiboot.exe，则CM4的eMMC将被计算机识别为大容量存储设备（如果此时rpiboot报告错误，您可以尝试重新插入USB）。

4.使用Raspberry Pi Imager写入操作系统映像的步骤与LITE版本完全相同。注意：还应启用SSH功能。

5.写入完成后，将DIP开关1（USB OTG）和2（RPIBOOT）推回OFF，进入正常工作模式。

## **注意事项**

- 所有插拔操作都应在断电的情况下进行，包括启用eMMC写入功能。
- 注意CM4的散热。如果正在运行的应用程序消耗了太多的系统资源，CM4将非常严重地变热。
- 轻拿底板，防止损坏。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/pi4b-adapter-v1-0?variant=39919128969314



如果您对产品有任何问题，请与我们联系并提交支持工单。

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
