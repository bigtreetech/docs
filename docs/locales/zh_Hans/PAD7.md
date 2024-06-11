# PAD7

<img src=img/PAD7/PAD7_Title.png width="600" />

## **产品简介**

BIGTREETECHPad7屏幕是必趣创新科技（深圳）有限公司3D打印团队针对Klipper研发的屏幕，提供预安装Klipper和KlipperScreen的系统。预留BTB座子，客户可以选择使用CM4、CB1或其它类似方案，解决当下CM4昂贵、缺货的问题。



## **功能亮点**

- 七寸IPS高清触摸屏，视域更广，显示更细致，体验更舒适；

- 自带扬声器，且音量可通过按键调节；

- 预留耳机插孔，可以连接音箱或者耳机使用；

- 屏幕触摸振动反馈，更清晰的感受到触摸感；

- 屏幕自带光敏元件，可实现通过光照强度自动调节背光亮度；

- 采用GT911高性能触摸芯片，支持五点触摸；

- 采用磁吸支架，不适用支架时，吸附更方便；

  <video width="430" height="300" controls>
      <source src="img/PAD7/introduction.mp4" type="video/mp4">
  </video>

  

## **规格**

| **外型尺寸**       | **185.7mm x 124.78mm x 39.5mm**                     |
| ------------------ | --------------------------------------------------- |
| **屏幕尺寸**       | **7寸**                                             |
| **输入电源参数**   | **DC12V2A**                                         |
| **额定功率**       | **7.3W**                                            |
| **触控屏通信方式** | **HDMI显示、USB-HID触摸**                           |
| **PC通信接口**     | **Type-C(CM4eMMC烧录系统)**                         |
| **功能接口**       | **USB2.0*3，Ethernet，CAN，SPI，SOC-Card**          |
| **屏幕分辨率**     | **1024*600**                                        |
| **显示区域**       | **154.2mm*85.92mm**                                 |
| **可视角度**       | **全视域**                                          |
| **背光亮度**       | **500Cd/m²**                                        |
| **屏幕刷新频率**   | **60Hz**                                            |
| **核心板**         | **BIGTREETECHCB1V2.2，内存1GB，配备闪迪32GB内存卡** |

## **尺寸**

<img src=img/PAD7/PAD7_Dimensions.png width="600" />

## **接口展示**

<img src=img/PAD7/PAD7_Connectivity.png width="600" />

- Light-Sensor: 光敏元件位置，检测光照强度，实现自动调节屏幕背光亮度；
- RGB: 状态指示灯；
- PowerSwitch：电源开关；
- USB2.0：USB-Host外设接口；
- TouchScreen：触摸屏面板；
- USBOTG：与上位机通信接口；
- AudioOut：外设耳机接口；
- Volume-：自带扬声器音量减；
- Volume+：自带扬声器音量加；

<img src=img/PAD7/PAD7_Connectivity1.png width="600" />

- Power-INDC12V2A：电源输入接口，随机配有12V2A的电源适配器
- USB2.0*2：USBHost外设接口
- Ethernet：RJ45网线接口（CB1支持百兆网，CM4支持千兆网）
- CAN：CAN外设接口（MCP2515SPI转CAN）
- SPI：SPI外设接口（可接ADXL345加速度计模块）

<font  color="red">**注意：由于CAN是使用MCP2515SPI转CAN，所以无法与ADXL345加速度计SPI外设接口
同时使用**</font>

## 硬件组件

### **Pad7、EBB36和ADXL345之间的连接**

<img src=img/PAD7/PAD7_ADXL345.png width="600" />

### **CB1更换CM4**

1.断电后，将屏幕背面朝上放置；

2.如下图，使用1.5mm六角螺丝刀逆时针旋转卸下两颗M2.5*3的平头螺丝后，取下小盖板；

<img src=img/PAD7/PAD7_CB1_1.png width="600" />

3.如下图，使用2.0mm六角螺丝刀逆时针旋转卸下四颗M2.5*10的杯头螺丝后，取下散热片；

