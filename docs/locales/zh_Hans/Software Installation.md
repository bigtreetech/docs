# 软件安装

## **· Raspberry PI CM4设置步骤**

### **· 下载操作系统映像**

<p>如果使用CM4核心板，您可以直接下载Fluidd或Mainail的映像，也可以<br>从Raspberry Pi Fluidd:<a href=“https://github.com/fluidd-core/FluiddPI/releases">https://github.com/fluidd-core/FluiddPI/releases</a><br>主邮件：<a href=“https://github.com/mainsail-crew/MainsailOS/releases">https://github.com/mainsail-crew/MainsailOS/releases</a><br>Raspberry Pi官方操作系统：<a href=“https://www.raspberrypi.com/software/operating-systems">https://www.raspberrypi.com/software/operating-systems</a></a><br>（CM4需要参考以下系统设置才能启用系统的USB、DSI和其他<br>接口，其操作与标准的Raspberry Pi 3B、4B等略有不同）<br></p>

Raspberry_Pi_OS

<img src=img/Raspberry_Pi_OS.webp width="600"/>

​	安装官方Raspberry Pi Imager：https://www.raspberrypi.com/software/

### **· 写入操作系统**

#### **· CM4 LITE版本（Micro SD卡）**

1. 通过读卡器将Micro SD卡插入计算机

2. 选择操作系统

<img src=img/Rasp1.webp width="600" />

3. 选择“使用自定义”，然后从计算机中选择一个自定义.img

<img src=img/Rasp2.webp width="600" />



4. 单击右下角的设置图标

<img src=img/Rasp3.webp width="600" />

5. “启用SSH”并单击“保存”，此菜单中还可以设置其他功能。请根据自己的需要进行修改。详情如下：

   **设置主机名：raspberrypi.local** // 自定义主机名默认值：raspberrypi.local启用SSH

   **设置用户名和密码** // 自定义用户名和密码，默认用户名：pi密码：raspberry

   **配置无线局域网** // 自定义WLAN的SSID和密码

<img src=img/Rasp4.webp width="600" />

6. 选择Micro SD卡并单击“写入”（写入图像将格式化Micro SD卡。注意不要选择错误的存储设备，否则，数据将被格式化）。

<img src=img/Rasp5.webp width="600" />

7. 等待写入完成。

<img src=img/Rasp6.webp width="600" />

#### **· CM4 eMMC版本**

​	**(注意：eMMC版本不会从Micro SD卡中调试系统。)**

1. 安装rpiboot

    对于Windows：http://github.com/raspberrypi/usbboot/raw/master/win32/rpiboot_setup.exe
    
    对于Mac和Linux：https://github.com/raspberrypi/usbboot#building

2. 将DIP开关4（USB OTG）和3（BOOT）推至ON（接通），进入BOOT（引导）模式。

<img src=img/M4P/M4P_USB.webp width="600" />

3. 将Type-C插入电脑的USB端口（为了避免电脑USB电源不足造成的问题，最好使用外部24V电源为主板供电）。运行**sudo/rpiboot**（Mac/Linux）或rpiboot.exe，则CM4的eMMC将被计算机识别为大容量存储设备（如果此时rpiboot报告错误，您可以尝试重新插入USB）。

4. 使用Raspberry Pi Imager写入操作系统映像的步骤与LITE版本完全相同。注意：还应启用SSH功能。

5. 写入完成后，在断电后将DIP开关4（USB OTG）和3（BOOT）推回OFF，然后再次通电，进入正常工作模式。

## **· BIGTREETECH CB1设置步骤**

### **· 下载操作系统映像**

​	如果使用BIGTREETECH CB1核心板，您只能下载并安装BIGTREETECH提供的系统镜像：https://github.com/bigtreetech/CB1/releases

### **· 下载并安装Raspberry Pi Imager**

​	安装官方Raspberry Pi Imager：https://www.raspberrypi.com/software/ .CB1的系统映像也可以用该软件编写。

### **· 写入操作系统映像**

1. 通过读卡器将Micro SD卡插入计算机。
2. 选择操作系统。

<img src=img/Rasp1.webp width="600" />

3. 选择“使用自定义”，然后从计算机中选择一个自定义.img。

<img src=img/Rasp2.webp width="600" />

4. 选择Micro SD卡并单击“写入”（写入图像将格式化Micro SD卡。注意不要选择错误的存储设备，否则，数据将被格式化）。

<img src=img/Rasp5.webp width="600" />

5. 等待写入完成。

<img src=img/Rasp6.webp width="600" />
