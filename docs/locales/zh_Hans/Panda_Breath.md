# **Panda Breath**

<img src=/img/PandaBreath/image.jpg width="600"/>

- **产品链接**: [点击购买](https://biqu.equipment/products/biqu-panda-breath-smart-air-filtration-and-heating-system-with-precise-temperature-regulation?_pos=1&_sid=3a4ce2d06&_ss=r&variant=42353406279778) 
- **打印件下载**: [GitHub bigtreetech/Panda_Breath](https://github.com/bigtreetech/Panda_Breath/tree/master/3D%20Model/Mounting%20solution)
- **Github：** https://github.com/bigtreetech/Panda_Breath

## 修订历史
| 版本号   | 日期              | 更新内容   |
|:---------|:------------------|:-----------|
| v1.00    | 2025年12月12日      | 初始版本   |

## 固件重要更新

在使用 Panda Breath 之前，请确保您的设备已更新到[V1.0.1 及其以上版本的固件](#v101)

此固件添加了一些重要的新功能和 bug 修复。如果不更新，由于固件中的热保护逻辑对其中一个热敏电阻过于敏感，所以每次加热 30s 后设备可能会关闭加热。新固件在首次加热时添加了一个自校准逻辑，有助于 Panda Breath 补偿控制逻辑。


## 产品简介
BIQU Panda Breath是深圳必趣创新科技有限公司推出的一款用于与拓竹打印机联动的产品，可通过按键或者无线操控打印机仓温温度，为特殊耗材的打印提供良好的环境，提高打印质量。

## 产品特点
- 预留快速烧录接口，方便客户DIY烧录固件，以及后续固件升级；
- 电源开关，可以方便快速切断总电源；
- 特殊功能快捷按键，提供便捷的操控方式；
- 与打印机联动，自动化调节控制仓温；
- 最高60℃的仓温，为很多特殊耗材提供有利的环境，提高打印质量；
- 板载ESP32 WIFI模块，支持无线操控；
- 大功率PTC，让仓温升温速度得以保证；
- 较宽的电压支持范围，使得与机器得兼容性增高；
- 配备转接线，无需单独为改产品拉线，与整机共用一线；

## 产品参数
| 产品名称        | Panda Breath                                       |
| --------- | ------------------------------------------- |
| 兼容性        | 适配P1S、P1P、X1C、A1 (需搭配Panda Shelter) 3D打印机 <br>*可适配 Klipper 系列打印机（如 Snapmaker U1、Voron 等），首发固件需手动开启加热。后续固件更新将进一步支持Klipper自动启停功能。*                               |
| 主控        | ESP32-C3-MINI                               |
| 电源输入      | AC110V–220V                                 |
| PTC 加热功率  | 300W                                        |
| 2PCS 风扇规格 | 尺寸 7530，额定功率 7.8W，额定转速 5000RPM，最大风量 19.2CFM |
| 待机功率      | 0.45W                                       |
| 工作功率      | 330W                                        |
| 逻辑电压      | 3.3V                                        |
| 电源线长      | 1.1m                                        |
| PTC 限温    | 105℃                                        |
| 打印机仓温限温   | 60℃                                         |

**产品尺寸**

<img src=/img/PandaBreath/size.jpg width="400"/>

## 安装指南
**一、准备工作**

- P, X 系列机型：<br>请使用 3D 打印机自行打印增高支架。增高支架文件可从[此处获取](https://github.com/bigtreetech/Panda-Turbo-Kit/tree/master/3D%20Model)。<br><img src=/img/PandaBreath/Xinstall01.jpg width="250"/>

  X 系列机型还需打印好螺丝固定件，螺丝固定件文件可从 [此处获取](https://github.com/bigtreetech/Panda_Breath/tree/master/3D%20Model/Mounting%20solution)。<br><img src=/img/PandaBreath/Xinstall01.jpg width="250"/>

- Snapmaker U1:<br>
  请使用 3D 打印机自行打印夹持支架。夹持支架文件可从[此处获取](https://github.com/bigtreetech/Panda_Breath/tree/master/3D%20Model/Mounting%20solution)。<br><img src=/img/PandaBreath/U1install01.png width="250"/>

>关闭打印机主电源，确保操作安全。<br>

**二、P 系列安装步骤**

1. 取下打印机顶部的玻璃盖板，将增高架稳固地安置在设备顶部

<img src=/img/PandaBreath/Pinstall01.jpg width="500"/>

2. 找到设备右侧横梁中间位置的固定螺丝，使用螺丝刀将其移除

<img src=/img/PandaBreath/Pinstall02.jpg width="500"/>

3. 将 Panda Breath 底部与打印机底部的凸台对准，对齐后贴合并平稳放置

<img src=/img/PandaBreath/Pinstall03.jpg width="500"/>

4. 使用附带的M3×8自攻螺丝将Panda Breath固定在横梁上

>**提示**<br>
螺丝拧紧至固定牢靠、不松动即可，切勿过度紧固，以免损坏Panda Breath 外壳或导致螺纹滑丝

<img src=/img/PandaBreath/Pinstall04.jpg width="500"/>

5. 使用附带的理线扣，按照如下参考图的走线方式将电源线固定

<img src=/img/PandaBreath/Pinstall05.jpg width="500"/>

6. 将线材从增高架后方预留孔中穿出

<img src=/img/PandaBreath/Pinstall06.jpg width="500"/>

7. 拔下打印机原装电源线后，接上转接线，如图所示

<img src=/img/PandaBreath/Pinstall07.jpg width="500"/>

8. 撕掉包装内附带的 2 块铝箔保温隔热棉背胶，分别粘贴在机箱内左侧风扇底部和右侧位置，用于防止 Panda Breath 在长时间加热工作后外壳温度过高。

<img src=/img/PandaBreath/Aluminum_Foil.jpg width="500"/>

安装完成！

**三、X 系列安装步骤** 

1. 取下打印机顶部的玻璃盖板，将增高架稳固地安置在设备顶部

<img src=/img/PandaBreath/Pinstall01.jpg width="500"/>

2. 准备固定件

拆除设备右侧横梁中间的固定螺丝后，并将固定件塞入右侧横梁中。

<img src=/img/PandaBreath/Xinstall01.jpg width="300"/>

<img src=/img/PandaBreath/Pinstall02.jpg width="500"/>

<img src=/img/PandaBreath/Xinstall02.jpg width="500"/>

>**早期批次说明**： 如您的X1设备右侧自带螺纹柱（早期批次），可直接使用附带的M3×8机牙螺丝固定，无需打印固定件。

3. 安装并固定

将Panda Breath底部对准凸台平稳放置，使用附带的自攻螺丝固定。注意不要过度拧紧。

<img src=/img/PandaBreath/Pinstall03.jpg width="500"/>

<img src=/img/PandaBreath/Pinstall04.jpg width="500"/>

**其余步骤与P系列（5-8）完全相同**。

## 接口及按键功能描述

<img src=/img/PandaBreath/BUTTON.jpg width="600"/>

<img src=/img/PandaBreath/BUTTON02.jpg width="1200"/>

**四、Snapmaker U1 安装步骤**

安装效果预览

<img src=/img/PandaBreath/U1install02.jpg width="500"/>

1. 取出预先打印好的2个压块，使用M3×14自攻螺丝预先旋入左夹持支架

*注意：此时无需完全锁紧，保持松动状态以便后续调整*

<img src=/img/PandaBreath/zh/U1install03.jpg width="500"/>

2. 将左右夹持支架分别套入Panda Breath两侧

<img src=/img/PandaBreath/U1install04.jpg width="500"/>

3. 将Panda Breath线材拉向左侧，沿左夹持支架的线槽向上引出

<img src=/img/PandaBreath/U1install05.jpg width="500"/>

4. 将Panda Breath放置于Snapmaker U1打印仓内最后方位置，使加其背面紧贴机仓透明背板。

>提示：确保Panda Breath底部悬空，避免压到线材<br>

<img src=/img/PandaBreath/U1install06.jpg width="500"/>

<img src=/img/PandaBreath/U1install07.jpg width="500"/>

5. 确认位置无误后，将左侧夹持支架的4颗螺丝完全锁紧。 

<img src=/img/PandaBreath/U1install08.jpg width="500"/>

安装完成！

## 用户首次连接指南

<a id="first-connection"></a>

首次连接电源后设备默认执行auto模式，此时设备按键上的绿灯亮起（注：auto模式需要设备绑定打印机才会工作）。

### WiFi连接指南

<a id="ap-connect"></a>

- 连接设备WiFi_AP热点

    - 连接上Panda_Breath 发出来的AP热点: `Panda_Breath_XXXXXXXXXX`. 默认密码是 `987654321`.

        <img src=/img/PandaBreath/ap.png width="300"/>
  
- 访问AP网页

    - 连接上AP后，电脑端可以在浏览器输入默认的ip：`192.168.254.1`;手机端会自动弹出Panda_Breath的Web Ui,也可以在浏览器输入ip：`192.168.254.1`来访问网页。(注：此ip为出厂默认ip)

- 选择语言(默认英文)

    - 选择语言后可点击下一步

        <img src=/img/PandaBreath/zh/language.png width="300"/>

<a id="wifi-connect"></a>

- WiFi连接界面

    - 首次出厂或恢复出厂设置后，进入此页面会自动扫描周围WiFi，或者手动点击扫描。

        <img src=/img/PandaBreath/zh/wifi_scan.png width="300"/>

    - 扫描完成后会弹出`扫描完成`弹窗提示，点击OK关闭提示。

        <img src=/img/PandaBreath/zh/wifi_scan_ok.png width="300"/>

    - 点击Wi-Fi下方的选项，选择想要连接的WiFi

        <img src=/img/PandaBreath/zh/wifi_list.png width="300"/>

    - 输入密码，可点击密码框内右侧的`眼睛`图标来显示输入的密码

        <img src=/img/PandaBreath/zh/wifi_connect.png width="300"/>

    - 点击连接，界面会自动跳转到操作界面中的`WiFi`界面, 并显示WiFi连接中

        <img src=/img/PandaBreath/zh/wifi_connecting.png width="300"/>

    - 等待连接一段时间后，会弹出WiFi连接的状态弹窗

        - 连接失败:

            <img src=/img/PandaBreath/zh/wifi_failed.png width="300"/>

        - 连接成功，可选择点击[绑定打印机](#printer-bind)跳转到`打印机界面`，也可点击`取消`，继续待在`WiFi界面`

            <img src=/img/PandaBreath/zh/wifi_ok.png width="300"/>

<a id="printer-bind"></a>

### 绑定打印机

- 功能介绍

    <img src=/img/PandaBreath/zh/printer.png width="300"/>

    - ① 选择打印机界面，点击后聚焦为红色图标，跳转至打印机界面

    - ② 扫描周围同一局域网下的打印机

    - ③ 选择扫描到的打印机

    - ④ 输入打印机的SN码

    - ⑤ 输入打印机的访问码

    - ⑥ 输入打印机的IP

    - ⑦ 确定绑定此打印机

- 如何绑定打印机

    - 点击扫描一段时间后，会出现`扫描成功`的弹窗

        <img src=/img/PandaBreath/zh/printer_scan_ok.png width="300"/>

    - 选择扫描出的打印机，可以看到选择打印机后，会自动输入打印机的SN码和IP

        <img src=/img/PandaBreath/zh/printer_list.png width="300"/>

    - 输入打印机的`访问码`

        * 在打印机上找到`配对码` (这里以 P1 系列打印机为例)

            <img src=/img/PandaBreath/zh/p1_1_2_3.png width="600"/>

            <img src=/img/PandaBreath/zh/p1_4_5.png width="600"/>

        * 将 `配对码` 输入到 `访问码` 框内,点击绑定即可开始绑定打印机。

            <img src=/img/PandaBreath/zh/printer_bind.png width="300"/>

            <img src=/img/PandaBreath/zh/bind_ok.png width="300"/>


## 用户界面说明

### WiFi界面

<img src=/img/PandaBreath/zh/wifi_ip.png width="300"/>

- ① WiFi界面选择，点击后聚焦为红色图标，跳转至WiFi界面。

- ② 当前WiFi的连接状态。

- ③ IP地址的相关问题弹窗提示，如果 IP 地址 文本框未显示 IP, 请确保 Panda Breath 网络状态显示为 连接成功。如果显示为 未连接, 请配置网络设置。

- ④ IP地址显示(在同一局域网下，浏览器输入此IP也可访问Web网页)。

- ⑤ WiFi网络配置按钮，点击可跳转到 [WiFi连接界面](#wifi-connect)

- ⑥ 主机名显示，您可以使用主机名访问 Web UI。默认主机名为: PandaBreath。如果您不记得 IP 地址，可以在浏览器地址栏中输入主机名加上 .local 访问 Web UI (例如: http://PandaBreath.local)。点击文本框可以编辑主机名, 点击 设置主机名 按钮确认修改

- ⑦ 确认修改主机名

### AP界面

<img src=/img/PandaBreath/zh/wifi_ap.png width="300"/>

- ① AP界面选择，点击后聚焦为红色图标，跳转至WiFi界面

- ② AP热点的开关

- ③ AP热点名称，默认为 `Panda_Breath_XXXXXXXXXX`

- ④ AP热点密码，默认为 `987654321`

- ⑤ 热点IP(默认的热点 IP 为: 192.168.254.1, 如果您自己路由器的 IP 号段也为 192.168.254.xxx, Panda Breath与路由器的 IP 号段相同就会产生冲突, 并且导致 Panda Breath无法正常绑定到打印机, 请手动修改 Panda Breath 的热点 IP 使其与路由器使用不同的 IP 号段)

- ⑥ 点击确认会重启设备，重启完成后可连接ap热点。([如何连接ap热点](#ap-connect))

### 设置界面

<img src=/img/PandaBreath/zh/settings.png width="300"/>

- ① 设置界面选择，点击后聚焦为红色图标，跳转至设置界面。

- ② 选择网页中英文(默认英文)。

- ③ 显示当前的固件版本。

- ④ 固件OTA更新选择`.bin`文件。

    - 点击`选择.bin文件`按钮，选择需要ota的bin文件。

        <img src=/img/PandaBreath/zh/ota_bin.png width="300"/>

    - 等待ota进度，完成后弹窗自动重启。

        <img src=/img/PandaBreath/zh/ota_progress.png width="300"/>

        <img src=/img/PandaBreath/zh/ota_ok.png width="300"/>
  
- ⑤ 点击后，按下确定 [恢复出厂设置](#first-connection)

### 控制面板界面

- 功能介绍

    <img src=/img/PandaBreath/zh/panel.png width="300"/>

    - ① 实时仓温显示。
    - ② 单击“切换”以打开和关闭设备。
    - ③ 工作模式选择
      - 自动模式：设备绑定打印机后，根据打印机热床设定温度执行对应功能。
      - 强制开启模式：无需绑定打印机，设备直接加热至设置温度。
      - 耗材烘干模式：可设置定时烘干耗材。

- 自动模式

    - ④ 腔体目标温度。
    - ⑤ 过滤风扇开启温度（打印机热床设定温度）。
    - ⑥ 仓温加热开启温度（打印机热床设定温度）。

- 强制开启模式

    <img src=/img/PandaBreath/zh/force_on.png width="300"/>

    -  腔体目标温度（该值和自动模式下的腔体目标温度为同一值）。

- 耗材烘干模式

    <img src=/img/PandaBreath/zh/drying.png width="300"/>

    - ① 目标腔体温度和烘干倒计时。
    - ② 参数快速设置按键。
        - PLA : 目标温度60，烘干时间12。
        - PETG：目标温度55，烘干时间12。
        - 自定义：①手动修改的值将保存为自定义值。
    - ③ 开始/关闭烘干加热。

## 固件历史记录

### [V1.0.1](https://github.com/bigtreetech/Panda_Breath/tree/master/Firmware/1.0.1)

- 首次加热（恢复出厂设置后）时添加一个自校准功能，以解决误进入热保护模式而停止加热的问题。

## 功能请求

如果您希望在即将发布的固件中看到一些内容，请在官方 github repo上记录功能请求，让我们知道。[请求功能](https://github.com/bigtreetech/Panda-Breath/issues)

## 重要声明

如未遵守上述说明或因安装不当，可能导致产品损坏并使保修失效。
BIQU 对因误用或错误安装所造成的任何损坏或损失不承担任何责任。

## 相关导航
- [BIQU 官方网站](http://biqu3d.com)  
- [BIGTREETECH 官方网站](http://bigtree-tech.com)  
- [官方商城](https://biqu.equipment)  
- [用户社区](https://community.biqu3d.com)  