<img src=img/PAD7/PAD7_CB1_2.png width="600" />

4.使用镊子将天线接头缓慢水平抬起直至与CB1断开连接，如图1位置；然后将原配的CB1缓慢取下，如图2位置；

<img src=img/PAD7/PAD7_CB1_3.png width="600" />

5.将CM4按一定方向压进BTB座子中，如图1位置；插上天线端子，如图2位置；

<img src=img/PAD7/PAD7_CB1_4.png width="600" />

6.盖上散热片，使用2.0mm六角螺丝刀顺时针旋转四颗M2.5*10的杯头螺丝至固定；

<img src=img/PAD7/PAD7_CB1_5.png width="600" />

7.将底下的滑动开关拨至CM4档位，参考下图红框位置

<img src=img/PAD7/PAD7_CB1_6.png width="600" />

<font  color="red">**注: 白色色块为按键开关所拨位置。**</font>

8.盖上小盖板，使用1.5mm六角螺丝刀顺时针旋转两颗M2.5*3的平头螺丝至固定；

<img src=img/PAD7/PAD7_CB1_7.png width="600" />

9.将烧录了树莓派镜像的TF卡插入卡槽，开机即可正常运行，完成更换操作。

### 拆除支架

1.支架两边螺丝位插入对边3mm六角螺丝刀，逆时针将螺丝松掉。

2.拿出螺丝取下支架即可，拆卸完毕

<img src=img/PAD7/PAD7_CB1_8.png width="600" />

<img src=img/PAD7/PAD7_CB1_9.png width="600" />

## 软件配置

### 下载系统镜像

Download OS Image

只能下载安装我们提供的系统镜像：https://github.com/bigtreetech/CB1/releases
推荐使用CB1_Debian11_Klipper_xxxx.img.xz名称包含Klipper的镜像，而不是包含minimal的镜像

### 下载并安装烧录软件

树莓派官方的RaspberryPiImager: https://www.raspberrypi.com/software/

BalenaEtcher: https://www.balena.io/etcher/

<font  color="red">**Note: 以上两种软件都可以使用，任选一种下载安装即可。**</font>

### **烧录系统**

使用RaspberryPiImager

详情请点击:https://bigtreetech.github.io/docs/Software%20Installation.html#write-os-image

**Using BalenaEtcher**

1.将MicroSD卡通过读卡器插入到电脑。

2.选择下载到电脑中的镜像。

<img src=img/PAD7/PAD7_BAL_1.png width="600" />

3.选择待烧录的MicroSD卡（烧录镜像会将MicroSD卡格式化，千万注意不要选错盘符，否则会将其他存储上的数据格式化），点击“烧录”

<img src=img/PAD7/PAD7_BAL_2.png width="600" />

4.等待烧录完成。

<img src=img/PAD7/PAD7_BAL_3.png width="600" />

### **设置系统**

**设置说明**

配置文件中的‘#’代表注释，系统不识别‘#’后的内容。如下图所示：

\#hostname="BTT-CB1" - 系统不识别，相当于不存在。

hostname="BTT-Pad7" - 系统识别，并且将主机名设置为“BTT-Pad7”。

<img src=img/PAD7/PAD7_SYS_1.png width="600" />

**设置WIFI**

<font  color="red">**注意：如果使用网线连接，请跳过此步骤。**</font>

系统镜像烧录完成后，MicroSD卡会有一个被电脑识别的FAT32分区，此分区下有个名为"system.cfg"的配置文件，打开后将WIFI-SSID替换为实际的WIFI名称，PASSWORD替换为实际的密码

<img src=img/PAD7/PAD7_SYS_2.png width="600" />

Pad7设置

打开“BoardEnv.txt”的配置文件，设置:

```
overlays=ws2812 light mcp2515 spidev1_1
```

**ws2812:**	使能Pad7右上角的RGB灯

**light:	**使能LCD背光的PWM功能

