# TFT35 SPI

!!! info "Bigtreetech WiKi NEO"
    此界面已迁移到 Bigtreetech WiKi NEO

    [TFT35 SPI Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/module-docs/display/TFT35-SPI/)

## **产品简介**

BIGTREETECH TFT35 SPI V2.1是由必趣创新科技（深圳）有限公司3D打印团队开发的一款中型清晰3D打印机显示器。

## **功能亮点**

- SPI用于LCD显示，I2C用于触摸。触摸屏由主板上的芯片控制，大大降低了成本。 
- 它通过FPC电缆连接到主板，简单方便。
- 采用XH2.54端子设计，可通过端子与单板通讯。

## **规格**

| **产品尺寸**        | **98 x 56毫米**                                 |
| ------------------- | ----------------------------------------------- |
| **安装尺寸**        | **98 x 56毫米。有关更多详细信息，请阅读：尺寸** |
| **输入电压**        | **DC 5V**                                       |
| **逻辑电压**        | **DC 3.3V**                                     |
| **屏幕尺寸**        | **3.5英寸**                                     |
| **分辨率**          | **480x320**                                     |
| **SPI显示器驱动IC** | **ILI9488**                                     |
| **触摸驱动IC**      | **NS2009**                                      |

## **尺寸**

<img src=img/TFT35_SPI/TFT35_SPI_Dimension.webp width="600" />

## **接口示意图**

<img src=img/TFT35_SPI/TFT35_SPI_Interface.webp width="600" />

## **引出线**

<img src=img/TFT35_SPI/TFT35_SPI_Pinout.webp width="600" />

## **软件安装**

目前，它只支持CB1。V2.2.0及更早版本的操作系统不支持TFT35 SPI。请使用V2.2.1及更高版本的操作系统。

CB1操作系统映像: https://github.com/bigtreetech/CB1/releases

<img src=img/TFT35_SPI/TFT35_SPI_Soft1.webp width="600" />

操作系统写入SD卡后，有一个名为BOOT的FAT32分区，用Notpad、Notpad++或VSCode打开“BoardEnv.txt”文件。

<img src=img/TFT35_SPI/TFT35_SPI_Soft2.webp width="600" />

取消注释覆盖=tft35_spi以启用tft35 spi屏幕（删除行开头的“#”）。

<font  color="red">***注意：如果使用v2.2.1版本的操作系统映像。设置为overlay=tft35_spi25而不是overlay=tft35_spi使用25Mhz的spi速度而不是默认的50Mhz，以避免显示混乱。如果使用V2.2.1之后的操作系统映像，默认情况下操作系统将使用更低、更稳定的速度。***</font>

<img src=img/TFT35_SPI/TFT35_SPI_Soft3.webp width="600" />



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-tft35-spi-v2-1-touchscreen-io2can-module



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
