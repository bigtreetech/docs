# KNOMI

<img src=img/KNOMI/KNOMI_Title.png width="600" />

## **介绍**

KNOMI是一款专为运行Klipper固件的3D打印机设计的迷你圆形显示屏，旨在为用户提供一种独特和个性化的
方式来掌握打印机的运行状态及数据。 
通过KNOMI UI显示主要信息，如热床温度、喷嘴温度、调平状态、打印进度等。KNOMI是一款开源产品，允许用户
自定义用户界面和设计安装支架以适应他们的3D打印机。

## **主要特点**

- 通过KNOMI UI快速和轻松地了解打印机状态；
- 通过WI-FI进行通信，降低安装位置的约束；
- 开源产品，用户可自定义UI和安装支架； 
- 使用BIGTREETECH提供的打印件文件，轻松安装于Voron StealthBurner；
- 支持DC5V-24V输入，方便供电，接线简单；
- 预留Type-C口，方便客户自行DIY烧录使用，使用面更广；
- 采用全视域的屏幕，让你从哪个角度都能看到真实的色彩。

<img src=img/KNOMI/KNOMI_IN.png width="600" />

<font  color="red">**有关KNOMI结构的信息，请单击**</font> :[KNOMI USER GUIDE.PDF](https://raw.githack.com/bigtreetech/docs/master/docs/download/KNOMI 1 用户手册.pdf)

<font  color="red">**开源地址**</font>：https://github.com/bigtreetech/KNOMI

## **性能比较试验**

<font  color="red">**使用KNOMI会影响STEALTHBURNER的性能吗?**</font> 

我们将为您提供定制的安装打印件文件，以便您轻松地将KNOMI安装到您的Voron StealthBurner中。其中，我们的StealthBurner前盖打印件不仅保留了原有的风扇位置，还在顶部增加环状开窗通风口，以提高兼容性和优化散热效果。

<img src=img/KNOMI/KNOMI_IN1.png width="600" />

<img src=img/KNOMI/KNOMI_IN2.png width="600" />



<font  color="red">**定制打印件下载地址**</font> :https://github.com/bigtreetech/KNOMI

<font  color="red">**安装底板**</font> 

在开始组装前，建议提前准备好这两个打印件。由于体积限制和空气导管的设计考量，安装底板采用了卡扣连结的设计。这可能会在重复拆装过程中导致一定的磨损。因此，建议额外打印多几个该打印件以备用。



我们对搭配定制打印件安装了KNOMI的StealthBurner与原始未安装KNOMI的StealthBurner进行了性能比较。结果显示，无论是在风速还是声能级上，两者的表现几乎相同，安装KNOMI后的StealthBurner仍然能够如期地保持其性能表现。

<img src=img/KNOMI/KNOMI_IN3.png width="600" />

## ****包装清单****

<img src=img/KNOMI/KNOMI_IN4.png width="600" />

## ****概览****

<img src=img/KNOMI/KNOMI_IN5.png width="600" />

## ****配置 WI-FI****

<img src=img/KNOMI/KNOMI_IN6.png width="600" />

<font  color="red">**进入欢迎词界面**</font> 

通过Type-C或MX1.25接口给KNOMI供电。

在KNOMI开机后，按住BOOT按钮5秒。 

等待KNOMI显示“HELLO”界面，然后松开BOOT按钮。

若您已经安装了KNOMI在StealthBurner上，可以使用细长工具(如六角扳手)来按住BOOT按钮。

<img src=img/KNOMI/KNOMI_IN7.png width="600" />

<font  color="red">**路由器加密模式**</font> 

由于设备兼容性问题，KNOMI无法配置WPA PSK加密模式的网络，如您遇到KNOMI无法成功配置您的网络，请检查您的路由器加密模式，将路由器的加密方式切换为WPA/WAP2 PSK混合模式或其他模式。

<img src=img/KNOMI/KNOMI_IN8.png width="600" />

<font  color="red">**连接KNOMI**</font> 

1.使用支持Wi-Fi的设备查找并连接到“BTT-KNOMI”网络。

2.浏览器将自动打开配置页面。 

3.输入你的Wi-Fi账户和密码，和打印机IP地址。

4.点击“提交”。 

5.在看到提交成功页面后即可关闭浏览器。

6.成功连接网络后，大约10秒，KNOMI会切换到标准工作界面。



<font  color="red">**配置 WI-FI**</font> 

<img src=img/KNOMI/KNOMI_IN9.png width="600" />

<font  color="red">**连接断开**</font> 

当KNOMI出现这个状态时，说明KNOMI与打印机失去了连接，这可能是由于以下原因所致：

1.你修改了Wi-Fi名称/密码，导致KNOMI与打印机处于不同的网络状态，你需要长按侧边的BOOT的按钮进入欢迎词界面重新配置KNOMI的网络连接；

2.打印机出现了网络故障，无法与KNOMI建立网络连接，可尝试重新启动你的3D打印机。



## **把KNOMI安装到STEALTHBURNER上**

<img src=img/KNOMI/KNOMI_IN10.png width="600" />



<img src=img/KNOMI/KNOMI_IN11.png width="600" />

<img src=img/KNOMI/KNOMI_IN12.png width="600" />

<img src=img/KNOMI/KNOMI_IN13.png width="600" />

<img src=img/KNOMI/KNOMI_IN14.png width="600" />

<img src=img/KNOMI/KNOMI_IN15.png width="600" />

## **添加相关宏**

<img src=img/KNOMI/KNOMI_IN16.png width="600" />

```
[gcode_macro BED_MESH_CALIBRATE]
rename_existing: BED_MESH_CALIBRATE_BASE
variable_probing:False

gcode:
  SET_GCODE_VARIABLE MACRO=BED_MESH_CALIBRATE VARIABLE=probing VALUE=True
  BED_MESH_CALIBRATE_BASE
  SET_GCODE_VARIABLE MACRO=BED_MESH_CALIBRATE VARIABLE=probing VALUE=False
 
[gcode_macro G28]
rename_existing: G0028
variable_homing:False

gcode:
  SET_GCODE_VARIABLE MACRO=G28 VARIABLE=homing VALUE=True
  G0028
  SET_GCODE_VARIABLE MACRO=G28 VARIABLE=homing VALUE=False
```

<font  color="red">**归零和调平**</font> 

显示屏获取homing、levelling状态需要在printer.cfg文件里添加相关宏，打开浏览器输入Klipper IP地址进入打印控制界面找到config Files目录中printer.cfg，
将以上宏定义添加进去然后保存退出。

## **更新固件**

将KNOMI 1升级为KNOMI 2 UI的亮点如下：
1. 增加了OTA（空中传送）功能，用户只需将固件文件拖动到Web界面即可在线完成固件升级。

2. WiFi配置Web界面经过优化，用户可以直接在网页上搜索和选择所需的WiFi连接。

3. KNOMI 2 UI进行了全新设计升级，增加了QGL调平UI，使显示效果更加生动。

4. 修复了打印进度百分比的错误，并实现了与MainRail/Klippersscreen的显示同步。

5. 修复了其他已知的错误。

   

1、请点击链接下载刻录工具：  https://www.espressif.com.cn/en/support/download/other-tools

<img src=img/KNOMI/KNOMI_UPDATE1.png width="600" />

2、请点击下载 [固件](https://raw.githack.com/bigtreetech/docs/master/docs/download/Firmware.zip)

3、按住knomi1上的按钮，然后通过USB将其连接到计算机。

4、点击 .exe

<img src=img/KNOMI/KNOMI_UPDATE2.png width="600" />

5、选择esp32

<img src=img/KNOMI/KNOMI_UPDATE3.png width="600" />

5、解压缩下载的固件。点击“…”按钮，添加3个对应的bin文件，在“@”后手动输入对应bin文件偏移地址（注意bin文件名对应地址）。选择knomi1的COM。点击“开始”开始下载，等待进度条结束并提示完成；

<img src=img/KNOMI/KNOMI_UPDATE4.png width="600" />

6、拔下USB并插回（重新通电），可以看到显示屏显示内容正常，表示刻录成功；

## **自定义用户界面**

### **图像转换**

1、我们在knomi提供了17个可定制的GIF。

<img src=img/KNOMI/KNOMI_GIF.png width="600" />

2、点击下载 [KNOMI GIF](https://raw.githack.com/bigtreetech/docs/master/docs/download/KNOMI_GIF.zip) . 您必须将GIF更改为与要替换的GIF相同的名称和像素。 你可以点击 [这里 (English)](https://www.gifgit.com/gif/resize)or  [这里 (Chinese)](https://www.gif.cn/) 修改GIF像素，右键单击可查看GIF。

了解更多GIF像素，请点击 https://bigtreetech.github.io/docs/KNOMI.html#picture-pixels

<img src=img/KNOMI/KNOMI_Tip.png width="600" />

3、点击 https://github.com/bigtreetech/KNOMI/tree/firmware 下载KNOMI1项目。 使用Visual Studio Code https://marlinfw.org/docs/basics/install_platformio_vscode.html 以打开项目并输入lvgl_Gif.cpp文件。

<img src=img/KNOMI/KNOMI_Tip1.png width="600" />

4、右键单击要替换的GIF，然后单击“转到定义”。

<img src=img/KNOMI/KNOMI_Tip2.png width="600" />

5、可以看到GIF的结构和数据类型header.cf。

<img src=img/KNOMI/KNOMI_Tip3.png width="600" />

6、点击链接进入GIF转换工具 https://lvgl.io/tools/imageconverter

<img src=img/KNOMI/KNOMI_Tip4.png width="600" />

7、点击浏览并选择新的替换GIF，颜色格式选择与原始GIF相同的数据类型。

<img src=img/KNOMI/KNOMI_Tip5.png width="600" />

<font  color="red">**注意：选择CF_RAW_CHROMA后，将显示为CF_RAW，请忽略此问题**</font> 

8、输出格式选择C数组，然后单击转换。

<img src=img/KNOMI/KNOMI_Tip6.png width="600" />

9、将生成的gif_standby替换为。c文件与knomi项目中同名的源文件。

<img src=img/KNOMI/KNOMI_Tip7.png width="600" />

10、单击“编译”。

<img src=img/KNOMI/KNOMI_Tip8.png width="600" />

11、编译完成后，使用USB Type C连接器将KNOMI连接到计算机。单击下载，下载完成后，再次打开KNOMI电源。

<img src=img/KNOMI/KNOMI_Tip9.png width="600" />

### **图片像素**

<img src=img/KNOMI/KNOMI_gif1.png width="600" />

<img src=img/KNOMI/KNOMI_gif2.png width="600" />

<img src=img/KNOMI/KNOMI_gif3.png width="600" />

<img src=img/KNOMI/KNOMI_gif4.png width="600" />

<img src=img/KNOMI/KNOMI_gif5.png width="600" />

<img src=img/KNOMI/KNOMI_gif6.png width="600" />

<img src=img/KNOMI/KNOMI_gif7.png width="600" />



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-knomi-v1-0



**如果您对产品有任何问题，请提交一张支持票。**

https://biqu3d.com/pages/submit-a-ticket



BIQU官方网站：                            							  http://biqu3d.com

BIGTREETECH官方网站：            				               http://bigtree-tech.com

线上商店：                                           				        https://biqu.equipment

社区：                                            				               https://community.biqu3d.com
