# **Panda Lux RGB PX**

<img src=img/PandaLuxRGBPX/panda_lux_rgb.jpg width="400"/>

- **产品链接**: [点击购买](https://bit.ly/3Iejmk0) 
- **GitHub**: [固件](https://github.com/bigtreetech/Panda-Lux-RGB)  
- **MakerWorld**: [前往 MakerWorld 获取打印文件](https://makerworld.com/en/models/1795232-panda-lux-rgb-mounting-shell#profileId-1913824 )  


## **修订历史**

| 版本号   | 日期              | 更新内容   |
|:---------|:------------------|:-----------|
| v1.00    | 2025年9月8日      | 初始版本   |


## **产品简介**
Panda Lux RGB PX，专为 Bambu Lab P1/X1 系列设计，集明亮白光 LED 与可自定义 RGB 灯效，前者用于提供清晰的打印过程查看，后者可实现状态提醒及美学增强。 


## **产品特点**

- **高亮度照明**

    为打印区域提供清晰、稳定的光源支持。

- **智能亮灯，自动开关**

    内置ESP32芯片连接网络，可自动跟随打印机灯光开闭。

- **多种灯光效果**

    1600 万色随心切换，轻松融入你的工作空间风格。

- **Web UI 无线控制**

    通过简洁直观的网页控制面板，轻松调节灯效、颜色、亮度、速度，赋予您更高的操作自由度与便捷体验。


## **产品参数**

- **产品名称**：BIQU Panda Lux RGB PX

- **色温**：全彩RGB + 6000K白光

- **Web UI + BIQU APP控制**: √

- **原厂屏幕 & APP 控制（Bambu Handy + Bambu Studio）**: √

- **材质**：铝合金

- **磁吸式安装**：√

- **LED数量**：16颗高亮RGBW LED

- **电压**：5V

- **电流**：待机0.07A，峰值0.71A

- **是否防水**：否

- **使用寿命**：高达 36,000 小时

- **产品尺寸**：273mm/10.75in

### 适配机型

- **P1P/P1S**：可直接安装使用

- **X1C/X1E**：需另购 2m USB 线

### 配件说明

- 为了更好的走线，推荐用 Panda Branch 供电。若未使用，则需另行配置 5V USB 电源适配器。

### USB 产品兼容性

- **USB-A to USB-C**：Panda Hub，Panda Branch

- **USB-C to USB-C**：Panda Hub Plus，Panda Branch Plus


## **安装指南**

### 在P1系列打印机上安装

* 打印好控制板打印件，将控制板放入打印件内，用螺丝固定。

    <img src=img/PandaLuxRGBPX/install_1.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_2.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_3.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_4.jpg width="300"/> 

* 插入附带的USB-A转USB-C线。

    <img src=img/PandaLuxRGBPX/install_5.jpg width="300"/> 

* 将Panda LUX RGB PX磁吸安装在打印机机舱内。

    <img src=img/PandaLuxRGBPX/install_6.jpg width="300"/>

    将控制板的USB-A口插入打印机的USB-A口。

    <img src=img/PandaLuxRGBPX/install_7.jpg width="300"/>

* 将打印机上的胶带部分取下，按照图示走线，将Panda LUX RGB PX的电源线引卡机器内部。

    <img src=img/PandaLuxRGBPX/install_8.jpg width="300"/>

* 将Panda LUX RGB PX的电源线插入控制板，并将控制板卡入机器内，完成安装。

    <img src=img/PandaLuxRGBPX/install_9.jpg width="300"/>

### 在X1系列打印机上安装

* 打印好控制板打印件，将控制板放入打印件内，用螺丝固定。

    <img src=img/PandaLuxRGBPX/install_1.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_2.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_3.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_4.jpg width="300"/>

* 插入2m USB-A转USB-C线(需另购)。

    <img src=img/PandaLuxRGBPX/zh/install_10.jpg width="300"/>

* 将Panda Lux RGB PX 磁吸安装在打印机机舱内。 将Panda Lux RGB PX的电源线插入控制板，并将控制板卡入机舱内，如图所示

    <img src=img/PandaLuxRGBPX/install_11.jpg width="300"/>

* 将USB-A转USB-C线沿着机器框架布线，松开盖板背部螺丝并掀起盖板，穿过出线孔，使用Panda Branch供电，或者另行配置5V USB电源适配器。

    <img src=img/PandaLuxRGBPX/install_12.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_13.jpg width="600"/>


## 用户首次连接指南

<a id="first-connection"></a>

首次连接电源后或执行“恢复出厂设置”命令后，您将看到蓝色跑马灯，代表此时Panda_Lux_RGB PX 没有绑定打印机。

### WiFi连接指南

<a id="ap-connect"></a>

- 连接设备WiFi_AP热点

    - 连接上Panda_Lux_RGB PX 发出来的AP热点: `Panda_Lux_RGB_XXXXXXXXXX`. 默认密码是 `987654321`.

        <img src=img/PandaLuxRGBPX/ap.webp width="300"/>
  
- 访问AP网页

    - 连接上AP后，电脑端可以在浏览器输入默认的ip：`192.168.254.1`;手机端会自动弹出Panda_Lux_RGB PX 的Web Ui,也可以在浏览器输入ip：`192.168.254.1`来访问网页。(注：此ip为出厂默认ip)

- 选择语言(默认英文)

    - 选择语言后可点击下一步

        <img src=img/PandaLuxRGBPX/zh/language.jpg width="300"/>

<a id="wifi-connect"></a>

- WiFi连接界面

    - 首次出厂或恢复出厂设置后，进入此页面会自动扫描周围WiFi，或者手动点击扫描。

        <img src=img/PandaLuxRGBPX/zh/wifi_scan.jpg width="300"/>

    - 扫描完成后会弹出`扫描完成`弹窗提示，点击OK关闭提示。

        <img src=img/PandaLuxRGBPX/zh/wifi_scan_ok.webp width="300"/>

    - 点击Wi-Fi下方的选项，选择想要连接的WiFi

        <img src=img/PandaLuxRGBPX/zh/wifi_list.jpg width="300"/>

    - 输入密码，可点击密码框内右侧的`眼睛`图标来显示输入的密码

        <img src=img/PandaLuxRGBPX/zh/wifi_connect.jpg width="300"/>

    - 点击连接，界面会自动跳转到操作界面中的`WiFi`界面, 并显示WiFi连接中

        <img src=img/PandaLuxRGBPX/zh/wifi_connecting.webp width="300"/>

    - 等待连接一段时间后，会弹出WiFi连接的状态弹窗

        - 连接失败:

            <img src=img/PandaLuxRGBPX/zh/wifi_failed.webp width="300"/>

        - 连接成功，可选择点击[绑定打印机](#printer-bind)跳转到`打印机界面`，也可点击`取消`，继续待在`WiFi界面`

            <img src=img/PandaLuxRGBPX/zh/wifi_ok.webp width="300"/>

<a id="printer-bind"></a>

### 绑定打印机

- 功能介绍

    <img src=img/PandaLuxRGBPX/zh/printer.webp width="300"/>

    - ① 选择打印机界面，点击后聚焦为红色图标，跳转至打印机界面

    - ② 扫描周围同一局域网下的打印机

    - ③ 选择扫描到的打印机

    - ④ 输入打印机的SN码

    - ⑤ 输入打印机的访问码

    - ⑥ 输入打印机的IP

    - ⑦ 确定绑定此打印机

- 如何绑定打印机

    - 点击扫描一段时间后，会出现`扫描成功`的弹窗

        <img src=img/PandaLuxRGBPX/zh/printer_scan_ok.webp width="300"/>

    - 选择扫描出的打印机，可以看到选择打印机后，会自动输入打印机的SN码和IP

        <img src=img/PandaLuxRGBPX/zh/printer_list.jpg width="300"/>

    - 输入打印机的`访问码`

        * 在打印机上找到`配对码` (这里以 P1 系列打印机为例)

            <img src=img/PandaLuxRGBPX/zh/p1_1_2_3.webp width="600"/>

            <img src=img/PandaLuxRGBPX/zh/p1_4_5.webp width="600"/>

        * 将 `配对码` 输入到 `访问码` 框内,点击绑定即可开始绑定打印机。

            <img src=img/PandaLuxRGBPX/zh/printer_bind.webp width="300"/>

            <img src=img/PandaLuxRGBPX/zh/bind_ok.webp width="300"/>


## 用户界面说明

### WiFi界面

<img src=img/PandaLuxRGBPX/zh/wifi_ip.webp width="300"/>

- ① WiFi界面选择，点击后聚焦为红色图标，跳转至WiFi界面。

- ② 当前WiFi的连接状态。

- ③ IP地址的相关问题弹窗提示，如果 IP 地址 文本框未显示 IP, 请确保 Panda Lux RGB PX 网络状态显示为 连接成功。如果显示为 未连接, 请配置网络设置。

- ④ IP地址显示(在同一局域网下，浏览器输入此IP也可访问Web网页)。

- ⑤ WiFi网络配置按钮，点击可跳转到 [WiFi连接界面](#wifi-connect)

- ⑥ 主机名显示，您可以使用主机名访问 Web UI。默认主机名为: PandaLuxRGB。如果您不记得 IP 地址，可以在浏览器地址栏中输入主机名加上 .local 访问 Web UI (例如: http://PandaLuxRGB.local)。点击文本框可以编辑主机名, 点击 设置主机名 按钮确认修改

- ⑦ 确认修改主机名

### AP界面

<img src=img/PandaLuxRGBPX/zh/wifi_ap.webp width="300"/>

- ① AP界面选择，点击后聚焦为红色图标，跳转至WiFi界面

- ② AP热点的开关

- ③ AP热点名称，默认为 `Panda_Lux_RGB_XXXXXXXXXX`

- ④ AP热点密码，默认为 `987654321`

- ⑤ 热点IP(默认的热点 IP 为: 192.168.254.1, 如果您自己路由器的 IP 号段也为 192.168.254.xxx, Panda Lux RGB PX 与路由器的 IP 号段相同就会产生冲突, 并且导致 Panda Lux RGB PX 无法正常绑定到打印机, 请手动修改 Panda Lux RGB PX 的热点 IP 使其与路由器使用不同的 IP 号段)

- ⑥ 点击确认会重启设备，重启完成后可连接ap热点。([如何连接ap热点](#ap-connect))

### 设置界面

<img src=img/PandaLuxRGBPX/zh/settings.webp width="300"/>

- ① 设置界面选择，点击后聚焦为红色图标，跳转至设置界面。

- ② 选择网页中英文(默认英文)。

- ③ 显示当前的固件版本。

- ④ 固件OTA更新选择`.bin`文件。

    - 点击`选择.bin文件`按钮，选择需要ota的bin文件。

        <img src=img/PandaLuxRGBPX/ota_bin.webp width="300"/>

    - 等待ota进度，完成后弹窗自动重启。

        <img src=img/PandaLuxRGBPX/zh/ota_progress.webp width="300"/>

        <img src=img/PandaLuxRGBPX/zh/ota_ok.webp width="300"/>
  
- ⑤ 点击后，按下确定 [恢复出厂设置](#first-connection)

### 控制面板界面

- 功能介绍

    <img src=img/PandaLuxRGBPX/zh/panel.webp width="300"/>

    - ① 控制面板界面选择，点击后聚焦为红色图标，跳转至控制面板界面

    - ② 当前设备名称

    - ③ 单击“切换”以打开和关闭RGB灯光效果

    - ④ 打印机库存灯亮起后，自动打开和关闭RGB效果

    - ⑤ 当打印机处于错误状态时，单击开关以覆盖红色闪烁警告灯

    - ⑥ 选择照明效果和当前效果

    - ⑦ 灯光颜色设置

    - ⑧ 亮度

    - ⑨ 速度

- 设备灯效模式

    <img src=img/PandaLuxRGBPX/zh/mode.jpg width="300"/>

    - ①-⑦ 选择后，相应的灯光效果将直接显示。

    - ⑧ 光线的颜色可以根据打印机的温度进行调整。您可以在“安全效果”和“危险效果”下选择两种照明效果，静态或闪光。

        <img src=img/PandaLuxRGBPX/zh/warning_mode.webp width="300"/>

    - ⑨ 选择后，可以根据打印机调整灯光的颜色。您可以在打印中选择静态或彩虹照明效果。

        <img src=img/PandaLuxRGBPX/zh/h2d_mode.webp width="300"/>

- 自定义灯光颜色（以静态模式为例）

    - 点击颜色设置选项，您将被引导到颜色选择页面。

        <img src=img/PandaLuxRGBPX/zh/static_mode.webp width="300"/>

    - 选择想要的颜色。

        <img src=img/PandaLuxRGBPX/zh/color_preset.webp width="300"/>

        - ① 出厂默认预设颜色。

        - ② 自定义颜色。点击后会出现一个取色盘，可以设置此自定义颜色的颜色值

            <img src=img/PandaLuxRGBPX/zh/picker.jpg width="300"/>

    - 选择一个`预置`或`颜色定义`(自定义)色块后。单击`确认`，则可以将RGB灯设置为您的所选颜色。

        <img src=img/PandaLuxRGBPX/zh/confirm.webp width="300"/>

        <img src=img/PandaLuxRGBPX/zh/custom_ok.webp width="300"/>

## 固件历史记录

### [V1.0.0](https://github.com/bigtreetech/Panda-Lux-RGB/tree/master/Firmware/v1.0.0)

- 首次发布的出厂固件。

## 功能请求

如果您希望在即将发布的固件中看到一些内容，请在官方 github repo上记录功能请求，让我们知道。[请求功能](https://github.com/bigtreetech/Panda-Lux-RGB/issues)