**mcp2515:**	使能MCP2515SPI转CAN，Pad7上的CAN功能

**spidev1_1:**	使能spidev1_1到系统用户空间，Pad7的SPI端口接ADXL345加速度计使用

<img src=img/PAD7/PAD7_SYS_3.png width="600" />

打开“system.cfg”的配置文件，修改配置：

**BTT_PAD7="ON"** \# 使能Pad7相关脚本。

**TOUCH_VIBRATION="OFF"** \# OFF: 关闭触摸的震动反馈，ON：打开触摸的震动反馈。

**TOUCH_SOUND="ON"** \# OFF: 关闭触摸的音效反馈，ON：打开触摸的音效反馈。

**AUTO_BRIGHTNESS="ON"**\# 关闭读取环境亮度自动设置背光，ON：打开自动背光。

<img src=img/PAD7/PAD7_SYS_4.png width="600" />

<font  color="red">**注意：TOUCH_VIBRATION和TOUCH_SOUND还需要KlipperScreen的支持，如果想使用触摸
反馈功能，请按照如下步骤设置KlipperScreen。**</font>

触摸反馈设置

KlipperScreen没有触摸反馈相关的API接口，所以需要将官方的KlipperScreeb替换为我们修改过后的的KlipperScreen:

1.在Mainsail中打开moonraker.conf文件：

<img src=img/PAD7/PAD7_SYS_5.png width="600" />

2.将KlipperScreen的origin由官方的

https://github.com/jordanruthe/KlipperScreen.git  修改为：  https://github.com/bigtreetech/KlipperScreen.git

如果您想使用官方而不是BigTreeTech，同样将此链接修改回去即可

<img src=img/PAD7/PAD7_SYS_6.png width="600" />

3.点击UpdateManager右上角的刷新按钮，然后HardRecoveryKlipperScreen即可

<img src=img/PAD7/PAD7_SYS_7.png width="600" />

4.等待更新完成。

<img src=img/PAD7/PAD7_SYS_8.png width="600" />

**SPI转CAN设置**

按照5.4.3中的说明，设置overlays包含mcp2515，开机后can功能自动使能

**ADXL345设置**

按照5.4.2中的说明，设置overlays包含spidev1_1，开机后系统应该空间会加载spidev1.1，在printer.cfg配置文件中添加如下配置即可使用ADXL345。

```
[mcu CB1]
serial: /tmp/klipper_host_mcu
```

```
[adxl345]
cs_pin: CB1:None
spi_bus: spidev1.1
axes_map: z,y,-x  # Modify according to the actual orientation of the ADXL345 installed on the printer.
```

### 搭配CM4使用

推荐使用Mainsail发布的系统镜像：

https://github.com/mainsail-crew/MainsailOS/releases

烧录系统的步骤与CB1相同。

**设置背光**

<font  color="red">**注意：CM4的背光IO不具有PWM功能，所以只能设置为最大亮度**</font>

1.在/boot/cmdline.txt文件中删除"console=serial0,115200"（如果有的话）

2.在/boot/config.txt文件中删除enable_uart=1（如果有的话）

3.在/boot/config.txt文件中新增

```
dtoverlay=gpio-led
dtparam=gpio=14,label=Pad7-lcd,active_low=1
```

**设置分辨率和触摸**

1.在/boot/config.txt文件中新增以下内容，指定HDMI输出的分辨率：

```
hdmi_group=2
hdmi_mode=87
hdmi_cvt 1024 600 60 6 0 0 0
hdmi_drive=1
```

部分版本的系统为了节能，CM4默认禁用了USB，需要在/boot/config.txt文件中新
增以下内容使能USB功能，Pad7的触摸功能为USBHID协议，所以需要使能USB

```
dtoverlay=dwc2,dr_mode=host
```

**SPI转CAN设置**

在/boot/config.txt文件中新增以下内容：

```
dtparam=spi=on
dtoverlay=mcp2515-can0,oscillator=12000000,interrupt=24,spimaxfrequency=10000000
```

