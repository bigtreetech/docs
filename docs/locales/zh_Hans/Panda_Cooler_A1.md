# **Panda Cooler A1**

<img src=img/PandaCoolerA1/panda_cooler_a1.jpg width="400"/>

* **Product Link**: [Click to Buy](https://bit.ly/4pkQhnK)


## **修订历史**

| 版本号   | 日期              | 更新内容   |
|:---------|:------------------|:-----------|
| v1.00    | 2025年9月9日      | 初始版本   |


## **产品简介**

Panda Cooler A1 是专为 Bambu Lab A1/A1 mini 打印头研发的升级组件。其电机散热风扇可使电机温度降低 15–25°C，并配备可自定义 RGB 风扇照明与喷嘴照明。该组件支持即插即用，在长时间打印过程中有效提升性能，同时兼顾个性化外观，实现性能与美学的统一。


## **产品特点**

- **智能散热**： 内置ESP32芯片连接网络，智能检测打印状态。打印开始时自动启动Panda Cooler A1，确保步进电机快速降温；待机时自动停止，静享安静环境。

- **H2D状态灯逻辑**：从0到100%，Panda Cooler A1 让您通过直观的灯光变化，轻松掌握打印进度。

- **多种动态灯效**：1600 万色随心切换，轻松融入你的工作空间风格。

- **独立喷嘴照明系统**：支持跟随风扇灯效同步变化或常亮白光照明模式，亮度可调节，方便观察打印过程和首层附着情况。

- **Web UI 无线控制**：通过简洁直观的网页控制面板，轻松调节灯效模式、颜色、亮度与速度，赋予您更高的操作自由度与便捷体验。


## **产品参数**

- **产品名称**：BIQU Panda Cooler A1

- **外壳材质**：ABS

- **微处理器**：ESP32-C3-MINI-1-H4

- **输入电压**：DCIN = DC24V

- **逻辑电压**：DC3.3V

- **最大输出电流**：0.25A（额定）

- **适配机型**：A1，A1 mini 3D 打印机


## **安装指南**

### 产品包装清单

请参照下图确认您收到的产品包装内容。

<img src=img/PandaCoolerA1/zh/list.jpg width="600"/>

### 安装步骤

* 步骤 1：准备工作

    将带背胶垫片粘贴到底部喷嘴照明灯主板后方两个孔位上。

    <img src=img/PandaCoolerA1/install1.jpg width="300"/>

    **⚠️ 注意**：请确保粘贴在没有灯珠的一面。

* 步骤 2：拆卸原装螺丝

    拆除打印头下方风扇的四颗原装固定螺丝。

    <img src=img/PandaCoolerA1/install2.png width="500"/>

* 步骤 3：安装喷嘴照明灯

    使用随附的 M1.7×8 和 M1.7×10 自攻螺丝将喷嘴照明灯安装固定。

    <img src=img/PandaCoolerA1/install3.png width="500"/>

    **重要提醒**：灯珠面必须朝向热床方向。

* 步骤 4：安装RGB风扇模块

    将RGB风扇模块扣合在挤出头左侧的支架上，确保固定稳定。

    <img src=img/PandaCoolerA1/install4.png width="400"/>

* 步骤 5：安装控制模块

    * 取出随附的控制模块，将其拆分为外壳和控制板两部分

    * 将控制板扣入打印头上方的两个凹槽中

    <img src=img/PandaCoolerA1/install5.jpg width="400"/>

    <img src=img/PandaCoolerA1/install6.png width="400"/>

* 步骤 6：连接电源

    将电源取电接口插入USB口中。

    <img src=img/PandaCoolerA1/install7.jpg width="400"/>

    **操作要点**：确保4个针脚完全插入到位。

* 步骤 7：固定控制模块外壳

    使用随附的 M2.6×8 自攻螺丝将控制模块外壳固定到底座上。

    <img src=img/PandaCoolerA1/install8.png width="400"/>

* 步骤 8：固定Type-C线缆

    使用随附的 M2×25 自攻螺丝将拓竹原装Type-C线固定。

    <img src=img/PandaCoolerA1/install9.jpg width="400"/>

* 步骤 9：连接风扇电源

    将风扇的2PIN插头接入图示的任一2PIN插口。

    <img src=img/PandaCoolerA1/install10.png width="400"/>

* 步骤 10：连接RGB灯插头

    将风扇RGB灯插头插入后方对应的3PIN接口。

    <img src=img/PandaCoolerA1/install11.png width="400"/>

    **⚠️ 警告**：请仔细核对接口，避免接错。底部喷嘴照明灯的插头暂时不要接入。

* 步骤 11：整理线束

    将底部喷嘴照明灯的线束整理并放入走线盖板的槽中。

    <img src=img/PandaCoolerA1/install12.png width="300"/>

* 步骤 12：完成安装

    * 将走线盖板扣入右侧支架上，确保固定稳固

    * 连接喷嘴照明灯的插头，完成全部安装

    <img src=img/PandaCoolerA1/install13.png width="300"/>


<a id="reset_config"></a>

## 用户首次连接指南 

首次连接电源后或执行“恢复出厂设置”命令后，您将看到如下的蓝色跑马灯，代表此时 `Panda_Cooler_A1` 没有绑定打印机。

### WiFi连接指南

<a id="wifi_connect_ap"></a>

* 连接设备WiFi_ap热点

    连接上Panda_Cooler_A1发出来的AP热点：`Panda_Cooler_A1_XXXXXXXXXX`,AP密码：`987654321`(出厂默认密码)

    找到对应热点，输入密码:

    <img src=img/PandaCoolerA1/ap.jpg width="200"/>

* 访问 WebUI

    连接上AP后，电脑端可以在浏览器输入默认的ip：`192.168.254.1`;手机端会自动弹出Panda_Cooler_A1的Web Ui,也可以在浏览器输入ip：`192.168.254.1`来访问网页。(注：此ip为出厂默认ip)

* 选择语言(默认英文)

    选择语言后可点击下一步

    <img src=img/PandaCoolerA1/zh/language.jpg width="300"/>

<a id="wifi_connect_section"></a>

* WiFi连接界面

    * 扫描WiFi

        首次出厂或恢复出厂设置后，进入此页面会自动扫描周围WiFi

        <img src=img/PandaCoolerA1/zh/wifi_scan.jpg width="300"/>

        扫描完成后会弹出`扫描完成`弹窗提示

        <img src=img/PandaCoolerA1/zh/wifi_scan_ok.jpg width="300"/>

        选择想要连接的WiFi

        <img src=img/PandaCoolerA1/zh/wifi_list.jpg width="300"/>

    * 连接WiFi

        输入密码，可点击密码框内右侧的`眼睛`图标来显示输入的密码

        <img src=img/PandaCoolerA1/zh/wifi_connect.jpg width="300"/>

        点击连接，界面会自动跳转到操作界面中的`WiFi`界面,并显示WiFi连接中

        <img src=img/PandaCoolerA1/zh/wifi_connecting.jpg width="300"/>

        等待连接一段时间后，会弹出WiFi连接的状态弹窗

        连接失败：

        <img src=img/PandaCoolerA1/zh/wifi_failed.jpg width="300"/>

        连接成功，可选择`绑定打印机`跳转到`打印机界面`，也可点击`取消`，继续待在`WiFi界面`

        <img src=img/PandaCoolerA1/zh/wifi_ok.jpg width="300"/>

### 绑定打印机界面

* 功能介绍

    <img src=img/PandaCoolerA1/zh/printer.jpg width="300"/>

    * ① ：打印机界面选择，点击后聚焦为红色图标，跳转至打印机界面

    * ② ：扫描周围同一局域网下的打印机

    * ③ ：选择扫描到的打印机
    
    * ④ ：输入打印机的sn码

    * ⑤ ：输入打印机的访问码

    * ⑥ ：输入打印机的IP

    * ⑦ ：确定绑定此打印机

* 如何绑定打印机？

    * 点击扫描一段时间后，会出现`扫描成功`的弹窗

        <img src=img/PandaCoolerA1/zh/printer_scan_ok.jpg width="300"/>

    - 选择扫描出的打印机，可以看到选择打印机后，会自动输入打印机的SN码和IP

        <img src=img/PandaCoolerA1/zh/printer_list.jpg width="300"/>

    - 输入打印机的`访问码`

        * 在打印机上找到`访问码` (这里以 A1 系列打印机为例)

            * ①	`设置`

                <img src=img/PandaCoolerA1/zh/a1_1.jpg width="300"/>

            * ② -> ③ `局域网模式`

                <img src=img/PandaCoolerA1/zh/a1_2_3.jpg width="300"/>

            * ④ `访问码`

                <img src=img/PandaCoolerA1/zh/a1_4_5.jpg width="300"/>

        * 将 `访问码` 输入到 `访问码` 框内,点击绑定即可开始绑定打印机。

            <img src=img/PandaCoolerA1/zh/printer_bind.jpg width="300"/>

            <img src=img/PandaCoolerA1/zh/bind_ok.jpg width="300"/>

## 用户界面说明

### WiFi界面

<img src=img/PandaCoolerA1/zh/wifi_ip.jpg width="300"/>

* ① ：WiFi界面选择，点击后聚焦为红色图标，跳转至WiFi界面

* ② ：当前WiFi的连接状态

* ③ ：IP地址的相关问题弹窗提示，如果 IP 地址 文本框未显示 IP, 请确保 Panda Cooler A1 网络状态显示为 连接成功。如果显示为 未连接, 请配置网络设置。

* ④ ：IP地址显示(在同一局域网下，浏览器输入此IP也可访问Web网页)

* ⑤ ：WiFi网络配置按钮，点击可跳转到[WiFi连接界面](#wifi_connect_section)

* ⑥ ：主机名显示，您可以使用主机名访问 Web UI。默认主机名为: PandaCooler。如果您不记得 IP 地址，可以在浏览器地址栏中输入主机名加上 .local 访问 Web UI (例如: http://PandaCooler.local)。点击文本框可以编辑主机名, 点击 设置主机名 按钮确认修改

* ⑦ ：确认修改主机名

### AP界面

<img src=img/PandaCoolerA1/zh/wifi_ap.jpg width="300"/>

* ① ：AP界面选择，点击后聚焦为红色图标，跳转至WiFi界面

* ② ：AP热点的开关

* ③ ：AP热点名称，默认为`Panda_Cooler_A1_XXXXXXXXXX`

* ④ ：AP热点密码，默认为`987654321`

* ⑤ ：热点IP(默认的热点 IP 为: 192.168.254.1, 如果您自己路由器的 IP 号段也为 192.168.254.xxx, Panda Cooler A1 与路由器的 IP 号段相同就会产生冲突, 并且导致 Panda Cooler A1 无法正常绑定到打印机, 请手动修改 Panda Cooler A1 的热点 IP 使其与路由器使用不同的 IP 号段)

* ⑥ ：点击确认会重启设备，重启完成后可连接ap热点([如何连接ap热点](#wifi_connect_ap))


### 设置界面

<img src=img/PandaCoolerA1/zh/settings.jpg width="300"/>

* ① ：设置界面选择，点击后聚焦为红色图标，跳转至设置界面

* ② ：选择网页中英文(默认英文)

* ③ ：显示当前的固件版本

* ④ ：固件OTA更新选择`.bin`文件

    * 点击`选择.bin文件`按钮，选择需要ota的bin文件

    * 等待ota更新，更新完成后设备会自动重启

        <img src=img/PandaCoolerA1/zh/ota_progress.jpg width="300"/>

* ⑤ ：点击后，按下确定([恢复出厂设置](#reset_config))

### 控制面板界面

<img src=img/PandaCoolerA1/zh/panel.jpg width="300"/>

* ① ：当前设备名称

* ② ：当前设备RGB灯总开关

* ③ ：设备是否跟随打印机的灯光

* ④ ：设备是否启用警告模式

* ⑤ ：设备当前的灯效

* ⑥ : 自定义设备当前的灯效颜色

* ⑦ ：设备当前的灯效亮度

* ⑧ ：设备当前的灯效速度

* ⑨ ：喷嘴灯效选择

#### 跟随打印机灯光

* 开启此开关后，在绑定打印机、网络正常、总开关开启的情况下，打印机（这里以XE1为例）开启灯光后，Panda_Cooler_A1 会随之亮起，关闭灯光后，会随之熄灭。

#### 警告开关

* 开启此开关后，在绑定打印机、网络正常、总开关开启的情况下，打印机出现故障后，Panda_Cooler_A1 会自动启动故障灯效（红色爆闪），此时会覆盖自定义的其他灯效。

#### 灯效

* Panda_Cooler_A1 灯效分为 9 中模式，分别为下图所示中的：恒亮、呼吸、闪烁、流水、跑马灯、七彩循环、幻彩、高温警告、H2D风格。`其中七彩循环和幻彩模式不支持自定义颜色，恒亮不可调节速度`

    <img src=img/PandaCoolerA1/zh/7-1.jpg width="300"/>

##### 高温警告

<img src=img/PandaCoolerA1/zh/7-2.jpg width="300"/>

* ①：表示打印机安全和高温的情况下，Panda_Cooler_A1的颜色

* ②：用来控制高温模式下的亮速度

* ③：可以分别选择在安全或者高温模式下的灯效(恒亮或爆闪)

##### H2D风格

<img src=img/PandaCoolerA1/zh/7-3.jpg width="300"/>

* ①：表示打印机在特定模式下的灯效颜色，详情可点击颜色旁的提示按钮查看

* ②：用来控制高温模式下的亮度(速度不可自定义)


#### 喷嘴灯效

* 点击喷嘴灯效可出现两个选项(跟随风扇灯光以及白灯常亮)

    <img src=img/PandaCoolerA1/zh/7-4.jpg width="300"/>


<a id="rgb_set_color"></a>

#### 自定义灯效颜色

* 设置颜色(以恒亮状态为例，`恒亮不可调节速度`)
    
    在控制界面下选择恒亮模式，点击Color下的框

    <img src=img/PandaCoolerA1/zh/7-5.jpg width="300"/>

    跳转到颜色设置界面，可选上方预设好的色块，也可自定义。下面简单介绍下自定义，点击下方白色色块。

    <img src=img/PandaCoolerA1/zh/7-6.jpg width="300"/>

    来到色盘选择界面，选择自己想要的颜色(这里以天蓝色为例)

    <img src=img/PandaCoolerA1/zh/7-7.jpg width="300"/>

    点击确认

    <img src=img/PandaCoolerA1/zh/7-8.jpg width="300"/>

    设置成功

    <img src=img/PandaCoolerA1/zh/7-9.jpg width="300"/>


* 出厂默认亮度速度均为50%(个别模式不支持调整颜色、速度)


## 固件历史记录

### [V1.0.0](https://github.com/bigtreetech/PandaCoolerA1/tree/master/Firmware/v1.0.0)
* 首次发布的出厂固件。


## 功能请求

如果您希望在即将发布的固件中看到一些内容，请在官方 github repo上记录功能请求，让我们知道。
[请求功能](https://github.com/bigtreetech/PandaCoolerA1/issues)
