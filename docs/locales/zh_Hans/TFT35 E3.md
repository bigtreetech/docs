# TFT35 E3

!!! info "Bigtreetech WiKi NEO"
    此界面已迁移到 Bigtreetech WiKi NEO

    [TFT35 E3 Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/module-docs/display/TFT35-E3/)

<img src=/img/TFT35_E3/TFT35_E3_Title.webp width="600" />

## **产品简介**

BIGTREETECH TFT35-E3 V3.0是必趣创新科技（深圳）有限公司3D打印团队推出的一款中等尺寸、双模、超清晰的3D打印机显示器，可以完美取代Ender3打印机原有的液晶屏幕。

## **功能亮点**

- ARM Cortex-M3系列STM32F207VCT6芯片，32位CPU 120MHz；
- 使用SD卡升级固件。操作简单方便。
- 他的显示板具有更高的兼容性。用户可以选择两种工作模式：UART串口屏幕模式和12864屏幕模式。
- 串口屏幕模式支持SD卡和U盘两种打印模式。
- 预留WIFI端口，WIFI功能由外置WIFI模块实现
- 预留断丝检测延长口（FIL-DET）
- 预留打印后自动关机的扩展端口（PS-ON）
- LCD12864模式使用EXP1、EXP2和EXP3。EXP1和EXP2是普通主板的LCD屏幕端口。EXP3是E3系列主板（如SKR MINI E3 V1.2、SKR E3 DIP V1.1等）使用的LCD接口
- TFT触摸屏模式：串口屏RS232口
- 预留2套UART串口扩展端口供自己动手使用。

## **规格**

| **外观尺寸**     | **93*87mm**                                                  |
| ---------------- | ------------------------------------------------------------ |
| **安装尺寸**     | **完美替换Ender3打印机的原始LCD屏幕，详细信息请查看TFT35-E3 V3.0 尺寸** |
| **微处理器**     | **STM32F207VCT6**                                            |
| **电源输入**     | **DC 5V**                                                    |
| **SD卡逻辑电压** | **3.3V和5V（如：支持MEGA2560主控芯片主板，兼容性更高）**     |

<font  color="red">**注意：板通电后：**</font>

<font  color="red">**红灯D6为电源指示灯：红灯亮，表示正常供电；**</font>

<font  color="red">**绿色指示灯D3为SD卡检测指示灯：插入SD卡时D3常亮，拔出SD卡时D3熄灭。**</font>

## **尺寸**

<img src=/img/TFT35_E3/TFT35_E3_Diagram.webp width="600" />

## **接口示意图**

<img src=/img/TFT35_E3/TFT35_E3_Interface.webp width="600" />

<font  color="red">***注释：***</font>

<font  color="red">***1.使用12864屏幕模式时，将端口EXP1和EXP2连接到主板。此模式下没有触摸功能。***</font>

<font  color="red">***2.使用串口屏模式时，通过RS232与主板上的TFT或AUX-1连接。此模式具有触摸功能***</font>

<font  color="red">***3.一键切换两种工作模式。按下编码器约3秒，直到出现模式选择页面，然后在选择模式后按下编码器。***</font>

## **软件配置**

<font  color="red">***工厂板将配备测试固件，它可以直接使用。它也可以根据我们公司的开源网站进行升级。***</font>

1. 获取主板固件的方法

   &nbsp;从客户服务或技术人员处获取；

   &nbsp;登录我公司的开源网站下载 ：https://github.com/bigtreetech

2. 固件升级

   &nbsp;固件文件名：

   &nbsp;<font  color="red">***BIGTREE_TFT35_V3.0。（版本号）.bin***</font>

   &nbsp;首先将上述固件复制到SD根目录，然后将卡插入板的SD卡插槽。接下来，请重新给主板通电或按下重置键，等待约10秒后更新完成

3. 关于DIY板固件，请参考文件TFT35-E3 V3.0PIN。

## **注意事项**

- SD卡中固件文件的名称无法更改。（包括大写和小写字母）。
- 接线过程必须在停电的前提下进行。在检查电路的正确连接和驱动器的正确插入后，可以接通电源。这样可以防止线路故障导致线路板和屏幕烧坏，造成不必要的损坏。
- 注意接线顺序，不要反向插入导线。有关详细的行订单，请参阅PIN文件。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/btt-tft35-e3-v3-0-display-touch-screen-two-working-modes



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
