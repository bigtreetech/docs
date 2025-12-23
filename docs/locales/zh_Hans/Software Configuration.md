# 软件配置

## **· 系统设置（CM4）**

### **· USB 2.0集线器端口**

​	​M4P设计有USB 2.0集线器，为了节省功耗，默认情况下CM4的USB端口被禁用。如果要启用它，需要将以下内容添加到config.txt文件中：

```
dtoverlay=dwc2,dr_mode=host
```

### **· DSI1显示接口**

​默认显示接口为HDMI。M4P的板载DSI端口使用DSI1​界面您需要下载DSI1驱动程序，并在中输入以下​命令行（注意：`2023-10-10` 及其之后的系统，路径为 `/boot/firmware/dt-blob.bin`， 在此之前的系统，路径为 `/boot/dt-blob.bin`）：

```
sudo wget https://datasheets.raspberrypi.com/cmio/dt-blob-disp1-cam1.bin -O /boot/firmware/dt-blob.bin
```

​下载此驱动程序并重新启动后，DSI1的屏幕将正常工作。如果要使用HDMI接口，需要删除下载的 `/boot/firmware/dt-blob.bin` 驱动程序并重新启动，HDMI才能正常输出。

### **· CSI1摄像机**

4.4.2 DSI1显示接口中下载的DSI1驱动程序也包括CSI1驱动程序。如果您只想安装CSI1驱动程序，而不是DSI1，请在找到您要使用的驱动程序https://datasheets.raspberrypi.com/licence.html并将其下载到CM4的 `/boot/firmware/`（注意：`2023-10-10` 及其之后的系统，路径为 `/boot/firmware/`， 在此之前的系统，路径为 `/boot/`）文件夹中，并将其重命名为`dt-blob.bin`，然后参考此处的设置。https://projects.raspberrypi.org/en/projects/getting-started-with-picamera/

## **· WIFI设置**

​注意：如果使用网络电缆连接，则可以跳过此步骤。CB1无法像CM4那样直接使用树莓派成像仪设置WiFi名称和密码。操作系统映像写入完成后，MicroSD卡将具有计算机识别的FAT32分区，找到“system.cfg”

<img src=img/M4P/M4P_WIFI1.webp width="600"/>


用记事本打开它，将WIFI-SSID替换为您的WIFI名称，将PASSWORD替换为密码。

<img src=img/wifi.webp width="600" />

## **· 配置主板**

### **· ssh连接到设备**

1. 安装ssh应用程序Moaxterm：https://mobaxterm.mobatek.net/downloadhome-edition.html

2. 将Micro SD卡插入M4P，等待系统通电后加载，大约1-2分钟。

3. 成功连接到网络后，设备将自动分配一个IP地址

4. 在路由器页面中查找设备IP地址

<img src=img/Router.webp width="600" />

5. 或者使用https://angryip.org/工具，扫描当前网络中的所有IP地址，按名称组织，找到名为Fluidd、Mailsail（CM4）或Hurakan（CB1）的IP，如下所示


<img src=img/AngryIP.webp width="600" />

6. 打开Moaxterm，点击“会话”，点击“SSH”，将设备IP插入远程主机，点击“确定”（注意：您的计算机和设备需要在同一网络中）

<img src=img/MobaXterm_Login.webp width="600" />

7. 输入登录名和密码进入SSH终端界面
CM4:
 login as: pi
 password: raspberry
CB1:
 login as: biqu
 password: biqu

<img src=img/SSH_Terminal.webp width="600" />

### **· 编译固件**

1. ssh成功连接到设备后，在终端中输入：

  ```
  cd ~/klipper/
  ```

  ```
  make menuconfig
  ```

使用下面显示的配置进行编译（如果下面的选项不可用，
请将您的Klipper源代码更新到最新版本）
* [*] Enable extra low-level configuration options 
* Micro-controller Architecture (STMicroelectronics STM32) ---> 
* Processor model (STM32G0B1) ---> 
* Bootloader offset (8KiB bootloader) ---> 
* Clock Reference (8 MHz crystal) ---> 
* Communication interface (USB (on PA11/PA12)) --->

<img src=img/M4P/M4P_Make.webp width="600" />

3. 运行**make**编译固件，当make完成时，“klipper.bin”文件将在**home/pi/kliper/out**文件夹中生成，并使用ssh应用程序将其下载到您的计算机上。

### **· 固件升级**

#### **· 使用SD卡更新**

1. 将klipper.bin重命名为“firmware.bin”，复制到SD卡根目录，将SD卡插入M4P的SD卡插槽，单击“重置”按钮或重新打开电源。固件将自动更新。更新后，SD卡中的“firmware.bin”将重命名为“firmware.CUR”。

2. 在终端中输入：**ls/dev/serial/by-id/**，检查主板id，确认固件是否如下图所示成功更新。

```
ls /dev/serial/by-id/
```

<img src=img/M4P/M4P_Update_Using_SD.webp width="600" />

#### **· 使用DFU更新**

​	如果MCU klipper设备ID可以通过**ls/dev/serial/by-ID/**找到，我们可以输入：

```
make flash FLASH_DEVICE= /dev/serial/by-id/usb-Klipper_stm32g0b1xx_190028000D50415833323520-if00
```

​	更新固件 **(NOTE: Replace /dev/serial/by-id/xxx with the actual ID found in the previous step)**

<img src=img/M4P/M4P_DFU.webp width="600" />

​	更新后将出现一条错误消息“dfu util:error during download get_status”。忽略它。

### **· 配置Klipper**

1. 在浏览器中输入您的设备IP地址以打开webUI，在下面显示的目录中找到主板的参考配置，如果没有这样的配置，请将您的klipper源代码更新到最新版本或从github下载：https://github.com/bigtreetech/Manta-M4P

<img src=img/M4P/M4P_Conf_Klipper1.webp width="600" />

2. 将完成的配置文件上载到配置文件中，并重命名为“printer.cfg”

<img src=img/M4P/M4P_Conf_Klipper2.webp width="600" />

3. 插入正确的主板ID

<img src=img/M4P/M4P_Conf_Klipper3.webp width="600" />

​	提到https://www.klipper3d.org/Overview.html根据您的机器类型获取详细的配置指南。
