# Creator PWR
<img src=img/Creator_PWR/product.png width="600"/>

Product Link: [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-panda-pwr-intelligent-power-management-module?_pos=1&_sid=99912d4b2&_ss=r)

## Important Usage Information 
* Store the product in a **dry** environment. Do not use it in humid conditions.
* When connecting a **220 VAC input**, **always connect the input wires to the PWR module first**, then plug the cable into the wall outlet.
* The **TYPE-C port** is for **input only**.
* The **USB-A port** is for **output only**.

### FCC Warning
This device complies with Part 15 of the FCC Rules. Operation is subject to the following two conditions: 
(1) This device may not cause harmful interference; and
(2) This device must accept any interference received, including interference that may cause undesired operation. 
Changes or modifications not expressly approved by the party responsible for compliance could void the user's authority to operate the equipment. 

**Note:** This equipment has been tested and found to comply with the limits for a **Class B digital device** pursuant to part 15 of the FCC Rules. These limits are designed to provide reasonable protection against harmful interference in a residential installation. This equipment generates, uses and can radiate radio frequency energy and, if not installed and used in accordance with the instructions, may cause harmful interference to radio communications. However, there is no guarantee that interference will not occur in a particular installation. If this equipment does cause harmful interference to radio or television reception, try to correct the interference by one or more of the following measures:

* Reorient or relocate the receiving antenna.
* Increase the separation between the equipment and receiver.
* Connect the equipment into an outlet on a circuit different from that to which the receiver is connected.
* Consult the dealer or an experienced radio/TV technician for help.

To comply with FCC RF exposure requirements, maintain a minimum distance of **20 cm (8 inches)** between the transmitter and your body during installation and operation.
Use only the antenna supplied with the device.
 
## Technical Specifications

| Wi-Fi Module | ESP8684-MINI-1-H4|
| :-----| :----: |
| Memory |  RAM - 272KB, Flash - 4MB |   
| Connectivity | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| Operating Temperature |  −10 °C ~ 60 °C |      

## Package Contents
<img src=img/Creator_PWR/packaging_en.jpg width="400"/>

 
## Operating Instructions
 
### Interface Overview

<img src=img/Creator_PWR/interface_en.jpg width="600"/>

#### USB Ports
* USB1<br>5 V controllable output; suitable for devices requiring power control (e.g., USB light strips).<br>

* USB2<br>5 V fixed output (always on).<br>

* TYPE-C<br>For firmware updates and factory reset. 

#### Bind Button Functions

<img src=img/Creator_PWR/key.png width="600"/>

* Countdown Function：<br>Press and hold for 1 second to enable or disable countdown mode.<br>

* Toggle 220 V Output：<br>Double-click the Bind button.<br>

* Restore Factory Settings：<br>Press and hold for approximately 8 seconds until the indicator flashes red.<br>

#### Indicator Light Description
* Green (steady): Power on
* Blue (breathing): Countdown active  
* Red (breathing): Factory reset in progress

### Initial Connection
#### WiFi Connection Guide
1. Connect to Creator PWR's hotspot using your mobile phone or computer. <br/>
Default credentials：<br/>
    SSID: `Creator_PWR_xxxxxxxxxxxx`<br/>
    Password: `987654321`<br/>

<img src=img/Creator_PWR/ap.png width="400"/>

2. After connecting, the Web UI should open automatically. If it doesn’t within 10–20 seconds, open `192.168.254.1` manually in your browser.

<img src=img/Creator_PWR/welcome.png width="400"/>

3. Select your language and tap "Next".

<img src=img/Creator_PWR/language_en.png width="400"/>

4. The interface will display available Wi-Fi networks. Choose the same Wi-Fi your printer uses. If your network isn’t listed, tap "Scan" to refresh.

<img src=img/Creator_PWR/config_sta_en.png width="400"/>

5. Once connected, an IP confirmation popup will appear, tap "Confirm".

<img src=img/Creator_PWR/sta_ip_en.png width="400"/> 

6. Enter your preferred printer name, printer IP address, and port **4408**, then tap "Connect". When `Connection Successful` appears, tap "OK".

<img src=img/Creator_PWR/config_printer_en.png width="400"/> 

### Web UI Operation Guide <a id="web_control"></a>

#### Power Control
##### Basic Control

<img src=img/Creator_PWR/control_en.png width="400"/> 

* 1. Turn the 220 V output on or off.
* 2. Toggle **Auto Power-Off After Print Completion** — when enabled, the printer powers off automatically after printing is done (the toggle resets afterward).
* 3. Turn **USB1 output** on or off.
* 4. Enable or disable the **Countdown** function.
* 5. Set the **Countdown Duration**.

