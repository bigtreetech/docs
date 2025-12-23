# Panda Status

## 产品特点

* 内置麦克风，用户可自行DIY根据声音亮不同灯显示声音强度；
* 预留快速烧录接口，方便客户DIY烧录固件，以及后续固件升级；
* 支持RGB接口，连接WS2812系列灯条；
* Type-C接口供电，方便客户使用；
* RGB灯条支持客户自行DIY灯效；
* 板载ESP32 WIFI模块，支持无线操控。

## 产品参数

| 微处理器    |        ESP32-C3-MINI        |
| :---------- | :-------------------------: |
| 控制板尺寸  |          50mm*25mm          |
| 电源输入    |        Type-C：5V 3A        |
| 逻辑电压    |            3.3V             |
| RGB输出接口 | PH2.0 3Pin：5V 1.5A（峰值） |
| 待机状态    |        5V 90mA 0.45W        |
| 工作状态    |   5V 540mA 2.73W（峰值）    |

## 装配说明

### Bambu Lab P1S

* 第一步：打印控制板PCB外壳，从 [github](https://github.com/bigtreetech/Panda_Status/tree/master/Print_Files) 或者 [Maker world](https://makerworld.com/zh/models/1650182-panda-status-upper-shell#profileId-1744587) 下载打印文件

  <img src=img/panda_status/case.webp width="600"/>

* 第二步：将控制板安装至打印件内，扣压紧后盖

  <img src=img/panda_status/1.jpg width="600"/>

  <img src=img/panda_status/2.jpg width="600"/>

  <img src=img/panda_status/3.jpg width="600"/>

* 第三步：拆掉料管硅胶塞

  <img src=img/panda_status/4.jpg width="600"/>

* 第四步：将供电线C口穿过硅胶塞孔，并插到安装了外壳的控制板

  <img src=img/panda_status/7.webp width="600"/>

  <img src=img/panda_status/5.jpg width="600"/>

  <img src=img/panda_status/6.jpg width="600"/>

* 第五步：将打印件装到机器内(压缩打印件弹簧，推进机器内卡住后向右推至底部)，并插上灯板供电线

  <img src=img/panda_status/10.webp width="600"/>

  <img src=img/panda_status/8.jpg width="600"/>

  <img src=img/panda_status/9.jpg width="600"/>

* 第六步：固定供电线，并塞回硅胶塞（硅胶塞一端无需卡入）

  <img src=img/panda_status/12.jpg width="600"/>

* 第七步:固定灯板供电线（如图布线并使用盒内配套醋酸胶布固定）

  <img src=img/panda_status/11.jpg width="600"/>

  <img src=img/panda_status/13.jpg width="600"/>

  <img src=img/panda_status/14.jpg width="600"/>

  <img src=img/panda_status/15.jpg width="600"/>

  <img src=img/panda_status/16.jpg width="600"/>

  <img src=img/panda_status/17.jpg width="600"/>

  <img src=img/panda_status/18.jpg width="600"/>

* 第八步：升高热床，分别使用酒精棉与干燥布清理安装面

  <img src=img/panda_status/19.jpg width="600"/>

  <img src=img/panda_status/20.jpg width="600"/>

* 第九步：插上灯条供电线，撕开双面胶离型膜，将灯条贴在热床正面按压粘合牢固（24小时后粘合效果最佳）

  <img src=img/panda_status/21.jpg width="600"/>

  <img src=img/panda_status/22.jpg width="600"/>

  <img src=img/panda_status/23.jpg width="600"/>

  <img src=img/panda_status/24.jpg width="600"/>

  <img src=img/panda_status/25.jpg width="600"/>

* 第十步：热床底部布线（如图所示）

  <img src=img/panda_status/27.webp width="600"/>

### Bambu Lab A1

* 第一步：打印控制板PCB外壳，从 [github](https://github.com/bigtreetech/Panda_Status/tree/master/Print_Files) 或者 [Maker world](https://makerworld.com/zh/models/1650182-panda-status-upper-shell#profileId-1744587) 下载打印文件

  <img src=img/panda_status/A1_case.webp width="600"/>

* 第二步：将控制板安装至打印件内，扣压紧后盖

  <img src=img/panda_status/A1_1.webp width="600"/>

  <img src=img/panda_status/A1_2.webp width="600"/>

* 第三步：将打印件固定在机器背后（剪盒内配送的较长双面胶作为控制盒背胶使用）

  <img src=img/panda_status/A1_3.webp width="600"/>

  <img src=img/panda_status/A1_4.webp width="600"/>

  <img src=img/panda_status/A1_5.webp width="600"/>

* 第四步：前移热床，分别使用酒精棉与干燥布清理安装面

  <img src=img/panda_status/A1_13.webp width="600"/>

* 第五步：插上灯条供电线，撕开双面胶离型膜，将灯条贴在热床正面按压粘合牢固（24小时后粘合效果最佳）

  <img src=img/panda_status/A1_6.webp width="600"/>

  <img src=img/panda_status/A1_7.webp width="600"/>

  <img src=img/panda_status/A1_8.webp width="600"/>

* 第六步：将醋酸胶布撕至合适长度用于热床底部布线（如图所示）

  <img src=img/panda_status/A1_9.webp width="600"/>

  <img src=img/panda_status/A1_10.webp width="600"/>

  <img src=img/panda_status/A1_11.webp width="600"/>

* 第七步:将灯条供电线与控制板供电线插至控制板上

  <img src=img/panda_status/A1_12.webp width="600"/>

### Bambu Lab PX系列隐藏式布线方案(⚠️该方案可将走线完全隐藏，但过程较为复杂，且需要一定动手能力，请结合自身实际情况操作)

**⚠️以下操作请断电操作**

* 第一步：打印控制板PCB外壳

<img src=img/panda_status/A1pcb.webp width="600"/>

* 第二步：将控制板安装至打印件内，扣压紧后盖,并使用包装盒内附赠的双面胶贴至打印件背部，如图

<img src=img/panda_status/hide_8.jpg width="600"/>

* 第三步：拆掉打印机背部盖板，将打印件按图示贴至废料导管处，注意Type-C供电口向上

<img src=img/panda_status/hide_11.jpg width="600"/>

* 第四步：升高热床，分别使用酒精棉与干燥布清理安装面，撕开双面胶离型膜，将灯条贴在热床正面按压粘合牢固（24小时后粘合效果最佳）

<img src=img/panda_status/19.jpg width="600"/>

<img src=img/panda_status/20.jpg width="600"/>

<img src=img/panda_status/25.jpg width="600"/>

* 第五步：将灯条控制线从此位置穿至热床下方后插至灯条，并使用醋酸胶布按图示固定

<img src=img/panda_status/hide_10.jpg width="600"/>

<img src=img/panda_status/hide_7.jpg width="600"/>

* 第六步：按图示将灯条控制线与热床线束使用盒子醋酸胶布固定，并卡入机器此处卡扣

<img src=img/panda_status/hide_18.jpg width="600"/>

<img src=img/panda_status/hide_17.jpg width="600"/>

* 第七步:将灯条控制线插入控制盒

<img src=img/panda_status/hide_2.jpg width="600"/>

* 第八步：拆除该螺丝，即可将机器走线壳打开，如图

<img src=img/panda_status/hide_1.jpg width="600"/>

<img src=img/panda_status/hide_3.jpg width="600"/>

* 第九步：将Type-C供电线按下图传入机器后插至控制器，随后使用醋酸胶布固定，在将线延拆下的走线壳此处卡入后安装回去即可，如图

<img src=img/panda_status/hide_15.jpg width="600"/>

<img src=img/panda_status/hide_16.jpg width="600"/>

<img src=img/panda_status/hide_13.jpg width="600"/>

<img src=img/panda_status/hide_5.jpg width="600"/>

<img src=img/panda_status/hide_6.jpg width="600"/>

<img src=img/panda_status/hide_4.jpg width="600"/>

* 第十步：使用包装盒内硅胶塞替换原厂塞子用来走线，如图

<img src=img/panda_status/hide_9.jpg width="600"/>

* 第十一步：将线从料口穿出后，将背板安装回去

<img src=img/panda_status/hide_12.jpg width="600"/>

### 注意事项

* 配件中有备用双面胶，同时双面堆叠可安装至其它位置

  <img src=img/panda_status/26.jpg width="600"/>

* 产品使用5V供电，可搭配Panda Branch使用或者直接使用USB 5V电源插头

#### Panda Status安装问题说明

* 部分安装为存在间隙或无法贴合问题，原因如下：

1、status需同时适配拓竹A、P、X系列机型，在设计上只能采用较为通用的尺寸

2、由于A1机器热床与PX系列热床竖向角度不同（拔模角度）导致无法严密贴合，同时由于部分PX系列机器热床底部调平旋钮位置存在公差问题导致部分与灯条有干涉

<img src=img/panda_status/solve_1.webp width="600"/>

<img src=img/panda_status/solve_2.webp width="600"/>

3、灯条配备两个角度的贴合方向，一般只需贴一面即可

<img src=img/panda_status/solve_3.webp width="600"/>

* 解决方案

1、只贴合底部方向的双面胶（强度足够，但会导致正面有缝隙）

<img src=img/panda_status/solve_4.webp width="600"/>

<img src=img/panda_status/solve_5.webp width="600"/>
    
2、对外观有要求时，可随盒附赠有备用双面胶（正是为防止此问题发生）双层贴合后贴至热床即可

<img src=img/panda_status/solve_6.webp width="600"/>

## 用户首次连接指南 

<a id="reset_config"></a>

首次连接电源后或执行“恢复出厂设置”命令后，您将看到如下的蓝色跑马灯，代表此时Panda_Status没有绑定打印机。

### WiFi连接指南

<a id="wifi_connect_ap"></a>

* 连接设备WiFi_ap热点

  * 连接上Panda_Status发出来的AP热点：`Panda_Status_XXXXXXXXXX`,AP密码：`987654321`(出厂默认密码)

    找到对应热点，输入密码:

    <img src=img/panda_status/zh/pc_wifi_list.webp width="300"/>

* 访问AP网页

  * 连接上AP后，电脑端可以在浏览器输入默认的ip：`192.168.4.1`;手机端会自动弹出Panda_Status的Web Ui,也可以在浏览器输入ip：`192.168.4.1`来访问网页。(注：此ip为出厂默认ip)

    电脑端：

    <img src=img/panda_status/zh/pc_hello.webp width="800"/>

    手机端：

    <img src=img/panda_status/zh/phone_hello.webp width="300"/>

* 选择语言(默认英文)

  * 选择语言后可点击下一步

    <img src=img/panda_status/zh/languge.webp width="300"/>

<a id="wifi_connect_section"></a>

* WiFi连接界面

  * 扫描WiFi

    首次出厂或恢复出厂设置后，进入此页面会自动扫描周围WiFi

    <img src=img/panda_status/zh/wifi_scanning.webp width="300"/>

    扫描完成后会弹出`扫描完成`弹窗提示

    <img src=img/panda_status/zh/wifi_scanned.webp width="300"/>

    选择想要连接的WiFi

    <img src=img/panda_status/zh/phone_wifi_list.webp width="300"/>

  * 连接WiFi

    输入密码，可点击密码框内右侧的`眼睛`图标来显示输入的密码

    <img src=img/panda_status/zh/wifi_input.webp width="300"/>

    点击连接，界面会自动跳转到操作界面中的`WiFi`界面,并显示WiFi连接中

    <img src=img/panda_status/zh/wifi_connecting.webp width="300"/>

    等待连接一段时间后，会弹出WiFi连接的状态弹窗

    * 连接失败：

      <img src=img/panda_status/zh/wifi_falid.webp width="300"/>

    * 连接成功，可选择[绑定打印机](#printer_bind)跳转到`打印机界面`，也可点击`取消`，继续待在`WiFi界面`

      <img src=img/panda_status/zh/wifi_ok.webp width="300"/>

<a id="printer_bind"></a>

### 绑定打印机

* 元素功能

  <img src=img/panda_status/zh/printer.webp width="300"/>

  * ① : 选择打印机界面，点击后聚焦为红色图标，跳转至打印机界面
  * ② : 扫描周围同一局域网下的打印机
  * ③ : 选择扫描到的打印机
  * ④ : 输入打印机的SN码
  * ⑤ : 输入打印机的访问码
  * ⑥ : 输入打印机的IP
  * ⑦ : 确定绑定此打印机

* 如何绑定打印机？(这里以P1P为例)

  点击扫描一段时间后，会出现`扫描成功`的弹窗

  <img src=img/panda_status/zh/printer_scanned.webp width="300"/>

  选择扫描出的打印机，可以看到选择打印机后，会自动输入打印机的SN码和IP

  <img src=img/panda_status/zh/printer_list.webp width="300"/>

  输入打印机的访问码：找到打印机在设置中的配对码,输入到框内,点击绑定即可绑定成功

  <img src=img/panda_status/zh/p1_1_2_3.webp width="600"/>

  <img src=img/panda_status/zh/p1_4_5.webp width="600"/>

  <img src=img/panda_status/zh/printer_binding.gif width="300"/>

## 用户界面说明

### WiFi界面

* 元素功能

  <img src=img/panda_status/zh/wifi_ip.webp width="300"/>

  * ① : WiFi界面选择，点击后聚焦为红色图标，跳转至WiFi界面
  * ② : 当前WiFi的连接状态
  * ③ : IP地址的相关问题弹窗提示，如果 IP 地址 文本框未显示 IP, 请确保 Panda Status 网络状态显示为 连接成功。如果显示为 未连接, 请配置网络设置。
  * ④ : IP地址显示(在同一局域网下，浏览器输入此IP也可访问Web网页)
  * ⑤ : WiFi网络配置按钮，点击可跳转到[WiFi连接界面](#wifi_connect_section)
  * ⑥ : 主机名显示，您可以使用主机名访问 Web UI。默认主机名为: PandaStatus。如果您不记得 IP 地址，可以在浏览器地址栏中输入主机名加上 .local 访问 Web UI (例如: http://PandaStatus.local)。点击文本框可以编辑主机名, 点击 设置主机名 按钮确认修改
  * ⑦ : 确认修改主机名

### AP界面

* 元素功能

  <img src=img/panda_status/zh/ap.webp width="300"/>

  * ① : AP界面选择，点击后聚焦为红色图标，跳转至WiFi界面
  * ② : AP热点的开关
  * ③ : AP热点名称，默认为`Panda_Status_XXXXXXXXXX`
  * ④ : AP热点密码，默认为`987654321`
  * ⑤ : 热点IP(默认的热点 IP 为: 192.168.4.1, 如果您自己路由器的 IP 号段也为 192.168.4.xxx, Panda Status 与路由器的 IP 号段相同就会产生冲突, 并且导致 Panda Status 无法正常绑定到打印机, 请手动修改 Panda Status 的热点 IP 使其与路由器使用不同的 IP 号段)
  * ⑥ : 点击确认会重启设备，重启完成后可连接ap热点([如何连接ap热点](#wifi_connect_ap))

### 设置界面

* 元素功能

  <img src=img/panda_status/zh/settings.webp width="300"/>

  * ① : 设置界面选择，点击后聚焦为红色图标，跳转至设置界面

  * ② : 选择网页中英文(默认英文)

  * ③ : 显示当前的固件版本

  * ④ : 固件OTA更新选择`.bin`文件

    * 点击`选择.bin文件`按钮，选择需要ota的bin文件

      <img src=img/panda_status/zh/fw_upload.webp width="300"/>

    * 等待ota进度，完成后弹窗自动重启

      <img src=img/panda_status/zh/fw_uploading.webp width="300"/>
      <img src=img/panda_status/zh/fw_uploaded.webp width="300"/>

  * ⑤ : 点击后，按下确定([恢复出厂设置](#reset_config))

### 控制面板界面

* 元素功能

  <img src=img/panda_status/zh/rgb.webp width="300"/>

  * ① : 控制面板界面选择，点击后聚焦为红色图标，跳转至控制面板界面
  * ② : 当前设备名称
  * ③ : 当前设备的模式
  * ④ : 当前模式下的灯效
  * ⑤ : 当前模式下的背景亮度
  * ⑥ : 当前模式下的速度
  * ⑦ : `重置设置`: 点击后重置音频律动和H2D模式下的亮度为出厂默认亮度(50%)，并且三种打印状态的颜色也会被重置。

* 设备模式 

  * 模式一：音频律动（出厂默认模式）

    <img src=img/panda_status/zh/rgb_music.webp width="300"/>

    出厂默认亮度为50%，可随意调节(0-100%)

    当前模式下，RGB灯会随着音调的大小来进行音频律动并且变色(蓝->绿->黄->橙->红)，具体灯效如下：

    | -------- 音频：低 ----------- | -------- 音频：中 --------- | ----------音频：高 ----------- |
    | ----------------------------- | --------------------------- | ------------------------------ |

    <img src=img/panda_status/music.gif width="600"/>

  * 模式二：H2D灯条模式

    <img src=img/panda_status/zh/rgb_h2d.webp width="300"/>

    出厂默认亮度为50%，可随意调节(0-100%)

    在当前模式下，RGB灯会根据打印机的状态来亮起不同的灯效，分别为：

    空闲状态，白色呼吸灯(可自定义当前状态颜色[如何设置颜色](#rgb_set_color))：

    <img src=img/panda_status/printer_idle.gif width="600"/>

    下载文件状态，黄色极光：

    <img src=img/panda_status/printer_loading.gif width="600"/>

    打印前准备，黄橙流光：

    <img src=img/panda_status/printer_wave.gif width="600"/>

    打印中：白色百分比常亮(可自定义当前状态颜色[如何设置颜色](#rgb_set_color))：

    <img src=img/panda_status/printer_printing.gif width="600"/>

    打印完成：绿灯常亮30S后切换为空闲状态的灯效(默认为白色呼吸灯)

    <img src=img/panda_status/printer_complete.gif width="600"/>

    打印暂停：白色百分比呼吸灯：

    <img src=img/panda_status/printer_pause.gif width="600"/>

    打印报错：红灯闪烁(可自定义当前状态颜色[如何设置颜色](#rgb_set_color))：

    <img src=img/panda_status/printer_error.gif width="600"/>


<a id="rgb_set_color"></a>

#### 自定义灯效颜色

* 设置颜色(以空闲状态为例)

  * 在控制界面下选择H2D模式，可以看到Color选项下的三个框，分别为空闲白色呼吸灯、打印中白色百分比常亮以及报错红色闪烁灯。

    <img src=img/panda_status/zh/rgb_h2d.webp width="300"/>

  * 选择空闲状态并点击确认

    <img src=img/panda_status/zh/rgb_h2d_idle.webp width="300"/>

  * 进入颜色选择界面

    <img src=img/panda_status/zh/rgb_color_block.webp width="300"/>

    * ① : 出厂默认预设的色块
    * ② : 自定义色块

  * 选择完色块后点击确定

    <img src=img/panda_status/zh/rgb_set_block.webp width="300"/>

  * 可以看到，空闲状态的颜色由之前的白色变成我们设置的天蓝色

    <img src=img/panda_status/zh/rgb_idle_ok.webp width="300"/>


## 固件历史记录

### [V1.0.0](https://github.com/bigtreetech/Panda_Status/tree/master/Firmware/v1.0.0)

* 首次发布的出厂固件。

### [V1.0.1](https://github.com/bigtreetech/Panda_Status/tree/master/Firmware/v1.0.1)

* 更改AP网页访问地址从出厂固件的“192.168.4.1”修改为“192.168.254.1”，避免用户IP冲突（用户需要恢复出厂设置才能让改条件生效） 

* 修改固件版本从"V1.0.0"修改为“V1.0.1” 

* 打印完成后绿色常亮15m分钟后转变为空闲模式灯效 

* 在非MUSIC模式下，空闲状态下超过120分钟未打印则自动切换为待机状态，等待下次发起打印时亮起。在用户访问/操作Web UI或者用户打印的时候，将灯条进行唤醒（灯条亮起）

## 功能请求

如果您希望在即将发布的固件中看到一些内容，请在官方 github repo上记录功能请求，让我们知道。
[请求功能](https://github.com/bigtreetech/Panda_Status/issues)
