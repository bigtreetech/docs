# **Panda RGB Controller**

<img src=img/PandaRGBController/board.webp width="600"/>


## **修订历史**

| 版本号   | 日期              | 更新内容   |
|:---------|:------------------|:-----------|
| v1.00    | 2025年9月12日      | 初始版本   |


## **产品简介**

Panda RGB Controller是一款用于无线控制RGB灯带的产品，搭配外接的RGB灯条，可与打印机联动。  


## **产品特点**

* 板载多种灯带接口，配送灯带转接线，方便客户使用

* 预留快速烧录接口，方便客户DIY烧录固件，以及后续固件升级

* 板载ESP32 WIFI模块，支持无线操控


## **产品参数**

* 控制板尺寸： 100mm*25mm

* 主控：ESP32-C3-MINI

* 电源输入：DC5.5x2.1：24V 3A

* 逻辑电压： 3.3V 

* 5V-RGB输出接口：PH2.0 3P：5V 1.5A（峰值），XH2.54 3P：5V 2A（峰值）

* 24V-RGB输出接口：两路XH2.54 4P：24V 2A（峰值）

* 24V输出接口：XH2.54 2P：24V 1.5A（峰值）


## **产品接口示意图**

<img src=img/PandaRGBController/port_1.webp width="600"/>

<img src=img/PandaRGBController/port_2.webp width="600"/>


## **安装指南**

### 在Panda Station的安装指南

