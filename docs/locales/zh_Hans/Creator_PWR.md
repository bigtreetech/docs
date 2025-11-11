# Creator PWR
<img src=img/Creator_PWR/product.png width="600"/>

产品链接: [BIGTREETECH Official Website]()

## 重要使用信息 
* 请将产品存放在干燥的环境中。避免在潮湿环境中使用；
* 接220VAC输入的时候先把PWR上面的输入线接好再去把线接到插座上面；
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
<img src=img/Creator_PWR/packaging_cn.png width="400"/>

 
## 操作指南
 
### 接口示意图

<img src=img/Creator_PWR/interface_cn.jpg width="600"/>

#### USB 接口
* USB1<br>输出5V可控制，用于连接需要控制开关的负载，例如 USB 灯条。<br>

* USB2<br>固定输出5V，常开。<br>

* TYPE-C<br>用于固件更新和恢复出厂设置。 

#### Bind按键说明

<img src=img/Creator_PWR/key.png width="600"/>

* 倒计时控制：<br>长按1s倒计时开启/关闭。
<br>

* 打开或关闭 220V 电源输出：<br>双击Bind按键。
<br>

* 恢复出厂设置：<br>长按此按钮约8s直至指示灯变为红灯闪烁后可恢复出厂设置。
<br>

#### 指示灯说明
* 绿色常亮: 上电后。 
* 蓝色呼吸: 正在倒计时。  
* 红色呼吸: 设备正在恢复出厂设置。 

### 首次使用指南
#### 首次配置
1.使用您的手机或电脑连接到名为 'Creator_PWR_XXXXXXXXXXXX' 的 AP。
 <br/>出厂默认的AP信息如下：<br/>
    Wi-Fi名称: `Creator_PWR_xxxxxxxxxxxx`<br/>
    Wi-Fi密码: `987654321`<br/>
<img src=img/Creator_PWR/ap.png width="400"/>

2.通常连接上 AP 后，会自动跳转到网页用户界面（Web UI）。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 可以在浏览器中手动输入 `192.168.254.1` 访问Web UI配置界面。

<img src=img/Creator_PWR/welcome.png width="400"/>

3.首次配置会自动进入 `选择语言` 界面，设置完语言后，点击 `下一步`。

<img src=img/Creator_PWR/language.png width="400"/>

4.自动进入连接 Wi-Fi 界面，扫描环境中的 Wi-Fi网络，请选择打印机所连接的 Wi-Fi 进行连接。如果没有扫描到打印机连接的 Wi-Fi, 可以点击Wi-Fi名称下拉框上面的 “扫描” 按钮重新扫描。

<img src=img/Creator_PWR/config_sta.png width="400"/>

5.Wi-Fi连接成功后，会自动弹出 Creator PWR设备的 IP 地址弹框，点击 “确定”按钮。
<br>
<img src=img/Creator_PWR/sta_ip.png width="400"/> 

6.输入一个您喜欢的打印机名，输入您目标连接的打印机IP地址，输入端口：4408，点击“连接”按钮，开始连接打印机, 当出现 `连接成功` 的弹窗意味着 Creator PWR已经成功连接到打印机了，点击“确定”按钮。

<img src=img/Creator_PWR/config_printer.png width="400"/> 

### WEB UI 操作指南 <a id="web_control"></a>

#### 电源控制
##### 基本控制 
<img src=img/Creator_PWR/control.png width="400"/> 

* 1.可以开启和关闭220V输出。
* 2.可以开启和关闭打完关机功能。
<br>
当您需要打印机在打印完成后自动关闭时，打开此开关，打完关机后此开关会自动关闭。

* 3.可以开启和关闭USB1端口输出。
* 4.可以开启和关闭倒计时功能。
* 5.可以配置倒计时的时间。

##### 电源参数
可以实时显示给外部设备供电的电压、电流、功率
<br>
<img src=img/Creator_PWR/real_data.png width="400"/> 

##### 倒计时设置
点击“修改”按钮，弹出倒计时设置弹窗，设定目标时间后点击 “保存”按钮
<br>
<img src=img/Creator_PWR/config_countdown.png width="400"/>  
您设定的目标时间会显示出来
<br>
<img src=img/Creator_PWR/switch_countdown.png width="400"/>   

