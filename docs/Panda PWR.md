# Panda PWR
<img src=img/PandaPWR/product.png width="600"/>

Product Link: [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-panda-pwr-intelligent-power-management-module?_pos=1&_sid=99912d4b2&_ss=r)

## Important Usage Information
* In Panda Touch connection mode, should the IP address of the Panda PWR change, you must bring the Panda Touch close to the Panda PWR to acquire the updated IP address.
* Keep the product in a dry area. Do not use in moist environments.
* This product can be operated either as a standalone unit or together with the Panda Touch. 
* When connecting to a 220VAC input, first connect the input wires on the Panda PWR before connecting the wires to the socket.
* The TYPE-C port can only be used for input.
* The USB-A port can only be used for output.

### FCC WARNING:
This device complies with Part 15 of the FCC Rules. Operation is subject to the following two conditions: (1) this device may not cause harmful interference, and (2) this device must accept any interference received, including interference that may cause undesired operation. Any changes or modifications not expressly approved by the party responsible for compliance could void the user's authority to operate the equipment.
NOTE: This equipment has been tested and found to comply with the limits for a Class B digital device, pursuant to Part 15 of the FCC Rules. These limits are designed to provide reasonable protection against harmful interference in a residential installation. This equipment generates, uses, and can radiate radio frequency energy and, if not installed and used in accordance with the instructions, may cause harmful interference to radio communications. However, there is no guarantee that interference will not occur in a particular installation. If this equipment does cause harmful interference to radio or television reception, which can be determined by turning the equipment off and on, the user is encouraged to try to correct the interference by one or more of the following measures:
Reorient or relocate the receiving antenna.
- Increase the separation between the equipment and receiver.
- Connect the equipment into an outlet on a circuit different from that to which the receiver is connected.
- Consult the dealer or an experienced radio/TV technician for help.

To maintain compliance with FCC’s RF exposure guidelines, this equipment should be installed and operated with a minimum distance of 20 cm between the radiator and your body. Use only the supplied antenna.

## Basic Specifications

| Wi-Fi Module | ESP8684-MINI-1-H4|
| :-----| :----: |
| Memory | RAM - 272KB, Flash - 4MB |   
| Connection | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| Operating Temperature | -10°C to 60°C |      

## Packaging List
<img src=img/PandaPWR/packaging.png width="600"/>
 
## Operation Guide
 
### Interface Description

<img src=img/PandaPWR/interface.jpg width="600"/>

#### USB Interface
* USB1<br>Used for modules that require control switches, such as a USB light strip.
<br>
* USB2<br>Can provide power to some modules, such as Panda Touch.
<br>
* TYPE-C<br>Can be used to burn firmware and restore factory settings. 

#### Button Description

<img src=img/PandaPWR/key.png width="600"/>

* Bind a Panda Touch<br>Press and hold for about 3 seconds to enter binding mode. Place the Panda Touch on the shell of Panda PWR.
<br>

* Activate the 220V Output<br>Double-click the Bind key.
<br>

* Restore factory settings<br>Press and hold the button for approximately 8 seconds until the indicator light flashes red, indicating that the PWR is resetting.
<br>

#### Indicator Light Description
* Blue: Operating in LAN standalone mode.
* Blue Pulse: Searching for a Panda IoT Device to bind with.
* Green: Normal communication with a Panda IoT Device.
* Green Flashing: A communication error with a Panda IoT Device.
* Red Pulse: The device is performing a factory reset.

### First Connection

Upon initial setup, the Panda PWR will generate an access point with the default name 'PandaPWR_XXXXXX', where 'XXXXXX' represents a random sequence of six uppercase letters. The default password is a nine-digit number: '987654321.

#### Configure The Network Setting
1 Using your mobile phone or PC, connect to the AP named 'PandaPWR_XXXXXX'.

<img src=img/PandaPWR/ap.png width="300"/>

2 Enter the IP address '192.168.4.1' into the browser of your connected device (phone or PC). Typically, after entering the AP password, you should be automatically redirected to the web user interface (UI).

<img src=img/PandaPWR/jump.png width="300"/>

3 Choose the Wi-Fi network you wish to connect to and enter its password.

<img src=img/PandaPWR/config_sta.png width="300"/>

4 Press the 'Connect' button. Following this, you will be automatically redirected to the control (ctl) page where you can find the updated IP address on the 'Wi-Fi & IP' page.

<img src=img/PandaPWR/ctl_page.png width="300"/><br><img src=img/PandaPWR/ip.png width="300"/>

#### Configure The AP Name And Password

For easier identification, especially when multiple units are in use, we recommend renaming the AP.

* Navigate to the AP page by clicking the "AP" button, where you can modify the AP name and password. Confirm changes by clicking the "OK" button.

<img src=img/PandaPWR/config_ap.png width="300"/>