在ssh终端执行sudonano/etc/network/interfaces.d/can0编辑can0文件，检查文件的内容是否正常，其中bitrate1000000代表canbus的波特率，要与Klipper中的设置一致才行

<img src=img/PAD7/PAD7_SYS_9.png width="600" />

```
allow-hotplug can0
iface can0 can static
  bitrate 1000000
  up ifconfig $IFACE txqueuelen 1024
```

**ADXL345设置**

在/boot/config.txt文件中新增dtparam=spi=on开机后系统用户空间会加载spidev0.1，在printer.cfg配置文件中添加如下配置即可使用ADXL345。

```
[mcu CM4]

serial: /tmp/klipper_host_mcu
```

```
[adxl345]

cs_pin: CM4:None

spi_bus: spidev0.1

axes_map: z,y,-x  #  Modify according to the actual orientation of the ADXL345 installed on the printer.
```

## SSH登录

CM4默认:
	登录名loginas：pi
	密码：raspberry
CB1默认:
	登录名loginas：biqu
	密码：biqu

## **FAQ**

### **CANbus无法使用**

1.检查Pad7里面的CS-Choose拨码开关，与CB1搭配使用时要设置到CB1挡位，与CM4搭配使用时要设置到CM4挡位。

<img src=img/PAD7/PAD7_FAQ_1.png width="600" />

<img src=img/PAD7/PAD7_FAQ_2.png width="600" />

2.按照此手册的硬件接口部分，CANbus接线的H和L是否正确。

3.在ssh终端执行dmesg|grepcan命令，此时应该会有“MCP2515successfully initialized”的应答

<img src=img/PAD7/PAD7_FAQ_3.png width="600" />

4.在ssh终端执行sudonano/etc/network/interfaces.d/can0编辑can0文件，检查文件的内容是否正常，其中bitrate1000000代表canbus的波特率，要与Klipper中的设置一致才行。

<img src=img/PAD7/PAD7_FAQ_4.png width="600" />

```
allow-hotplug can0
iface can0 can static
  bitrate 1000000
  up ifconfig $IFACE txqueuelen 1024
```

5.在ssh终端执行ifconfig查看是否由can0的服务，如下为正常情况。

<img src=img/PAD7/PAD7_FAQ_5.png width="600" />

### ADXL345无法使用

1.检查Pad7里面的CS-Choose拨码开关，与CB1搭配使用时要设置到CB1挡位，与CM4搭配使用时要设置到CM4挡位。

<img src=img/PAD7/PAD7_FAQ_6.png width="600" />

<img src=img/PAD7/PAD7_FAQ_7.png width="600" />

<font  color="red">**注: 白色色块为按键开关所拨位置。**</font>

2.按照此手册的硬件接口部分，检查spi端口的接线线序是否正确。

3.在ssh终端执行ls/dev/spi*命令，正常情况下CB1会有spidev1.1的设备

<img src=img/PAD7/PAD7_FAQ_8.png width="600" />

CM4会有spidev0.1的设备

<img src=img/PAD7/PAD7_FAQ_9.png width="600" />


## **注意事项**

- 系统卡不能热拔插，开电前必须检查系统卡正常插入；
- 不建议客户拆机，客户不清楚内部结构，贸然拆机容易导致内部线路断裂，因拆机导致的不良我司不予赔偿；
- 如需更换核心板，请参考更换步骤，不可暴力拆除；
- SPI接口连接拓展模块时，注意线序，万不可插错线导致短路；



如果您还需要此产品的其他资源，可以到https://github.com/bigtreetech/上自行查找，
如果无法找到您所需的资源，可以联系我们的售后支持。

若您使用中还遇到别的问题，欢迎您联系我们，我们定会细心为您解答；若您对我们的产品有什么好的意见或建议，也欢迎您回馈给我们，我们也会仔细斟酌您的意见或建议，感谢您选择BIGTREETECH制品，谢谢！



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-pad-7



**如果您对产品有任何问题，请提交一张通知单.**

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
