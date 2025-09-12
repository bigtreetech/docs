# **Panda Branch Plus**

<img src=img/PandaBranchPlus/zhuban.png width="800"/>

## **Revision Log**

| Version | Date         | Update Notes    |
| :------ | :----------- | :-------------- |
| v1.00   | Sept 10, 2025 | Initial Release |

## **Product Overview**

Panda Branch Plus delivers advanced modular power management for your 3D printing ecosystem. This all-in-one system includes a powerful 24V / 2.8A adapter and features 10 independent power channels (5 × MX3.0 ports and 5 × Type-C ports) for flexible device connections—each individually switchable via the WebUI. Powered by a built-in ESP32 processor and enhanced MQTT gateway technology, it overcomes traditional connectivity limitations.

A dedicated 5V / 5A Type-C output provides direct power for Panda Hub Plus, while the detachable housing design ensures quick and easy installation—simply snap the housing into place for a ready-to-use power solution. With integrated intelligent power distribution and network reliability, Panda Branch Plus guarantees stable, worry-free performance across all connected devices.

## **Product Features**

1. Centralized power management hub with up to **10 independently controlled outputs**
2. Built-in **MQTT gateway** supporting multiple sub-devices for reliable networking
3. High-power adapter included: **24V / 2.8A** for stable and consistent output
4. **5 × Type-C outputs** and **5 × MX3.0 outputs** for versatile connections
5. Integrated **ESP32-S3 module** for smart Wi-Fi control
6. Built-in **safety protection circuits**, including ESD protection, over-current protection, and short-circuit protection

## **Specifications**
- **Product Name**: BIQU Panda Branch Plus  
- **Compatibility**: P1P / P1S / X1C / X1E / A1 / A1 mini  
- **Power Input**: DC 5.5×2.1 (included adapter: 24V / 2.8A)  
- **Built-in Gateway**: Integrated MQTT gateway, supports up to 20 sub-devices.  
- **Output Ports**:  
    - 1 × Type-C (5A)  
    - 4 × Type-C (1.5A)  
    - 5 × MX3.0 2-pin (2A)  
    - **Total**: 10 independently switchable outputs  
- **Web UI + BIQU APP Control**: ✔  
- **Protection Features**: ESD Protection, Over-Current Protection, Short-Circuit Protection  
- **Important Notes**: Uses included 24V / 2.8A adapter.  

## **Interface**

<img src=img/PandaBranchPlus/jiekou.jpg width="1600"/>

## **Installation Instructions**

Download the required case files for your printer model from the GitHub repository, then print the case.

### Installation Steps

#### For A1 mini Printer

* Place the Panda Branch Plus into the printed upper and lower shells and secure it with **KM3×14 self-tapping screws**.<br>
    <img src=img/PandaBranchPlus/a1mini1_en.png width="800"/>

* Insert the printed bracket into the position shown and secure it with **KM3×15 machine screws**. Place the assembled case from Step 1 into the slot at the top of the printed bracket, then fasten it with the printed thumb screw.<br>
    <img src=img/PandaBranchPlus/a1mini2_en.jpg width="800"/>


#### For A1 Printer

* Place the Panda Branch Plus into the printed upper and lower shells and secure it with **KM3×14 self-tapping screws**.<br>
    <img src=img/PandaBranchPlus/a11_en.jpg width="800"/>

* Insert the printed bracket into the position shown and secure it either with the printed thumb screw or with **M3×15 machine screws**.
   
    * **Option 1:** Attach directly to the A1 Z-axis using the printed thumb screw. <br>
   Place the assembled case from Step 1 into the slot and secure it with the printed thumb screw.<br>
    <img src=img/PandaBranchPlus/a12_en.jpg width="800"/>
   
    * **Option 2:** Use **two M3×15 machine screws** to secure it to the A1 Z-axis<br>
    <img src=img/PandaBranchPlus/a13_en.jpg width="800"/>


#### For P1 / X1 Series Printers

* Place the Panda Branch Plus into the printed upper and lower shells and secure it with **KM3×14 self-tapping screws**.<br>
    <img src=img/PandaBranchPlus/p11_en.jpg width="800"/>

* Insert the printed bracket into the position shown and secure it with **M3×15 machine screws**.<br>
   <img src=img/PandaBranchPlus/p12_en.jpg width="800"/>
   
   <img src=img/PandaBranchPlus/p13_en.png width="800"/>

    * **Note:** This method requires **two M3×15 machine screws** to secure the bracket to either the rear-right side or the upper-rear side of the printer.

## **First-Time Setup**

### Network Configuration

* The device will create a hotspot named **"Panda\_Branch\_Plus\_XXXXXXXXXXXX"**, with the default password **"987654321"**.
* Connect to this hotspot using your mobile phone or computer. <br>
    <img src=img/PandaBranchPlus/ap_select.png width="300"/>

* Open a browser and enter: **[http://192.168.254.1/](http://192.168.254.1/)**
* Select your preferred language. <br>
    <img src=img/PandaBranchPlus/language.png width="300"/><br>

* After scanning for Wi-Fi, choose the target network, enter its password, and click **Connect**. <br>
    <img src=img/PandaBranchPlus/ap_connect_en.png width="300"/>

### Binding the Printer

* Click **Scan Printer**.
* Enter the access code, then click **Connect**. <br>
    <img src=img/PandaBranchPlus/bind_printer_en.png width="300"/>

## Power Control

The USB port and 24V port can be switched on or off through the Web UI. <br>
    <img src=img/PandaBranchPlus/port_control_en.png width="300">

## Binding Other Panda Devices

### Step 1: Bind a Printer to This Device

Once a printer is bound, the device will broadcast its information over the local network, simulating a printer named **"PandaBranchPlus"**.

```
Location: xxx.xxx.xxx.xxx
USN: B1098A316C65xxx
DevConnect.bambu.com: lan
DevModel.bambu.com: C12
DevName.bambu.com: PandaBranchPlus
DevVersion.bambu.com: 01.00.00.00
```

### Step 2: On Another Panda Device

* Open the Web UI, click **Scan Printer**, and select **"PandaBranchPlus"**.
* Enter the access code shown on the printer, The access code is same as the one on the printer.
* Click **Bind**. <br>
  <img src=img/PandaBranchPlus/as_printer.png width="500">

## Usage Limitations

### When Connecting with PandaTouch

* Cloud mode is not supported.
* Viewing SD card files from the printer is not supported.
* Starting print tasks from a USB drive is not supported.

### Maximum Number of Clients

* Supports up to **20 devices**.

## Firmware

### Firmware History
#### [01.00.00.00](https://github.com/bigtreetech/PandaBranchPlus/blob/master/Firmware/01.00.00.00/panda_branch_plus_01.00.00.00.bin) 

* Initial release.

### Feature Requests

We welcome your suggestions for future firmware enhancements. Please submit your feature requests on the official Panda Branch Plus GitHub repository.

[Request Features](https://github.com/bigtreetech/PandaBranchPlus/issues)

## Technical Support
Was this page helpful? If you have any questions about product usage or encounter issues, please contact our after-sales team at service001@biqu3d.com.