#### 进入设置页
在电源控制页点击右上角的设置按钮进入设置页
<br>
<img src=img/Creator_PWR/goto_setting.png width="400"/>  

#### 配置安全功率  
<img src=img/Creator_PWR/goto_power_safe.png width="400"/>  
<br>
输入最大功率和最小功率目标数值，打开对应的开关按钮保存才会生效，当功率大于最大功率或者小于最小功率时电源会自动断开220V供电。
<br>
<img src=img/Creator_PWR/config_power_safe.png width="400"/>   

#### 查看用电记录 
<img src=img/Creator_PWR/goto_power_usage.png width="400"/>  

可以查看到当前的用电量和打印总时长，也可以通过下方的按钮清零数据
<br>
<img src=img/Creator_PWR/power_usage.png width="400"/>

#### 修改Wifi配置 
<img src=img/Creator_PWR/goto_wifi.png width="400"/>

<br>

* 在设置页跳转到该页面
<br>①点击扫描本地Wi-Fi网络
<br>②扫描完后，选择Wi-Fi名称
<br>③输入Wi-Fi密码
<br> ④连接
<br>

<img src=img/Creator_PWR/change_wifi.png width="400"/>


#### 修改AP配置 
<img src=img/Creator_PWR/goto_ap.png width="400"/> 

可以修改PWR产生的AP信息,更改后的密码如果忘记了，可以通过bind按键将设备恢复重置到出厂模式。
<br>
<img src=img/Creator_PWR/change_ap.png width="400"/>  

#### 修改语言 
<img src=img/Creator_PWR/goto_language.png width="400"/> 

可以修改当前的WEB UI的语言，仅支持中文和英文，选择完点击“确认”才可生效。
<br>
<img src=img/Creator_PWR/change_language.png width="400"/> 

#### 更新固件
<img src=img/Creator_PWR/goto_ota.png width="400"/>  

<br>

<img src=img/Creator_PWR/upload.png width="400"/>   

* 在设置页跳转到该页面
<br> ①点击“选择文件”按钮，选择您希望更新的 .bin 文件上传。
<br>②点击“固件上传”按钮，开始升级固件

#### 恢复出厂设置
方法 1:
在设置页点击对应的按钮。
<br>
<img src=img/Creator_PWR/goto_factory.png width="400"/> 
<br>
在恢复出厂弹框中，可以是否选择清除用电记录，再点击“确认”按钮以恢复出厂设置。<br>
恢复出厂设置会将设备的AP信息更改成出厂默认的一样， Wi-Fi 名称重置为 `Creator_PWR_xxxxxxxxxxxx`，Wi-Fi 登录密码将被重置为 `987654321`。
<br>
<img src=img/Creator_PWR/factory.png width="400"/>

方法2：
长按“Bind”按键约8秒，直至指示灯闪烁红色，表示正在恢复出厂。 
<br>
<img src=img/Creator_PWR/bind.png width="600"/>

#### 关于PWR
<img src=img/Creator_PWR/goto_about.png width="400"/>

可以看到设备IP和SN号
<br>
<img src=img/Creator_PWR/check_about.png width="400"/>

### 通过自定义宏控制USB1和220V电源
* 下载配置文件 [creator_pwr.cfg](https://github.com/bigtreetech/CreatorPWR/blob/master/creator_pwr.cfg)
* 上传配置文件到 /config
* 包含到printer.cfg中

~~~
[include creator_pwr.cfg]
~~~

## 固件

### 固件历史  
#### [01.00.00.00](https://github.com/bigtreetech/CreatorPWR/blob/master/Firmware/01.00.00.00/creator_pwr-01.00.00.00.bin)

* 初始发布的工厂固件版本。
 
## 功能请求
我们欢迎您为未来的固件更新提供建议。请在官方 Creator PWR GitHub 仓库中提交您的功能请求。
[请求功能](https://github.com/bigtreetech/CreatorPWR/issues)

## 恢复工具
如果 Creator PWR 无法启动且无法进行 OTA 更新，请使用恢复工具恢复功能。
[下载恢复工具](https://github.com/bigtreetech/CreatorPWR/blob/master/Recovery_tool/Recovery_tool.rar)

## 技术支持
这个页面对您有帮助吗？如果您对产品使用有任何疑问或遇到问题，请联系我们的售后团队：
<br>service001@biqu3d.com
