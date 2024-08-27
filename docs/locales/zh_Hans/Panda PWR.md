# Panda PWR
<img src=img/PandaPWR/product.png width="600"/>

产品链接: [BIGTREETECH Official Website](https://biqu.equipment/products)

## 重要使用信息
* 如果 Panda PWR 的 IP 地址发生变更，您必须使用 Panda Touch 贴近 Panda PWR 以获取新的 IP 地址。
* 请将产品存放在干燥的环境中。避免在潮湿环境中使用。
* 本产品可独立使用或与 Panda Touch 配合使用。
* 接220VAC输入的时候先把PANDA PWR上面的输入线接好再去把线接到插座上面；
* TYPE-C口只能作为输入；
* USBA口只能作为输出；

### FCC警告
本设备遵从美国联邦通信委员会（FCC）规则第15部分的要求。其操作受制于两项条件：（1）本设备不得产生有害的干扰；（2）本设备必须承受包括可能引起非预期操作的干扰在内的所有干扰。任何未获得合规责任方明确批准的更改或修改，都有可能导致用户操作权限的丧失。
注明：经测试，本设备符合FCC规则第15部分对B类数字设备所设定的限制。这些限制的目的是为住宅安装提供合理的防护措施，以防止有害干扰。本设备可产生、使用并能辐射射频能量。若未按照说明安装和使用，可能会对无线电通信造成干扰。然而，不能确保在所有安装环境中都不会产生干扰。若本设备对无线或电视接收造成了有害干扰，用户可尝试以下一种或多种措施来解决干扰：

--调整或更换接收天线的位置。
--增大设备与接收器之间的距离。
--将设备连接至与接收器不同电路的插座。
--咨询销售商或资深无线电/电视技术人员。

遵守FCC的射频暴露指南，本设备在安装和操作时，应与发射器和人体之间保持最小20厘米的距离：务必仅使用配套提供的天线。

## 规格参数

| Wi-Fi模块 | ESP8684-MINI-1-H4|
| :-----| :----: |
| 内存 |  RAM - 272KB, Flash - 4MB |   
| 连接方式 | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| 工作温度 | -10°C至 60°C |      

## 包装清单
<img src=img/PandaPWR/packaging_cn.png width="600"/>
 
## 操作指南
 
### 接口示意图

<img src=img/PandaPWR/interface_cn.png width="600"/>

#### USB 接口
* USB1<br>输出5V可控制，用于连接需要控制开关的负载，例如 USB 灯条。<br>

* USB2<br>固定输出5V，常开，为某些模块提供电源，例如 Panda Touch。<br>

* TYPE-C<br>用于固件更新和恢复出厂设置。 

#### 按键说明

<img src=img/PandaPWR/key.png width="600"/>

* 绑定Panda Touch<br>长按约 3 秒进入绑定模式。将 Panda Touch 放置在 Panda PWR 的外壳上。
<br>

* 激活 220V 电源供应<br>双击Bind按键。
<br>

* 恢复出厂设置<br>长按此按钮约8s直至指示灯变为红灯闪烁后可恢复出厂设置。
<br>

#### 指示灯说明
* 蓝色常亮: 在局域网独立模式下运行。 
* 蓝色呼吸: ：正在绑定 Panda IoT 设备。
* 绿色: 与 Panda IoT 设备正常通信。
* 绿色闪: 与 Panda IoT 设备通信错误。
* 红色呼吸: 设备正在恢复出厂设置。

### 首次连接

在初次使用时，Panda PWR 将生成一个默认名称为 'PandaPWR_XXXXXX' 的接入点，其中 'XXXXXX' 代表六个随机的大写字母序列。默认密码是九位数字：'987654321'。

#### 配置网络
1 使用您的手机或电脑连接到名为 'PandaPWR_XXXXXX' 的 AP。

<img src=img/PandaPWR/ap.png width="300"/>

2 在已连接设备（手机或电脑）的浏览器中输入 IP 地址 '192.168.4.1'。通常，在输入 AP 密码后，您应该会自动重定向到网页用户界面（UI）。

<img src=img/PandaPWR/jump.png width="300"/>

3 选择您希望连接的 Wi-Fi 网络并输入其密码。

<img src=img/PandaPWR/config_sta.png width="300"/>

4 点击“Connect连接”按钮。此后，您将自动重定向到控制（ctl）页面，您可以在“Wi-Fi & IP”页面上找到更新的 IP 地址。

<img src=img/PandaPWR/ctl_page.png width="300"/><br><img src=img/PandaPWR/ip.png width="300"/>

#### 配置 AP 名称和密码 

为了便于识别，特别是当使用多个设备时，我们建议重命名 AP。

* 点击“AP”按钮，导航到 AP 页面，在此您可以修改 AP 名称和密码。点击“确认”按钮确认更改。

<img src=img/PandaPWR/config_ap.png width="300"/>

### 工作模式
Panda PWR 可以工作在两种不同模式

#### 局域网独立模式
在此模式下，您可以使用手机或电脑通过 WEB-UI 远程控制 Panda PWR。[如何使用WEB-UI来控制Panda PWR](#web_control)
<br><img src=img/PandaPWR/lan_mode.png width="400"/>

#### Panda Touch 连接模式
在此模式下，搭配 Panda Touch 使用。[如何使用 PandaTouch 来控制Panda PWR](#pandatouch_control)

<img src=img/PandaPWR/touch_bind_mode.png width="400"/>  

#### 如何切换工作模式
要从局域网独立模式切换到 Panda Touch 连接模式，长按Bind按钮大约 3 秒。如果绑定成功，设备将保持在 Panda Touch 连接模式。如果没有，它将恢复到局域网独立模式。

### WEB UI 操作指南 <a id="web_control"></a>
#### 配网
* 点击“Wi-Fi&IP”按钮，导航到 Wi-Fi 页面，显示 IP 地址。<br>
* 要修改 IP 地址，点击“Wi-Fi配置”按钮。<br><img src=img/PandaPWR/check_ip.png width="400"/>

#### 恢复出厂设置
* 恢复出厂设置将会重置 Panda PWR 的 Wi-Fi 名称为 'Panda PWR_XXXXX'，其中 'XXXXX' 代表随机生成的五个大写字母组合。此举旨在避免同一区域内出现多个相同的 Panda PWR Wi-Fi 名称，减少用户混淆。此外，Wi-Fi 登录密码将被重置为 '9876543210'。
方法 1:
点击“OTA”按钮，切换到 OTA 页面。
点击“恢复出厂”按钮以恢复出厂设置。
<br><img src=img/PandaPWR/factory.png width="400"/>
方法2：
长按“Bind”按钮约8秒，直至指示灯闪烁红色，表示PWR正在重置。

#### 使用WEB-UI控制它

##### 基本控制
* 点击“Power”按钮，切换外部电源的开和关。
* 点击“USB 1”按钮，切换 USB1 端口的开和关。
* 点击“Reset Usage”按钮，清除电量消耗数据。<br><img src=img/PandaPWR/ctl_btn.png width="400"/>

##### 倒计时控制
* 点击“定时关机”按钮并输入所需的目标时间
<img src=img/PandaPWR/countdown_start.png width="400"/> 
<br><img src=img/PandaPWR/countdown_input.png width="400"/>

* 暂停/继续倒计时
<br><img src=img/PandaPWR/countdown_pause.png width="400"/><img src=img/PandaPWR/countdown_continue.png width="400"/> 
* 停止倒计时
<br><img src=img/PandaPWR/countdown_stop.png width="400"/>

#### 固件升级
* 点击“OTA”按钮，进入 OTA 页面。
* 点击“选择文件”按钮，选择您希望更新的 .bin 文件。
<br><img src=img/PandaPWR/ota_choose_file.png width="400"/> 
<br><img src=img/PandaPWR/ota_ok.png width="400"/>

#### 快速访问
将IP浏览页面保存到手机的主屏幕上，以便将来快速轻松地访问。
<br><img src=img/PandaPWR/quick_access.png width="200"/> 

### 通过 Panda Touch 控制 <a id="pandatouch_control"></a>
#### 绑定Panda Touch
* 打开 Panda PWR 页面。<br><img src=img/PandaPWR/bind_before.png width="600"/>  
* 长按“Bind”按钮，直到蓝灯开始闪烁（大约 3 秒）。 
* 将 Panda Touch 放置在 Panda PWR 外壳上，以建立连接。
<img src=img/PandaPWR/ask_bind.png width="600"/>  

* 绑定成功后，Panda PWR 的数据将在此页面显示。
<img src=img/PandaPWR/bind_ok.png width="600"/>    

#### 与Panda Touch解除绑定
* 若要将 Panda PWR 绑定到另一设备，请先解绑当前连接。
<img src=img/PandaPWR/unbind.png width="600"/>    

#### 打完关机
当您需要打印机在打印完成后自动关闭时，激活自动断电开关，设置倒计时时间和温度限值，并在条件满足时启动倒计时。倒计时完成后，Panda PWR 将自动切断打印机的电源供应。

* 激活自动断电
<br><img src=img/PandaPWR/start_auto_power_off.png width="600"/>

* 当打印机在线且温度达到设定限值时，倒计时将自动开始。如果条件不满足，倒计时将暂停，并在条件再次满足时恢复。
<br><img src=img/PandaPWR/auto_power_off_ing.png width="600"/>

#### 清除电量消耗数据 
Panda PWR 记录负载的电力消耗。要重置数据，请点击“RST Usage”按钮。

<br><img src=img/PandaPWR/reset_usage.png width="600"/>

#### USB1 跟随打印机灯光
* 设置为开：USB1 将跟随打印机的 LED 变化。如果 LED 灯亮，则 USB1 输出 5V；如果关闭，则输出禁用。
* 设置为关：USB1 仅在手动控制下操作，与打印机的 LED 状态无关。
<br><img src=img/PandaPWR/usb1_function.png width="600"/>

## 固件

### 固件历史

#### [V1.0.0](https://github.com/bigtreetech/PandaPWR/blob/master/Firmware/panda_pwr-v1.0.0.bin)

* 初始发布的工厂固件版本。
 
## 功能请求
我们欢迎您为未来的固件更新提供建议。请在官方 Panda PWR GitHub 仓库中提交您的功能请求。

[请求功能](https://github.com/bigtreetech/PandaPWR/issues)

## 恢复工具
如果 Panda PWR 无法启动且无法进行 OTA 更新，请使用恢复工具恢复功能。
[下载恢复工具](https://github.com/bigtreetech/PandaPWR/Recovery_tool)

## 技术支持
这个页面对您有帮助吗？如果您对产品使用有任何疑问或遇到问题，请联系我们的售后团队：<br>service001@biqu3d.com
