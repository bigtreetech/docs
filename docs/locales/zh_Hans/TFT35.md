# TFT35

<img src=img/TFT35_V3.0/TFT35_V3.0_Title.png width="600" />

## **介绍**

TFT35 V3.0是一款中等尺寸、双模、超清晰的3D打印机显示器。它是标准12864液晶显示器的绝佳替代品。

## **主要特点**

- ARM Cortex-M3系列STM32F207VCT6芯片，32位CPU 120 MHz。
- 用户可以选择两种工作模式，分别是UART串口屏幕模式和12864屏幕模式。
- 使用SD卡升级固件。操作简单方便。
- 串口屏幕模式支持SD卡和U盘两种打印模式。
- 专用WIFI端口。WIFI功能由外部WIFI模块实现。
- 专用断丝检测端口，FIL-DET引脚。
- 打印模块后用于自动关闭的专用端口，PS-ON引脚。
- LCD12864模式使用EXP1、EXP2和EXP3。EXP1和EXP2是普通主板的液晶屏端口，EXP3是SKR MINI E3和SKR E3 DIP使用的液晶屏接口。
- TFT触摸屏模式采用串口屏RS232端口。
- 预留两套UART串口扩展端口供自己动手使用。

## **基本参数**

- 尺寸：110x58mm
- 输入电压：5V DC
- 安装尺寸：103.76*49.43 mm
- SD卡逻辑电压：3.3V或5V，支持MEGA2560主板，兼容性更高

<font  color="red">***注释：***</font>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">***红灯D2为电源指示灯；当电路板通电时，它就亮了。***</font>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">***红灯D1为SD卡检测指示灯；插入SD卡时，它处于打开状态。***</font>

## **尺寸**

<img src=img/TFT35_V3.0/TFT35_V3.0_Diagram.png width="600" />

## **接口示意图**

<img src=img/TFT35_V3.0/TFT35_V3.0_Interface.png width="600" />

<font  color="red">***注释：***</font>

<font  color="red">***1.使用12864屏幕模式时，将端口EXP1和EXP2连接到主板。此模式下没有触摸功能。（如果您想使用SKR MINI E3或SKR E3 DIP，只需将EXP3连接到主板即可。）***</font>

<font  color="red">***2.使用串口屏模式时，通过RS232与主板上的TFT或aux-2连接。此模式具有触摸功能。***</font>

<font  color="red">***3.一键切换两种工作模式。按下旋转编码器约3秒钟，直到出现模式选择页面，然后在选择模式后按下编码器。***</font>

## **软件配置**

<font  color="red">***屏幕将与测试固件一起发货，可以直接使用。固件可根据您的需要进行自定义。***</font>

1. 您可以在我们的Github页面上找到所需的固件文件： http://github.com/bigtreetech

2. 固件更新方法：

   &nbsp;固件文件名：BIGTREE_TFT35_V3.0.（版本号）.bin

   &nbsp;字体图标文件夹名称：TFT35

   &nbsp;首先将上述固件和TFT35文件夹复制到SD根目录中，然后将卡插入板的SD卡插槽中。接下来，启动主板或按下重置键，然后等待固件、字体和图标更新完成。

3. 有关自定义固件，请参阅文件TFT35-V3.0-PIN。


## **注意事项**

- SD卡中的固件文件名不能更改，包括大写。
- 在通电之前，确保所有导线和接头都已正确插入。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-tft35-v3-0-display-two-working-modes



如果您对产品有任何问题，请提交一张支持票。

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