* 下载打印[Panda Station RGB Controller外壳](https://github.com/bigtreetech/PandaRGBController/blob/master/Print_Files/Panda%20Station%20RGB%20Controller%20Mounting%20Case.stp)

    <img src=img/PandaRGBController/shell_station.webp width="300"/>

* 使用Controller包装盒内附赠螺丝（HA M3*10）固定在支撑架上后使用（M3x6螺丝）将支撑架与外壳固定（该外壳可同时适配Panda Branch与Panda RGB Controller）

    <img src=img/PandaRGBController/install_1.webp width="600"/>

    <img src=img/PandaRGBController/install_2.webp width="600"/>

* 随后将Station背部图示螺丝拆除，使用Controller盒内M3*15螺丝将盒固定

    <img src=img/PandaRGBController/install_3.webp width="600"/>

    * 安装到 Panda Station

        <img src=img/PandaRGBController/install_4.webp width="600"/>

    * 安装到 Naked Panda Station

        <img src=img/PandaRGBController/install_5.webp width="600"/>

* 接线示意图

    将Controller包装盒内如图所示编号为5的线，插入红色标识的口控制底部RGB灯条。将2号线插入绿色标识的口给内部照明灯条供电（Naked Panda Station需购买内部照明套件才可使用）

    <img src=img/PandaRGBController/install_6.webp width="600"/>

    <img src=img/PandaRGBController/install_7.webp width="600"/>

    > 当有[Panda Den](https://bttwiki.com/Panda_Den.html)时可将控制板安装于Panda Den背部，如下图

    <img src=img/PandaRGBController/install_8.webp width="600"/>

### 在Panda Den的安装指南

* 下载打印[Panda Den RGB Controller安装板](https://github.com/bigtreetech/PandaRGBController/blob/master/Print_Files/Panda%20Den%20RGB%20Controller%20installation%20back%20panel.stl)

    <img src=img/PandaRGBController/shell_den.webp width="300"/>

* 使用Controller包装盒内附赠螺丝（HA M3*10）固定在支撑架上后使用（M3x6螺丝）将支撑架与外壳固定（该外壳可同时适配Panda Branch与Panda RGB Controller）

    <img src=img/PandaRGBController/install_1.webp width="600"/>

    <img src=img/PandaRGBController/install_9.webp width="600"/>

* 随后将Den背部金属封板拆除，将Panda Den的RGB灯条使用RGB Controller包装内3号连接线连接至控制板(如图中红色标记所示)后将安装板替换上去

    <img src=img/PandaRGBController/install_6.webp width="600"/>

    <img src=img/PandaRGBController/install_10.webp width="300"/>

    <img src=img/PandaRGBController/install_11.webp width="300"/>

    <img src=img/PandaRGBController/install_12.webp width="300"/>

    <img src=img/PandaRGBController/install_13.webp width="300"/>

    > 当有[Panda Station](https://bttwiki.com/Panda-Station.html)时可将控制板安装于Panda Den背部后使用编号为5的控制线与station连接红色标识处RGB控制口，并使用2号线连接，如下图

    <img src=img/PandaRGBController/install_8.webp width="300"/>

    > 当有[Panda Perch PX](https://bttwiki.com/Panda_AMS_Holder.html)并购买了照明套件时可将控制板安装于Panda Den背部后使用编号为4的控制线与将灯条与Controller连接，如下图

    <img src=img/PandaRGBController/install_12.webp width="300"/>

### 在Panda Perch PX/H2D上的安装指南

* 下载打印[Panda Perch RGB Controller外壳](https://github.com/bigtreetech/PandaRGBController/blob/master/Print_Files/Panda%20Perch%20H2D%20RGB%20Controller%20Case.stl)

    <img src=img/PandaRGBController/shell_perch.webp width="300"/>

* 使用Controller包装盒内附赠螺丝固定在支撑架上后将支撑架与外壳固定（该外壳可同时适配Panda Branch与Panda RGB Controller）

    <img src=img/PandaRGBController/install_1.webp width="600"/>

    <img src=img/PandaRGBController/install_2.webp width="600"/>

* 随后将Panda Perch PX/H2D RGB Controller外壳卡在Perch的六边形拓展孔上，使用盒内3号线将[Panda Perch H2D](https://bttwiki.com/Panda_Perch_H2D.html)RGB灯条（注意方向为箭头对箭头）与控制板连接或使用盒内4号线将[Panda Perch PX](https://bttwiki.com/Panda_AMS_Holder.html)照明灯条与控制器连接

    <img src=img/PandaRGBController/install_14.webp width="400"/>

    <img src=img/PandaRGBController/install_15.webp width="400"/>

    <img src=img/PandaRGBController/install_16.webp width="400"/>

* > 当有[Panda Station](https://bttwiki.com/Panda-Station.html)时，按下图接线

    <img src=img/PandaRGBController/install_17.webp width="400"/>

    <img src=img/PandaRGBController/install_18.webp width="400"/>


## 用户首次使用WebUI指南

<a id="first-connection"></a>

首次连接电源后或执行“恢复出厂设置”命令后，您将看到蓝色跑马灯，代表此时Panda_RGB_Controller没有绑定打印机。

### WiFi连接指南

<a id="ap-connect"></a>

- 连接设备WiFi_AP热点
  
    - 连接上Panda_RGB_Controller发出来的AP热点: `Panda_RGB_Controller_XXXXXXXXXX`. 默认密码是 `987654321`.

        <img src=img/PandaRGBController/ap.webp width="300"/>
  
- 访问AP网页

    - 连接上AP后，电脑端可以在浏览器输入默认的ip：`192.168.254.1`;手机端会自动弹出Panda_RGB_Controller的Web Ui,也可以在浏览器输入ip：`192.168.254.1`来访问网页。(注：此ip为出厂默认ip)

- 选择语言(默认英文)

    - 选择语言后可点击下一步

        <img src=img/PandaRGBController/zh/language.webp width="300"/>

<a id="wifi-connect"></a>
  
- WiFi连接界面

    - 首次出厂或恢复出厂设置后，进入此页面会自动扫描周围WiFi，或者手动点击扫描。

        <img src=img/PandaRGBController/zh/wifi_scan.webp width="300"/>

    - 扫描完成后会弹出`扫描完成`弹窗提示，点击OK关闭提示。

        <img src=img/PandaRGBController/zh/wifi_scan_ok.webp width="300"/>

    - 点击Wi-Fi下方的选项，选择想要连接的WiFi

        <img src=img/PandaRGBController/zh/wifi_list.webp width="300"/>

    - 输入密码，可点击密码框内右侧的`眼睛`图标来显示输入的密码

        <img src=img/PandaRGBController/zh/wifi_connect.webp width="300"/>

    - 点击连接，界面会自动跳转到操作界面中的`WiFi`界面,并显示WiFi连接中

        <img src=img/PandaRGBController/zh/wifi_connecting.webp width="300"/>

    - 等待连接一段时间后，会弹出WiFi连接的状态弹窗

        - 连接失败:

            <img src=img/PandaRGBController/zh/wifi_failed.webp width="300"/>

        - 连接成功，可选择点击[绑定打印机](#printer-bind)跳转到`打印机界面`，也可点击`取消`，继续待在`WiFi界面`

            <img src=img/PandaRGBController/zh/wifi_ok.webp width="300"/>

<a id="printer-bind"></a>

### 绑定打印机

- 功能介绍

    <img src=img/PandaRGBController/zh/printer.webp width="300"/>

    - ① 选择打印机界面，点击后聚焦为红色图标，跳转至打印机界面

    - ② 扫描周围同一局域网下的打印机

    - ③ 选择扫描到的打印机

    - ④ 输入打印机的SN码

    - ⑤ 输入打印机的访问码

    - ⑥ 输入打印机的IP

    - ⑦ 确定绑定此打印机

- 如何绑定打印机(这里以P1P为例)
  
    - 点击扫描一段时间后，会出现`扫描成功`的弹窗

        <img src=img/PandaRGBController/zh/printer_scan_ok.webp width="300"/>

    - 选择扫描出的打印机，可以看到选择打印机后，会自动输入打印机的SN码和IP

        <img src=img/PandaRGBController/zh/printer_list.webp width="300"/>

    - 输入打印机的`访问码`

        * 在打印机上找到`配对码` (这里以 P1 系列打印机为例)

            <img src=img/PandaRGBController/zh/p1_1_2_3.webp width="600"/>

            <img src=img/PandaRGBController/zh/p1_4_5.webp width="600"/>

        * 将 `配对码` 输入到 `访问码` 框内,点击绑定即可开始绑定打印机。

            <img src=img/PandaRGBController/zh/printer_bind.webp width="300"/>

            <img src=img/PandaRGBController/zh/bind_ok.webp width="300"/>
        

## 用户界面说明

### WiFi界面

<img src=img/PandaRGBController/zh/wifi_ip.webp width="300"/>

- ① WiFi界面选择，点击后聚焦为红色图标，跳转至WiFi界面。

- ② 当前WiFi的连接状态。

- ③ IP地址的相关问题弹窗提示，如果 IP 地址 文本框未显示 IP, 请确保 Panda RGB Controller网络状态显示为 连接成功。如果显示为 未连接, 请配置网络设置。

- ④ IP地址显示(在同一局域网下，浏览器输入此IP也可访问Web网页)。

- ⑤ WiFi网络配置按钮，点击可跳转到 [WiFi连接界面](#wifi-connect)

- ⑥ 主机名显示，您可以使用主机名访问 Web UI。默认主机名为: PandaRGBController。如果您不记得 IP 地址，可以在浏览器地址栏中输入主机名加上 .local 访问 Web UI (例如: http://PandaRGBController.local)。点击文本框可以编辑主机名, 点击 设置主机名 按钮确认修改

- ⑦ 确认修改主机名

### AP界面

<img src=img/PandaRGBController/zh/wifi_ap.webp width="300"/>

- ① AP界面选择，点击后聚焦为红色图标，跳转至WiFi界面

- ② AP热点的开关

- ③ AP热点名称，默认为 `Panda_RGB_Controller_XXXXXXXXXX`

- ④ AP热点密码，默认为 `987654321`

- ⑤ 热点IP(默认的热点 IP 为: 192.168.254.1, 如果您自己路由器的 IP 号段也为 192.168.254.xxx, Panda RGB Controller 与路由器的 IP 号段相同就会产生冲突, 并且导致 Panda RGB Controller 无法正常绑定到打印机, 请手动修改 Panda RGB Controller 的热点 IP 使其与路由器使用不同的 IP 号段)

- ⑥ 点击确认会重启设备，重启完成后可连接ap热点。([如何连接ap热点](#ap-connect))

### 设置界面

<img src=img/PandaRGBController/zh/settings.webp width="300"/>

- ① 设置界面选择，点击后聚焦为红色图标，跳转至设置界面。

- ② 选择网页中英文(默认英文)。

- ③ 显示当前的固件版本。

- ④ 固件OTA更新选择`.bin`文件。

    - 点击`选择.bin文件`按钮，选择需要ota的bin文件。

        <img src=img/PandaRGBController/ota_bin.webp width="300"/>

    - 等待ota进度，完成后弹窗自动重启。

        <img src=img/PandaRGBController/zh/ota_progress.webp width="300"/>

        <img src=img/PandaRGBController/zh/ota_ok.webp width="300"/>
  
- ⑤ 点击后，按下确定 [恢复出厂设置](#first-connection)

### 控制面板界面

- 功能介绍

    <img src=img/PandaRGBController/zh/panel.webp width="300"/>

    - ① 控制面板界面选择，点击后聚焦为红色图标，跳转至控制面板界面

    - ② 当前设备名称

    - ③ 单击“切换”以打开和关闭RGB灯光效果

    - ④ 当打印机处于错误状态时，单击开关以覆盖红色闪烁警告灯

    - ⑤ 选择照明效果和当前效果

    - ⑥ 灯光颜色设置

    - ⑦ 亮度

    - ⑧ 速度

- 设备灯效模式

    <img src=img/PandaRGBController/zh/mode.webp width="300"/>

    - ①-④ 选择后，相应的灯光效果将直接显示。

    - ⑤ 光线的颜色可以根据打印机的温度进行调整。您可以在“安全效果”和“危险效果”下选择两种照明效果，静态或闪光。

        <img src=img/PandaRGBController/zh/warning_mode.webp width="300"/>

    - ⑥ 选择后，可以根据打印机调整灯光的颜色。你可以点击idle[自定义RGB](#Customizing-Light-Color)在打印机空闲时的颜色

        <img src=img/PandaRGBController/zh/h2d_mode.webp width="300"/>


<a id="Customizing-Light-Color"></a>

- 自定义灯光颜色（以静态模式为例）

    - 点击颜色设置选项，您将被引导到颜色选择页面。

        <img src=img/PandaRGBController/zh/static_mode.webp width="300"/>

    - 选择想要的颜色。

        <img src=img/PandaRGBController/zh/color_preset.webp width="300"/>

        - ① 出厂默认预设颜色。

        - ② 自定义颜色。点击后会出现一个取色盘，可以设置此自定义颜色的颜色值

            <img src=img/PandaRGBController/zh/picker.webp width="300"/>

    - 选择一个自定义色块后，单击“确认”。则可以将RGB设置为您的所选颜色。

        <img src=img/PandaRGBController/zh/confirm.webp width="300"/>

        <img src=img/PandaRGBController/zh/custom_ok.webp width="300"/>


## 固件历史记录

### [V1.0.0](https://github.com/bigtreetech/PandaRGBController/tree/master/Firmware/v1.0.0)

- 首次发布的出厂固件。


## 功能请求

如果您希望在即将发布的固件中看到一些内容，请在官方 github repo上记录功能请求，让我们知道。[请求功能](https://github.com/bigtreetech/PandaRGBController/issues)


## **相关导航**

- [BIQU 官方网站](http://biqu3d.com)
- [BIGTREETECH 官方网站](http://bigtree-tech.com)
- [官方商城](https://biqu.equipment)
- [用户社区](https://community.biqu3d.com)