### Work Modes 
#### LAN Standalone Mode
In this mode, you can use mobile phones or computers to remotely control the Panda PWR via the WEB-UI. [How to control it via the web?](#web_control)
<br><img src=img/PandaPWR/lan_mode.png width="400"/>

#### Panda Touch Connection Mode
In this mode, control is managed through the Panda Touch. [How to control it via the Panda Touch?](#pandatouch_control)

<img src=img/PandaPWR/touch_bind_mode.png width="400"/>  

#### How to Switch Work Modes
To switch from LAN standalone mode to Panda Touch connection mode, press and hold the Bind button for approximately 3 seconds. If the binding is successful, the device will remain in Panda Touch connection mode. If not, it will revert to LAN standalone mode. 

### WEB UI Operation Guide <a id="web_control"></a>
#### Configure network
* Click the "Wi-Fi&IP" button to navigate to the Wi-Fi page, where the IP address is displayed.<br>
* To modify the IP address, click the "Configure Wi-Fi" button.<br><img src=img/PandaPWR/check_ip.png width="400"/>

#### Restore factory settings
Restoring the factory settings will reset the Wi-Fi name of the Panda PWR to 'Panda PWR_XXXXX', where 'XXXXX' is a randomly generated sequence of five uppercase letters. 
This measure is designed to prevent the presence of multiple Panda PWR Wi-Fi names in the same vicinity, reducing the potential for user confusion. Furthermore, the Wi-Fi login password will be reset to '9876543210.<br>
Method 1: 
Click the "OTA" button to switch to the OTA page.
Click the "Factory Reset" button to restore the factory settings.<br><img src=img/PandaPWR/factory.png width="400"/>
Method 2:
Press and hold the "Bind" button for approximately 8 seconds until the indicator light flashes red, indicating that the PWR is resetting.

#### Control Panda PWR By WEB-UI

##### Basic control
* Click the "Power" button to toggle the external power supply on and off.
* Click the "USB 1" button to toggle the USB1 port on and off.
* Click the "Reset Usage" button to clear the power consumption data.<br><img src=img/PandaPWR/ctl_btn.png width="400"/>

##### Countdown control
* Click the "Start shutdown" button and enter the target time.
<img src=img/PandaPWR/countdown_start.png width="400"/> 
<br><img src=img/PandaPWR/countdown_input.png width="400"/>

* Pause/Continue Countdown
<br><img src=img/PandaPWR/countdown_pause.png width="400"/><img src=img/PandaPWR/countdown_continue.png width="400"/> 
* Stop Countdown
<br><img src=img/PandaPWR/countdown_stop.png width="400"/>

#### Over The Air Updates
* Click the "OTA" button to access the OTA page.
* Click the "Select File" button to choose the .bin file you wish to update.
<br><img src=img/PandaPWR/ota_choose_file.png width="400"/>
* Once the update is complete, "Successful" will appear on the right side of the screen.
<img src=img/PandaPWR/ota_ok.png width="400"/>

#### Quick access
Save the IP browsing page to your phone's home screen for quick and easy access in the future.
<br><img src=img/PandaPWR/quick_access.png width="200"/> 

### Control by Panda Touch <a id="pandatouch_control"></a>
#### Bind to Panda Touch
* Open the Panda PWR page.<br><img src=img/PandaPWR/bind_before.png width="600"/>  
* Press and hold the "Bind" button until the blue light starts flashing (approximately 3 seconds).  
* Place the Panda Touch on the Panda PWR casing to establish a connection.
<img src=img/PandaPWR/ask_bind.png width="600"/>  

* The Panda PWR data will be displayed on this page once the binding is successful.
<img src=img/PandaPWR/bind_ok.png width="600"/>    

#### Unbind With Panda Touch 
* To bind the Panda PWR to another device, unbind the current connection first.
<img src=img/PandaPWR/unbind.png width="600"/>    

#### Shut Down After Printing Is Complete
When you need the printer to shut down after printing, activate the auto power-off switch, set the countdown time and temperature limit values, and start the countdown when the conditions are met. After the countdown completes, Panda PWR will automatically cut off the power supply to the printer. 

* Activate Auto Power-Off
<br><img src=img/PandaPWR/start_auto_power_off.png width="600"/>
* The countdown will start automatically when the printer is online and the temperature reaches the set limit. If conditions are not met, the countdown will pause and resume once conditions are met again.
<br><img src=img/PandaPWR/auto_power_off_ing.png width="600"/>

#### Clear The Power Consumption
The Panda PWR records the power consumption of the load. To reset the data, click the "RST Usage" button.
<br><img src=img/PandaPWR/reset_usage.png width="600"/>

#### USB1 Follows the Printer Light
* Setting to ON: USB1 will mimic the printer's LED changes. If the LED is on, USB1 outputs 5V; if off, the output is disabled.
* Setting to OFF: USB1 operates under manual control only, disregarding the printer's LED status.
<br><img src=img/PandaPWR/usb1_function.png width="600"/>

## Firmware

### Firmware History
#### [V1.0.0.1](https://github.com/bigtreetech/PandaPWR/blob/master/Firmware/1.0.0.1/panda_pwr-v1.0.0.1.bin)
##### Bug Fixes
- **Can not bind to Panda Touch.**
- **Can not scan wifi.**

##### Functional Optimizations
- **Add mdns server** Panda Touch can get Panda PWR's ip from LAN. 
- **Optimized the layout of ssid list.**
- **Supports up to 63 characters for WiFi password.** 

#### [V1.0.0](https://github.com/bigtreetech/PandaPWR/blob/master/Firmware/1.0.0/panda_pwr-v1.0.0.bin)

* Initial release of factory firmware.

### Feature Requests

We welcome your suggestions for future firmware enhancements. Please submit your feature requests on the official Panda PWR GitHub repository.

[Request Features](https://github.com/bigtreetech/PandaPWR/issues)

### Recovery Tool
If the Panda PWR fails to start and cannot perform an OTA update, use the recovery tool to restore functionality.
[Recovery Tool Download](https://github.com/bigtreetech/PandaPWR/blob/master/Recovery_tool/Recovery_tool.rar)

## Technical Support
Was this page helpful? If you have any questions about product usage or encounter issues, please contact our after-sales team at service001@biqu3d.com.
