# Rodent

<img src=img/rodent/rodent_title.png width="600"/>

## **产品简介**

BIGTREETECH Rodent V1.0 是深圳市必趣创新科技有限公司 3D 打印团队针对 CNC 雕刻机制作的控制板，可以通过 USB、485 通讯，大大简化接线

## **产品特点**

- 主控芯片 ESP32-D0WD-V3 。
- 支持 WIFI 802.11 b/g/n、802.11 n (2.4 GHz) 速度高达 150 Mbps 。
- 板载 4 路 TMC2160 驱动，支持高压大电流，兼容更大的电机。
- 电源输入支持 DC24V-DC56V 10A。
- V-MOS 电源输入支持 DC12V-DC36V；三个外接可控电压输出端口，最大 5A；输出电压由 V-MOS 端口输入电压为准。
- 5 路限位接口,支持电压选择:5V、12V、VIN，采用光耦进行隔离，大大增强主板抗干扰能力，增强稳定性。
- VProbe 控制开关接口,支持电压选择:5V、12V、VIN，采用光耦进行隔离，大大增强主板抗干扰能力，增强稳定性。
- Spindle 控制接口。
- 一路 PWM 输出接口（3-10V)。
- 一路 TF 卡接口。
- 支持 TYPE-C 自动烧录功能，板载 CH340 无需外接串口工具。
- 主板预留 BOOT 和 RESET 按键，用户可以通过 USB 进入 DFU 模式更新固件。
- 支持 RS485 RS485 板载 130R 终端电阻。
- 预留 OLED 显示屏接口（I2C），方便客户 DIY 操作。
- WIFI 天线接口。
- 支持 3 路 RGB 指示灯

## **产品尺寸**

<img src=img/rodent/rodent_dimensions.png width="600"/>

## **外设接口**

### Pin 脚说明/接口说明

<img src=img/rodent/rodent_pins.png width="600"/>

## **接口介绍**

### 限位开关接口

<img src=img/rodent/rodent_endstop.png width="600"/>

### VProbe 开关接口

<img src=img/rodent/rodent_switch.png width="600"/>

### **Spindle** 接口

<img src=img/rodent/rodent_spindle.png width="600"/>

### V-MOS 输出端口

<img src=img/rodent/rodent_v_mos.png width="600"/>

### OLED 显示屏接口

<img src=img/rodent/rodent_v_mos.png width="600"/>

### WIFI 天线接口

<img src=img/rodent/rodent_wifi.png width="600"/>

### 三路 LED 指示灯

<img src=img/rodent/rodent_led.png width="600"/>

## 软件配置

### 固件更新

Firmware available at: https://github.com/bdring/FluidNC

### WIFI 配置

1、点击进入 FluidNC 热点进入配置面板

<img src=img/rodent/rodent_software1.png width="600"/>

2、点击 FluidNC 进入配置界面

<img src=img/rodent/rodent_software2.png width="600"/>

3、修改 Sta/SSID(WiFi 名称)和 Sta/Password（WiFi 密码），点击 Set 确认。

<img src=img/rodent/rodent_software3.png width="600"/>

4、点击重启 FluidNC。

<img src=img/rodent/rodent_software4.png width="600"/>

### 机器配置

1、点击文件系统，下载 rodent.yaml

<img src=img/rodent/rodent_software5.png width="600"/>

2、可参考 http://wiki.fluidnc.com/ 修改相对应的配置。

3、点击删除

<img src=img/rodent/rodent_software6.png width="600"/>

4、点击 Upload files 上传 rodent.yaml

<img src=img/rodent/rodent_software7.png width="600"/>

5、点击 Restart 重启 rodent。
