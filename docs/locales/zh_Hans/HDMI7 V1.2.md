# HDMI7 V1.2

!!! info "Bigtreetech WiKi NEO"
    此界面已迁移到 Bigtreetech WiKi NEO

    [HDMI7 V1.2 Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/module-docs/display/HDMI7-v1_2-display/)

<img src=/img/HDMI7V1.2/HDMI7V1.2_Title.webp width="600"/>

## **产品简介**

<p>BIGTREETECH HDMI7 V1.2  是必趣创新科技（深圳）有限公司3D打印团队推出的一款通用7寸 HDMI显示屏</p>

## **功能亮点**

- HDMI信号源输入，可连接树莓派作为人机交互页面。
- 连接PC端，可作为PC显示器使用。
- LCD采用7寸IPS电容触摸屏，屏幕分辨率为1024*600支持5点触摸。
- 内置音频解码电路，支持3.5mm耳机接口音频输出。
- 支持亮度和显示方向调节功能。

## **规格**

| 外观尺寸     | 100*165mm                              |
| ------------ | -------------------------------------- |
| 安装尺寸     | 100*165mm详情请参考BTT HDMI7_V1.2_SIZE |
| 电源输入     | DC 5V                                  |
| 逻辑电压     | DC 3.3V                                |
| 屏幕尺寸     | 7寸IPS显示屏                           |
| 屏幕分辨率   | 1024*600                               |
| 屏幕可视角度 | 160°                                   |

## **尺寸**

<img src=/img/HDMI7V1.2/HDMI7V1.2_Dimension.webp width="600"/>

您可以在此处阅读更多详细信息： **BTT HDMI7_V1.2**

## **接口示意图**

<img src=/img/HDMI7V1.2/HDMI7V1.2_Interface.webp width="600"/>

## **硬件配置**

### **连接到显示输出设备**

<p>1.使用C型数据电缆将HDMI7连接到显示输出设备（与Raspberry Pi/PC/其他支持HDMI显示输出的设备兼容）。当连接到电脑时，电脑会在正常情况下自动加载驱动程序。在加载驱动程序之后，可以识别触摸设备。</p>

<p>2. 使用HDMI电缆将HDMI7连接到显示输出设备。通常，连接HDMI电缆后，LCD可以在5秒内正常显示。</p>

### **音频输出**

将3.5毫米耳机/扬声器插入AUDIO接口，实现音频输出。

<img src=/img/HDMI7V1.2/HDMI7V1.2_Audio.webp width="600"/>

### **屏幕亮度调整**

<p>BIGTREETECH HDMI7 V1.2 支持显示亮度调节，可以通过屏幕又上角的KS1键调高亮度，KS3键调低亮度。<br></p>

<img src=/img/HDMI7V1.2/HDMI7V1.2_Screen.webp width="600"/>

### **屏幕显示方向调节**

<p>BIGTREETECH HDMI7 V1.2 支持水平方向显示方向调节，可通过按下KS2键实现水平方向显示方向调节。<br></p>

<img src=/img/HDMI7V1.2/HDMI7V1.2_Display.webp width="600"/>

### **指示灯**

主板上电之后;

D11(Power)红灯为电源指示灯：红灯亮起，表示供电正常；

D12(Status)绿灯作为状态指示灯，屏幕正常工作中闪烁;

## **软件配置**

### **使用树莓派**

#### **HDMI显示输出**

1.在Raspberry Pi官方网站下载:

​	Raspberry Pi OS with desktop

​	Release date: April 4th 2022

​	System: 32-bit

​	Kernel version: 5.15

​	Debian version: 11 (bullseye)

 

2.将镜像写入TF卡，然后在config.txt中修改以下配置：

```
# uncomment to force a specific HDMI mode (this will force VGA)
hdmi_group=2
hdmi_mode=87
hdmi_cvt 1024 600 60 6 0 0 0
# uncomment to force a HDMI mode rather than DVI. This can make audio work in
# DMT (computer monitor) modes
hdmi_drive=1
```

#### **HDMI音频输出**

1.树莓派系统版本:	

​	Raspberry Pi OS with desktop

​	Release date: April 4th 2022

​	System: 32-bit

​	Kernel version: 5.15

​	Debian version: 11 (bullseye)

 

2.进入系统桌面后，右键单击右上角的音频源图标，然后选择HDMI。

<img src=/img/HDMI7/HDMI7_Desktop.webp width="600"/>
