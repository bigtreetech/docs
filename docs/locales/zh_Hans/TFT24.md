# TFT24

<img src=img/TFT24/TFT24_Title.png width="600" />

## **产品简介**

BIGTREETECH TFT24-V1.1是一款小体积超清晰3D打印机显示板。它可以在两种模式下工作。该板由必趣创新科技（深圳）有限公司3D打印团队推出。该板可代替LCD12864使用。

## **功能亮点**

- ARM Cortex-M3系列STM32F105CT6芯片，32位CPU 72MHz；
- 使用SD卡升级固件。操作简单方便。
- 他的显示板具有更高的兼容性。用户可以选择两种工作模式，分别是UART串口屏幕模式和12864屏幕模式。
- 串口屏幕模式支持SD卡和U盘两种打印模式。

## **规格**

| 外观尺寸 | 105*46mm           |
| -------- | ------------------ |
| 安装尺寸 | 详见TFT24-V1.1-DSI |
| 微处理器 | STM32F105CT6       |
| 电源输入 | DC5V               |

<font  color="red">**注意：板上电后，红色电源指示灯D3将亮起，表示电源正常。红灯D1为SD卡检测指示器。插入SD卡时D1常亮，拔出SD卡时熄灭。**</font>

## **尺寸**

<img src=img/TFT24/TFT24_Diagram.png width="600" />

## **接口示意图**

<img src=img/TFT24/TFT24_Interface.png width="600" />

- 使用12864屏幕模式时，将端口EXP1和EXP2连接到主板。此模式下没有触摸功能。
- 当使用串行端口屏幕模式时，通过RS232与主板上的TFT或aux-2连接。在这种模式下，有触摸功能。
- 这两种模式对应两个不同的固件，请根据闪存固件的模式类型进行接线。

## **软件配置**

<font  color="red">***工厂板将配备测试固件，它可以直接使用。用户也可以根据自己的需要更改固件。***</font>

1. 获取主板固件的方法

   ​	&nbsp;&nbsp;从客户服务或技术人员处获取

   ​	&nbsp;&nbsp;登录我公司的开源网站下载：

   ​	&nbsp;&nbsp;https://github.com/bigtreetech

2. 固件升级

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;固件文件名：

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">**BIGTREE_TFT24_12864_(version code).bin**</font>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">**BIGTREE_TFT24_Serial_(version code).bin**</font>

   <p>首先将上述固件复制到SD根目录，然后将卡插入板的SD卡插槽。接下来，请重新通电或按下重置键，等待约10秒后更新完成。</p>

3. 关于DIY板固件，请参考文件TFT24-V1.1-PIN。


## **注意事项**

- SD卡中固件文件的名称无法更改。（包括大写和小写字母）
- 接线过程必须在停电的前提下进行。在通电之前，用户必须检查电路的正确连接和驱动器的正确插入。注意接线顺序，不要反向插入导线。有关详细的行订单，请参阅PIN文件。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/tft24v1-1-gd-version



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
