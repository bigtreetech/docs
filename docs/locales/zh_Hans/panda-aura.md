# Panda Aura A1&A1mini&A1 Plus&A1 RGBW

## 重要提示

* 该说明书包含Panda Aura A1，Panda Aura A1 Plus，Panda Aura A1 RGBW，Panda Aura A1mini共四个型号的产品：Panda Aura A1（适用于A1打印机，包含灯板和控制器），Panda Aura A1 Plus（适用于A1打印机，包含灯板，RGBW灯带和控制器，灯板和灯带的灯效可以通过WebUI独立控制），Panda Aura A1 RGBW（适用于A1打印机，包含灯带和控制器），Panda Aura A1mini（适用于A1 mini打印机，包含灯板和控制器），由于这4个型号的控制盒都是同一个，该说明书后续涉及软件操作和相同功能的部分地方也简称为Panda Aura A1，不区分具体型号，请注意。
* Panda Aura A1只监听打印机的状态，不控制打印机，所以 Panda Aura A1 的功能不会受拓竹固件更新的影响。有关受影响和不受影响的更多信息，请参阅[Bambu Lab 官方公告](https://blog.bambulab.com/firmware-update-introducing-new-authorization-control-system-2/)。
* Panda Aura A1仅支持连接到2.4G Wi-Fi。
* 在设置界面连接 Panda Aura A1的AP热点后，直接跳转到的Web UI界面，部分手机由于权限的问题可能无法在此界面上传更新固件，请到浏览器中访问Web UI再进行此类上传文件的操作。
* 如果您有任何此wiki无法解决的问题，请通过以下方式联系客户支持：`support01@bigtree-tech.com`.

## 产品简介

Panda Aura A1系列 — 智能声光氛围系统：
为3D打印注入光影灵魂。Panda Aura A1系列产品集 RGB幻彩灯效、照明与智能声光报警于一体，支持RGB全色域自定义与音效配置。通过 Web UI 或手机 APP（即将上线）即可实现远程操控；同时原生支持 Home Assistant 接入，轻松融入您的智能家居场景。
打印完成、报错或异常时，灯板自动同步打印机状态，以直观的灯光语言实时反馈打印机运行情况。远程可控，状态可视，氛围随心定义——让技术之美，点亮每一次创作。


## 产品特点

- 产品定位：A1/A1 mini打印机装饰灯板，照明灯带和声光报警器

- 自定义RGB灯效和音效（通过Web UI和APP）

- 可通过Home Assistant和APP（即将上线）控制灯效，并可设置场景联动

- 显示打印状态（H2D打印机状态灯同款显示逻辑）

- 打印完成和打印错误声光报警

## 产品型号对比

<img src=img/panda-aura/case/duibi.webp width="85%"/>

## 基本参数

| 微处理器   | 内置 ESP32-C3FH4 芯片，RISC-V 32 位单核微处理器，主频最高 160 MHz |
| :--------- | :----------------------------------------------------------: |
| 存储器     |           384 KB ROM，400 KB SRAM，4 MB 合封 flash           |
| 逻辑电压   |                             3.3V                             |
| 输入电压   |                             24V                              |
| 电流       | Panda Aura A1：0.53A；A1 Plus：0.69A；A1 RGBW：0.13A；A1mini：0.46A |
| 电源接口   |                 支持MX3.0 4-pin & MX3.0 2-pin                  |
| 灯板材质   |                            亚克力                            |
| 灯珠数量   | Panda Aura A1 & A1 Plus灯板：60颗；A1mini灯板：42颗：A1 RGBW & A1 Plus灯带：20颗 |
| 外包装尺寸 | Panda Aura A1 & A1 Plus：427x 406 x 37mm； A1mini：416x 230 x 37mm：A1 RGBW：190x 78 x 50mm |
| 灯板尺寸   | Panda Aura A1：384x 380x 8mm；Panda Aura A1mini：314x 199 x 8mm |
| 喇叭功率   |                              3W                              |
| 音频格式   |                         支持MP3格式                          |
| 通信方式   |                2.4G Wi-Fi (IEEE 802.11 b/g/n)                |
| 工作温度   |                          0℃ 至 +50℃                          |
| 储存温度   |                         -20℃ 至 +70℃                         |

## 产品外观尺寸

<img src=img/panda-aura/case/chicun1.webp width="80%"/>

<img src=img/panda-aura/case/chicun2.webp width="80%"/>

## 安装指南

### 安装灯板到A1打印机

Panda Aura A1和Panda Aura A1 Plus带有灯板

Panda Aura A1配件清单

<img src=img/panda-aura/case/bza1.webp width="80%"/>

Panda Aura A1 Plus配件清单

<img src=img/panda-aura/case/bza1plus.webp width="80%"/>

#### 安装步骤

1. 将A1打印机下方三颗螺丝拆卸下来，如下图所示。

<img src=img/panda-aura/case/1.webp width="80%"/>

2. 将A1打印机放置在Panda Aura A1亚克力底座上。

<img src=img/panda-aura/case/2.webp width="80%"/>

3. 调整A1打印机，使其左右居中，并且使左右两端的立柱向后顶住限位块。

<img src=img/panda-aura/case/3.webp width="80%"/>

4. 从底部安装附带的3颗自攻螺丝（无需翻转设备，将设备移至桌边从下向上安装更方便）

<img src=img/panda-aura/case/4.webp width="80%"/>

5. 将亚克力灯板的连接线插入控制盒底部的接口，如下图所示。

<img src=img/panda-aura/case/5.webp width="80%"/>

6. 将接好线的控制盒比对好合适的磁吸位置，并粘贴磁吸片，将控制盒吸附固定。

<img src=img/panda-aura/case/6.webp width="80%"/>

7. 将电源线和转接线连接起来，注意卡扣要对准。

<img src=img/panda-aura/case/7-2.webp width="50%"/>

<img src=img/panda-aura/case/71.webp width="80%"/>

8. 将2pin插头接入背面的插口中。（需要拔出时请从端子处施力，请勿直接扯线材拔出）

<img src=img/panda-aura/case/8.webp width="50%"/>

9. 在A1打印机后部找到一个未使用的 4pin 电源端口。再把转接线另一头的MX3.0 4pin接口插入到打印机的MX3.0 4pin接口。

<img src=img/panda-aura/case/9.webp width="80%"/>

#### 通过Panda Branch Plus供电

如果不想通过打印机接电，或者打印机的MX3.0接口已被占用，则可以选择购买Panda Branch Plus（单独出售），直接把Panda Aura A1的MX3.0 2pin接口插入Panda Branch Plus的MX3.0接口，也可以实现供电。

<img src=img/panda-aura/case/branchplus.webp width="80%"/>

### 安装A1mini灯板到A1mini打印机

Panda Aura A1mini配件清单

<img src=img/panda-aura/case/baozhuang2.webp width="80%"/>

#### 安装步骤

1. 将A1mini打印机下方四颗螺丝拆卸下来，如下图所示。

<img src=img/panda-aura/case/11.webp width="80%"/>

2. 将A1mini打印机放置在亚克力灯板上，使亚克力灯板四周边缘对齐打印机机身。

<img src=img/panda-aura/case/12.webp width="80%"/>

3. 从底部安装附带的4颗M3*18自攻螺丝（无需翻转设备，将打印机移至桌边从下向上安装更方便）

<img src=img/panda-aura/case/13.webp width="80%"/>

4. 将亚克力灯板的连接线插入控制盒底部的接口，如下图所示。

<img src=img/panda-aura/case/14.webp width="80%"/>

5. 将接好线的控制盒比对好合适的磁吸位置，并粘贴磁吸片，将控制盒吸附固定。

<img src=img/panda-aura/case/15.webp width="80%"/>

6. 将电源线和转接线连接起来，注意卡扣要对准。

<img src=img/panda-aura/case/7-2.webp width="50%"/>

<img src=img/panda-aura/case/71.webp width="80%"/>

7. 将2pin插头接入背面的插口中。（需要拔出时请从端子处施力，请勿直接扯线材拔出）

<img src=img/panda-aura/case/8.webp width="50%"/>

8. 在A1mini打印机侧面找到一个未使用的 4pin 电源端口。再把转接线另一头的MX3.0 4pin接口插入到打印机的MX3.0 4pin接口，如下图所示。

<img src=img/panda-aura/case/18.webp width="80%"/>

#### 通过Panda Branch Plus供电

如果不想通过打印机接电，或者打印机的MX3.0接口已被占用，则可以选择购买Panda Branch Plus（单独出售），直接把Panda Aura A1mini的MX3.0 2pin接口插入Panda Branch Plus的MX3.0接口，也可以实现供电。

<img src=img/panda-aura/case/branchplus.webp width="80%"/>

### 安装灯带到A1打印机

Panda Aura A1 RGBW和Panda Aura A1 Plus带有灯带

Panda Aura A1 RGBW配件清单

<img src=img/panda-aura/case/bza1rgbw.webp width="80%"/>

Panda Aura A1 Plus配件清单

<img src=img/panda-aura/case/bza1plus.webp width="80%"/>

#### 安装步骤

1. 将灯带去除背胶，粘贴至A1设备X轴下贴紧。出线方向向右。

<img src=img/panda-aura/case/ddaz11.webp width="80%"/>

2. 将线扣粘贴至灯带尾端，固定线材。

<img src=img/panda-aura/case/ddaz22.webp width="80%"/>

3. 将另一个线扣粘贴于X框架后方。

<img src=img/panda-aura/case/ddaz33.webp width="80%"/>

4. 将灯带插头插入控制盒后方接口中

<img src=img/panda-aura/case/ddaz44.webp width="80%"/>

## 用户首次连接指南 {#first-connection}

注意：Panda Aura A1，Panda Aura A1mini，Panda Aura A1 Plus和Panda Aura A1 RGBW所用控制盒软件功能操作步骤一样，以下统称为Panda_Aura_A1，不再区分具体型号。
首次连接电源后或执行"恢复出厂设置"命令后，您将看到蓝色跑马灯，代表此时Panda_Aura_A1没有绑定打印机。

### WiFi连接指南 {#wifi-connect}

- 连接设备WiFi_AP热点
  
  - 连接上Panda_Aura_A1发出来的AP热点: `Panda_Aura_A1_XXXXXXXXXX`. 默认密码是 `987654321`.

    <img src=img/panda-aura/zh/panda_aura_a1_step0.webp width="60%"/>

- 访问AP网页

    - 连接上AP后，电脑端可以在浏览器输入默认的ip：`192.168.254.1`;手机端会自动弹出Panda_Aura_A1的Web Ui,也可以在浏览器输入ip：`192.168.254.1`来访问网页。(注：此ip为出厂默认ip)

- 选择语言(默认英文)

    - 选择语言后可点击下一步

        <img src=img/panda-aura/zh/panda_aura_a1_step1.webp width="60%"/>

- WiFi连接界面

    - 首次出厂或恢复出厂设置后，进入此页面会自动扫描周围WiFi，或者手动点击扫描。

        <img src=img/panda-aura/zh/panda_aura_a1_step2.webp width="60%"/>

    - 扫描完成后会弹出`扫描完成`弹窗提示，点击OK关闭提示。

        <img src=img/panda-aura/zh/panda_aura_a1_step3.webp width="60%"/>

    - 点击Wi-Fi下方的选项，选择想要连接的WiFi

        <img src=img/panda-aura/zh/panda_aura_a1_step4.webp width="60%"/>

    - 输入密码，可点击密码框内右侧的`眼睛`图标来显示输入的密码

        <img src=img/panda-aura/zh/panda_aura_a1_step5.webp width="60%"/>

    - 点击连接，界面会自动跳转到操作界面中的`WiFi`界面,并显示WiFi连接中

        <img src=img/panda-aura/zh/panda_aura_a1_step6.webp width="60%"/>

    - 等待连接一段时间后，会弹出WiFi连接的状态弹窗

        - 连接失败:

            <img src=img/panda-aura/zh/panda_aura_a1_step7.webp width="60%"/>

            

        - 连接成功，可选择点击[绑定打印机](#printer-bind)跳转到`打印机界面`，也可点击`取消`，继续待在`WiFi界面`
        
            <img src=img/panda-aura/zh/panda_aura_a1_step8.webp width="60%"/>

### 绑定打印机 {#printer-bind}

- 功能介绍

    <img src=img/panda-aura/zh/panda_aura_a1_step9.webp width="60%"/>

    - 1.选择打印机界面，点击后聚焦为红色图标，跳转至打印机界面

    - 2.扫描周围同一局域网下的打印机

    - 3.选择扫描到的打印机

    - 4.输入打印机的SN码

    - 5.输入打印机的访问码

    - 6.输入打印机的IP

    - 7.确定绑定此打印机

- 如何绑定打印机

    - 点击扫描一段时间后，会出现`扫描成功`的弹窗

        <img src=img/panda-aura/zh/panda_aura_a1_step10.webp width="60%"/>

    - 选择扫描出的打印机，可以看到选择打印机后，会自动输入打印机的SN码和IP

        <img src=img/panda-aura/zh/panda_aura_a1_step11.webp width="60%"/>

        输入打印机的`访问码`

        * 在打印机上找到`访问码` (这里以 A1 系列打印机为例)

            <img src=img/panda-aura/zh/panda_aura_a1_step12.webp width="60%"/>

            <img src=img/panda-aura/zh/panda_aura_a1_step13.webp width="60%"/>

            <img src=img/panda-aura/zh/panda_aura_a1_step14.webp width="60%"/>

        * 将 `访问码` 输入到 `访问码` 框内,点击绑定即可开始绑定打印机。

            <img src=img/panda-aura/zh/panda_aura_a1_step15.webp width="60%"/>

            <img src=img/panda-aura/zh/panda_aura_a1_step16.webp width="60%"/>
    


## 用户界面说明

### WiFi界面

<img src=img/panda-aura/zh/panda_aura_a1_step17.webp width="60%"/>

- 1.WiFi界面选择，点击后聚焦为红色图标，跳转至WiFi界面。

- 2.当前WiFi的连接状态。

- 3.IP地址的相关问题弹窗提示，如果 IP 地址 文本框未显示 IP, 请确保Panda_Aura_A1网络状态显示为 连接成功。如果显示为 未连接, 请配置网络设置。

- 4.IP地址显示(在同一局域网下，浏览器输入此IP也可访问Web网页)。

- 5.WiFi网络配置按钮，点击可跳转到 [WiFi连接界面](#wifi-connect)

- 6.主机名显示，您可以使用主机名访问 Web UI。默认主机名为: Panda_Aura_A1_xxx。如果您不记得 IP 地址，可以在浏览器地址栏中输入主机名加上 .local 访问 Web UI (例如: http://PandaAuraA1.local)。点击文本框可以编辑主机名, 点击 设置主机名 按钮确认修改

- 7.确认修改主机名

### AP界面

<img src=img/panda-aura/zh/panda_aura_a1_step18.webp width="60%"/>

- 1.AP界面选择，点击后聚焦为红色图标，跳转至WiFi界面

- 2.AP热点的开关

- 3.AP热点名称，默认为 `Panda_Aura_A1_XXXXXXXXXX`

- 4.AP热点密码，默认为 `987654321`

- 5.热点IP(默认的热点 IP 为: 192.168.254.1, 如果您自己路由器的 IP 号段也为 192.168.254.xxx, Panda_Aura_A1 与路由器的 IP 号段相同就会产生冲突, 并且导致 Panda_Aura_A1 无法正常绑定到打印机, 请手动修改 Panda_Aura_A1 的热点 IP 使其与路由器使用不同的 IP 号段)

- 6.点击确认会重启设备，重启完成后可连接ap热点。([如何连接ap热点](#wifi-connect))

### 设置界面

<img src=img/panda-aura/zh/panda_aura_a1_step19.webp width="60%"/>

- 1.设置界面选择，点击后聚焦为红色图标，跳转至设置界面。

- 2.选择网页中英文(默认英文)。

- 3.显示当前的音效固件版本。

- 4.固件OTA更新选择`.img`文件。

- 5.显示当前的固件版本。

- 6.固件OTA更新选择`.bin`文件。

- 7.恢复出厂设置。

    - 点击`选择.bin文件`按钮，选择需要ota的bin文件。

        <img src=img/panda-aura/zh/panda_aura_a1_step20.webp width="60%"/>

    - 等待ota进度，完成后弹窗自动重启。

        <img src=img/panda-aura/zh/panda_aura_a1_step21.webp width="60%"/>

        <img src=img/panda-aura/zh/panda_aura_a1_step22.webp width="60%"/>

- 8.点击后，按下确定 [恢复出厂设置](#first-connection)

### 控制面板界面

- 功能介绍

    <img src=img/panda-aura/zh/panda_aura_a1_step23.webp width="60%"/>

    - 1.控制面板界面选择，点击后聚焦为红色图标，跳转至控制面板界面

    - 2.当前设备名称

    - 3.单击"切换"以打开和关闭RGB灯光效果

    - 4.打印机库存灯亮起后，自动打开和关闭RGB效果

    - 5.当打印机处于错误状态时，单击开关以覆盖红色闪烁警告灯

    - 7.选择照明效果和当前效果

    - 7.灯光颜色设置

    - 8.亮度

    - 9.速度

- 设备灯效模式

    <img src=img/panda-aura/zh/panda_aura_a1_step24.webp width="60%"/>

    

    - 1-6. 选择后，相应的灯光效果将直接显示。

    - 7.光线的颜色可以根据打印机的温度进行调整。您可以在"安全效果"和"危险效果"下选择两种照明效果，静态或闪光。

        <img src=img/panda-aura/zh/panda_aura_a1_step25.webp width="60%"/>

    - 8.选择后，可以根据打印机调整灯光的颜色。

        <img src=img/panda-aura/zh/panda_aura_a1_step26.webp width="60%"/>

- 自定义灯光颜色（以静态模式为例）

    - 点击颜色设置选项，您将被引导到颜色选择页面。

        <img src=img/panda-aura/zh/panda_aura_a1_step27.webp width="60%"/>

    - 选择想要的颜色。

        <img src=img/panda-aura/zh/panda_aura_a1_step28.webp width="60%"/>

        

        - 1.出厂默认预设颜色。

        - 2.自定义颜色。点击后会出现一个取色盘，可以设置此自定义颜色的颜色值

            <img src=img/panda-aura/zh/panda_aura_a1_step29.webp width="60%"/>

    - 选择一个`预置`或`颜色定义`(自定义)色块后。单击`确认`，则可以将RGB灯设置为您的所选颜色。

        <img src=img/panda-aura/zh/panda_aura_a1_step30.webp width="60%"/>
    
        <img src=img/panda-aura/zh/panda_aura_a1_step31.webp width="60%"/>
    
- 设备音效

    <img src=img/panda-aura/zh/panda_aura_a1_step32.webp width="60%"/>

    - 1.单击"切换"以打开和关闭设备音效。

    - 2."预览模式"：用于预览设备的"音效"。当此模式打开并选择"模拟状态"时，设备将根据所选结果显示相应的"音效"。

    - 3.选择不同的音效。

        <img src=img/panda-aura/zh/panda_aura_a1_step33.webp width="60%"/>

    - 4.音量大小。

### 设备差异

<img src=img/panda-aura/zh/panda_aura_a1_step34.webp width="60%"/>

Panda Aura A1 RGBW 和 Panda Aura A1 Plus 相对于 Panda Aura A1 和 Panda Aura A1mini 多了此功能选项。通过此选项可以配置灯板和灯条的模式以及颜色等。


## 固件历史记录

注意：Panda Aura A1 RGBW 和 Panda Aura A1 Plus 共用 panda_aura_a1_plus.bin 固件进行OTA

### [V1.0.0](https://github.com/bigtreetech/PandaAura/tree/master/Firmware/v1.0.0)

- 首次发布的出厂固件。

## 功能请求

如果您希望在即将发布的固件中看到一些内容，请在官方 github repo上记录功能请求，让我们知道。[请求功能](https://github.com/bigtreetech/PandaAura/issues)