##### Power Parameters
Displays real-time **voltage**, **current**, and **power** supplied to external devices.

<img src=img/Creator_PWR/real_data_en.png width="400"/> 

##### Countdown Settings
Tap "Modify" to open the timer popup. Set your desired time and tap "Save".

<img src=img/Creator_PWR/config_countdown_en.png width="400"/>

Your configured time will appear on the main interface.

<img src=img/Creator_PWR/switch_countdown_en.png width="400"/>   

#### Accessing the Settings Page
Tap the "settings icon" in the top-right corner of the Power Control page.

<img src=img/Creator_PWR/goto_setting_en.png width="400"/>  

#### Safe Power Configuration

<img src=img/Creator_PWR/goto_power_safe_en.png width="400"/>  

Enter **maximum** and **minimum** power limits.<br>
Enable the toggle switches to activate protection.<br>
When power exceeds or drops below these thresholds, the 220 V supply automatically shuts off.

<img src=img/Creator_PWR/config_power_safe_en.png width="400"/>   

#### Power Usage Records

<img src=img/Creator_PWR/goto_power_usage_en.png width="400"/>  

Displays cumulative **energy consumption** and **total printing time**.<br>
Tap "Clear" to clear data.

<img src=img/Creator_PWR/power_usage_en.png width="400"/>

#### Modify Wi-Fi Settings

<img src=img/Creator_PWR/goto_wifi_en.png width="400"/>

* Navigate to this page from the Settings page.
<br>① Tap on this icon to detect available networks.
<br>② Select your Wi-Fi.
<br>③ Enter the password.
<br>④ Tap "Connect" .
<br>

<img src=img/Creator_PWR/change_wifi_en.png width="400"/>


#### Modify AP Settings

<img src=img/Creator_PWR/goto_ap_en.png width="400"/> 

Customize the AP name and password generated by Creator PWR.<br>
If you forget the password, press and hold the **Bind button** for 8 seconds to reset the device.

<img src=img/Creator_PWR/change_ap_en.png width="400"/>  

#### Change Language

<img src=img/Creator_PWR/goto_language_en.png width="400"/> 

Select **Chinese** or **English**, then tap "Confirm" to apply.

<img src=img/Creator_PWR/change_language.png width="400"/> 

#### Firmware Update

<img src=img/Creator_PWR/goto_ota_en.png width="400"/>  

<br>

<img src=img/Creator_PWR/upload_en.png width="400"/>   

* Navigate to this page from the Settings page.
<br> ① Tap "Choose File Icon" to upload your `.bin` firmware.
<br>② Tap "Firmware Upload" to begin the update.

#### Restore Factory Settings

**Method 1:**
In the Settings page, tap "Factory Restore".

<img src=img/Creator_PWR/goto_factory_en.png width="400"/> 

Optionally choose whether to clear power record.<br>
After resetting, AP credentials return to default:<br>
* **SSID:** `Creator_PWR_xxxxxxxxxxxx`
* **Password:** `987654321`

<img src=img/Creator_PWR/factory_en.png width="400"/>

**Method 2:** 
Press and hold the **Bind button** for approximately 8 seconds until the indicator flashes red.

<img src=img/Creator_PWR/bind.png width="600"/>

#### About PWR

<img src=img/Creator_PWR/goto_about_en.png width="400"/>

Displays the device’s **IP Address** and **Serial Number (SN)**.

<img src=img/Creator_PWR/check_about_en.png width="400"/>

#### Controlling USB1 and 220 V Power via Custom Macros

* Download the config file [creator_pwr.cfg](https://github.com/bigtreetech/Creator_PWR/blob/master/creator_pwr.cfg)
* Upload it to **/config**.
* Add to **printer.cfg**.

~~~
[include creator_pwr.cfg]
~~~

## Firmware

### Firmware History  
#### [01.00.00.00](https://github.com/bigtreetech/Creator_PWR/blob/master/Firmware/01.00.00.00/creator_pwr-01.00.00.00.bin)

* Initial release.
 
## Feature Requests
We are committed to evolving the Creator PWR firmware based on user feedback. To suggest new features, please submit them as tickets on our official GitHub repository.<br>
[Request Features](https://github.com/bigtreetech/Creator_PWR/issues)

## Recovery Tool
If your Creator PWR fails to boot or perform OTA updates, use the recovery tool to restore functionality:
[Download Recovery Tool](https://github.com/bigtreetech/Creator_PWR/blob/master/Recovery_tool/Recovery_tool.rar)

## Technical Support
Was this page helpful? If you have any questions about product usage or encounter issues, please contact our after-sales team at **[service001@biqu3d.com](mailto:service001@biqu3d.com)**.
