# TFT43-DIP

!!! info "Bigtreetech WiKi NEO"
    此界面已迁移到 Bigtreetech WiKi NEO

    [TFT43-DIP Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/module-docs/display/TFT43-DIP/)

<img src=img/TFT43-DIP/TFT43_DIP_Title.webp width="600" />

## **产品简介**

TFT43-DIP是带电容式触摸屏的树莓派显示器。

## **软件配置**

### 注释

* “2022-04-04”之后的Raspberry Pi操作系统具有内置的DPI驱动程序，因此我们只需要在“/boot/config.txt”文件中进行简单配置即可使用此屏幕。
* “2022-09-22”的操作系统显示180度旋转功能异常，请不要使用。

### 显示功能

将以下配置添加到`/boot/config.txt`文件的`[all]`部分。（通常，它可以添加到`/boot/config.txt`文件的底部）

```
dtoverlay=vc4-kms-dpi-generic
dtparam=rgb666-padhi,clock-frequency=32000000
dtparam=hactive=800,hfp=16,hsync=1,hbp=46
dtparam=vactive=480,vfp=7,vsync=3,vbp=23
dtparam=backlight-gpio=19
dtparam=rotate=0
```

`rotate `=显示旋转，可设置的值包括“0”、“90”、“180”、“270”。默认值为`0`

### 触摸功能

将“gt911_btt_tft43_dip.dtbo”（./gt911_bttl_tft43.dtbo）文件复制到“/boot/foverlay”路径。（我们可以将文件复制到计算机上SD卡的启动路径，也可以在树莓派的ssh上执行以下命令直接下载）

```
sudo wget https://raw.githubusercontent.com/bigtreetech/TFT43-DIP/master/gt911_btt_tft43_dip.dtbo -O /boot/overlays/gt911_btt_tft43_dip.dtbo
```

并将以下配置添加到`/boot/config.txt`文件的`[all]`部分。

```
dtoverlay=gt911_btt_tft43_dip
dtparam=rotate_0
```

`rotate_*`=触摸旋转，此“dtparam”可设置为“rotate_0”、“rotate_90”、“rotate_180”、“旋转_270”。与显示器旋转相对应。

### 例如

### 正常显示

复制`gt911_btt_tft43_dip.dtbo`（./gt911_bttl_tft43.dtbo）文件

将以下配置添加到`/boot/config.txt`文件的`[all]`部分

```
dtoverlay=vc4-kms-dpi-generic
dtparam=rgb666-padhi,clock-frequency=32000000
dtparam=hactive=800,hfp=16,hsync=1,hbp=46
dtparam=vactive=480,vfp=7,vsync=3,vbp=23
dtparam=backlight-gpio=19
dtparam=rotate=0

dtoverlay=gt911_btt_tft43_dip
dtparam=rotate_0
```



### 旋转90度显示

复制`gt911_btt_tft43_dip.dtbo`（./gt911_bttl_tft43.dtbo）文件

将以下配置添加到`/boot/config.txt`文件的`[all]`部分

```
dtoverlay=vc4-kms-dpi-generic
dtparam=rgb666-padhi,clock-frequency=32000000
dtparam=hactive=800,hfp=16,hsync=1,hbp=46
dtparam=vactive=480,vfp=7,vsync=3,vbp=23
dtparam=backlight-gpio=19
dtparam=rotate=90

dtoverlay=gt911_btt_tft43_dip
dtparam=rotate_90
```



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-pi-tft43-dip-screen



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
