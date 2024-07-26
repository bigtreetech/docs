# K-Touch
<img src=img/K_Touch/k-touch.png width="600"/>

Product Link: [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-k-touch?_pos=1&_psq=K-&_ss=e&_v=1.0)

## Important Usage Information
* When the K-Touch is powered by its built-in lithium battery, the operational duration varies between 20 to 30 minutes, influenced by the brightness level of the screen. To preserve the battery and extend the device's lifespan, it is advisable to charge the K-Touch or turn it off when not in use.
* The screen may flicker when the lithium battery is low on power. This flickering is normal and acts as a warning to users that the battery is almost empty. Users should then promptly charge the battery or turn off the K-Touch.
* For users who frequently power the printer on and off, it's recommended to use the K-Touch in DC5V mode. This setting bypasses the battery to avoid excessive wear from repeated charging cycles. For battery operation, slide the switch at the back to battery mode.
* Home page sensor names within the Klipper configuration must be limited to 30 characters. If the sensor name or temperature does not display correctly, please adjust the klipper configuration names accordingly. For instance, `temperature_sensor BQ_MCU` is an acceptable name as it contains 24 characters and displays properly.
* K-Touch supports adding multiple Klipper printers for users to switch and control. Currently, up to 50 printers can be added at the same time for selection and switching.
* K-Touch starts printing thumbnails. Currently, it only supports previewing the first 50 Gcode files. If more than 50 Gcode files are uploaded, K-Touch may run out of memory. Please delete some old files to ensure normal display.
## Basic Specifications

| MCU | Xtensa 32-bit LX7 dual-core ESP32S3R8<br/>clocked up to 240MHz |
| :-----| :----: |
| Memory | PSRAM-8MB, Flash-16MB |
| Display Size | 5” |
| Resolution | 800 x 480 |
| Viewing Angle | IPS Full View |
| Display Color | 16.7M |
| Connection | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| Operating Temperature | 0-60°C |
| Operating Current (Fully Charged) | Screen on: 0.6A, Screen off: 0.2A |
| Operating Current (Charging) | Screen on: 1.25A (Post May 2024: 0.95A on), Screen off: 0.85A |
| Logic Voltage | 3.3V |
| Battery Life | Enables K-Touch portable use for up to 0.5 hours. |
| Charging Time  |  Approximately 1.2 hours        |
|  Expansion Interfaces | I2C (for future firmware-supported temperature/humidity sensors) <br/>USB Drive (supports 3mf files from USB drive - FAT32 only)  |

## Assembly Instructions

### Power Management

<img src=img/K_Touch/pt_back.png width="600"/>


* Slide the power switch to `Lithium Battery Power` for portable use. Slide it to `DC 5V` to power directly from the magnetic charging dock, thereby extending the internal battery's lifespan. If you frequently turn the printer on and off, this mode is recommended. Turn off the K-Touch by switching to `OFF`.

### Magnetic Charging Dock

<img src=img/K_Touch/charging_dock.png width="600"/>

* *The power input has been outfitted with hot-plug protection, allowing users to hot-plug the power supply.

### Packaging List

| <img src=img/K_Touch/pl_1.png width="200"/> | <img src=img/K_Touch/pl_2.png width="200"/> |
| :--------------------------------------------: | :--------------------------------------------: |
|                K-Touch x1                 |              Mounting Bracket x1                  |
| <img src=img/K_Touch/pl_3.png width="200"/> | <img src=img/K_Touch/pl_4.png width="200"/> |
|                 Magnetic Charging Dock x1                 | USB-C Charging Cable x1                |
| <img src=img/K_Touch/pl_5.png width="200"/> | <img src=img/K_Touch/pl_6.png width="200"/> |
|         M3x6 Screws x 4<br/>Hex Key x1          |             BTT Duck x1                    |

## User Interface Description

### First Connection

After the first startup or performing the "Restore to Factory Settings" command, you will see the display below.

#### Language Selection Guide
<img src=img/K_Touch/language_guide_en.png width="600"/>

* Selecting a language for K-Touch.

#### WiFi Connection Guide

<img src=img/K_Touch/guide_wifi_en.png width="600"/>

* During the initial setup, K-Touch will scan for WiFi networks and display up to 20 networks with the strongest signals. If your network does not appear on the list, tap `Refresh`, K-Touch will then re-scan for WiFi networks.
* The Firmware version (`V1.0.0`) does not support connecting to hidden WiFi networks. Also, K-Touch cannot scan for WiFi networks while it is connected to one.
* Tap on a WiFi name from the list to access the [Keyboard Interface](#Keyboard Interface). After entering the correct password (password length should be between 8-64 characters), click "OK" to initiate the WiFi connection. 
* The connection status will be displayed next to the WiFi network signal strength. A `spinner` icon indicates that WiFi is still attempting to connect, while a `✔` icon indicates a successful connection.
* Once connected, the `Next`button will be activated. Click`Next`to advance to the printer connection menu.

#### Printer Connection Guide

<img src=img/K_Touch/guide_printer_fconnect_en.png width="600"/>

* Upon first accessing this interface, you must connect a printer to proceed to the main interface.
* Click the `+...` to add a printer.


##### Adding a Printer

* K-Touch offers two methods to add a printer:
<img src=img/K_Touch/guide_add_printer_en.png width="600"/>

   ①：Scan to Add Printer: Scanning and adding Klipper printers that are on the same network as the K-Touch.
   
   ②：Manually Add Printer: Directly entering the Klipper printer's IP address and port number to add the printer.

##### Renaming a Printer
* Long press the printer name to rename the printer (length: 2–20 characters).
<img src=img/K_Touch/print_name_en.png width="600"/>

###### ①：Scanning for Printers
<img src=img/K_Touch/guide_printer_ip_en.png width="600"/>

* After entering the port number, which by default is: 80 (length 2~5 characters), click the refresh button on the right to initiate the scan. The scan, which takes about 60 seconds (depending on network conditions), will identify printers on the same WiFi network.

<img src=img/K_Touch/guide_printer_ip_flash_en.png width="600"/>

* The list of detected printers, along with their IP addresses and port numbers, will automatically update once the scan is complete.

###### ②：Manually Adding a Printer

<img src=img/K_Touch/guide_printer_fflash_en.png width="600"/>

* Click `Manually add a printer` to open the manual addition interface.

<img src=img/K_Touch/guide_printer_ip_input_mun_en.png width="600"/>

* Enter `IP`(length: 11–14 characters) and`PORT`(length: 2–5 characters), then click confirm to successfully add the printer. You will then be directed to the printer selection page.

##### Selecting the Printer to Add
**Note:** K-Touch currently only supports adding up to 50 printers for connection switching.

* `Printer not selected`:
<img src=img/K_Touch/guide_printer_ip_flash_en.png width="600"/>

* `Printer selected`:
<img src=img/K_Touch/guide_printer_falsh_choosed_en.png width="600"/>

* Tap on the printer you want to add. A `√` will appear in the box once selected, and the `Back` button will change to a `OK` button. Click it to add the printer to the connection list. 
* Note: The refresh and printer connection list include duplicate removal functions, please verify before adding and selecting printers.

##### Select the Printer to Connect

* `Select the printer to connect`
<img src=img/K_Touch/guide_printer_connect_en.png width="600"/>

* Tap the `OK` button to establish a connection with the selected printer.
<img src=img/K_Touch/guide_printer_connect_popupp_en.png width="600"/>


* Printer connection successful.
<img src=img/K_Touch/guide_printer_connected_en.png width="600"/>

* Once a printer is successfully connected, the circle icon will change to the theme color (default is red), and the connected printer’s name, IP address, and port number will be displayed on the top.
* The selected printer's information will be visible at the top of every interface within K-Touch.
* After completing the connection, click `Next` to navigate to the main interface.

### Keyboard Description
    ① ：Use this key to hide or display the inputted information.
    ② ：Uppercase/lowercase letters.
    ③ ：Switch to “symbol input.”
    ④ ：Switch to “numeric input.”
* `Letter Input`:
 <br> <img src=img/K_Touch/keyboard_letter.png width="600"/>

* `Symbol Input`
 <br> <img src=img/K_Touch/keyboard_symbol.png width="600"/>

* `Numeric Input` 
 <br> <img src=img/K_Touch/keyboard_number.png width="600"/>

### Main Interface

<img src=img/K_Touch/K-Touchhome_screen_en.png width="600"/>

* The K-Touch main Interface is intuitively designed, featuring six key elements and navigation keys:
   * Printer Selection: Navigate to the printer selection interface, which functions similarly to the initial connection process.
   * Axis/Temp: Access controls for temperature settings, extruder feed and retract, axis movement, and motor unlocking.
   * Calibration: Endstops status checks, auto PID tuning, and Z-offset Calibration.
   *  Settings: Adjust WiFi connectivity, screen brightness, screen timeout settings, language, and theme color. Access system information such as device ID, current language, firmware version, and factory reset options. Also, the navigation guides for firmware OTA and feedback are also provided.
   * Start Printing: Search and display print files, including printer name, estimated print time, and thumbnails.
   * Real-time Temperature Display: Navigate to the temperature and axis movement interface.
* Navigation Keys: Three dedicated buttons on the left allow for easy navigation:
    * ① ：Back Button: Disabled on the main interface, click to return to the previous interface on other interfaces.
    * ② ：Home Button: Disabled on the main interface, click to return to the main interface on other interfaces.
    * ③ ：Emergency Stop Button: Click to send an emergency stop command to the printer.

### Axis/Tempe Interface
<img src=img/K_Touch/temp_axis_screen0_en.png width="600"/>

    ① ：Real-time temperature and fan speed; adjust extruder/heated bed temperatures, fan speed.
    ② ：Leveling, unlock motors, and home commands; select the single movement distance for X, Y, Z axes.
    ③ ：Manually extrude or retract the filament; choose the extrusion length and speed.
    ④ ：Display the real-time positions of the `X/Y/Z` axes; navigate to the Z-offset Calibration.

#### ① Settings

##### Setting Extruder/Heated bed Temperatures
<img src=img/K_Touch/temp_axis_screen1_en.png width="600"/>

* Tap the `Extruder/Bed`, enter the desired temperature, and press `√` to set. The process for setting the bed is similar.
* On the left side of the keyboard are `Quick Temperature Adjustment` buttons, which allow for one-click temperature settings for the extruder and bed.

    ① ：**ABS：   Extruder Temp：230°C，Bed Temp：90°C**

    ② ：**PLA：   Extruder Temp：200°C，Bed Temp：60°C**

    ③ ：**PETG：  Extruder Temp：240°C，Bed Temp：70°C**

    ④ ：**TPU：   Extruder Temp：220°C，Bed Temp：50°C**

##### Setting Fan Speed

<img src=img/K_Touch/temp_axis_screen1_1_en.png width="600"/>

*Tap the `Fan` to access the fan speed settings interface. Adjust the fan speed within the range of 0-100% by tapping or long pressing and dragging the slider.

#### ② Axis Movement

##### Leveling

<img src=img/K_Touch/temp_axis_screen2_leve.png width="600"/>

* Tap the `Leveling` button to initiate the process on the printer. Once completed, a popup will appear with the option to `Save Data`. This popup can appear on any interface (shown above in the Z-offset Calibration interface).

#### X/Y/Z Axis Movement

* Select the button corresponding to the desired axis to perform movements. The default movement increment is 10mm but can be adjusted as needed.

#### Homing

* Tap the `Homing` button to execute homing operations for the X, Y, Z axes.

#### Unlock Motors

<img src=img/K_Touch/temp_axis_screen2_1_en.png width="600"/>

* Tap the `Unlock Motors` button to bring up a confirmation dialog. Choose `OK` to unlock the motors or `Cancel` to abort.

### Extrusion Settings 

#### Extrude/Retract
<img src=img/K_Touch/temp_axis_screen3_en.png width="600"/>

* Tap the `Extrude/Retract` to extrude or retract the filament. If the temperature is below 200°C, a prompt will appear offering the option to heat up by selecting `OK` or to cancel by selecting `Cancel`. If the temperature is adequate (≥200°C), the chosen extrusion or retraction will proceed with default settings of `15mm` length and `5mm/s` speed.

<img src=img/K_Touch/temp_axis_screen3_1_en.png  width="600"/>


* Adjust the `Extrusion Length` and `Extrusion Speed` by tapping the respective buttons, allowing you to customize the settings.

### X/Y/Z Position Display

* The interface provides a real-time display of the X, Y, and Z axes' relative and absolute positions. Access this feature to proceed to the `Z-offset Calibration`.

###  Utilities 

* Navigate to the utilities interface by tapping the `Calibration` button on the Main Interface.
<img src=img/K_Touch/debug_screen0_en.png  width="600"/>

#### Endstops Status

* Check the status of the endstops by tapping the corresponding button. A popup will display the current state.
<img src=img/K_Touch/debug_screen1_1_en.png  width="600"/>

* The K-Touch checks the endstops `X, Y, Z` every two seconds to monitor their triggered status, which requires manual triggering.
<img src=img/K_Touch/debug_screen1_en.png  width="600"/>

#### Auto PID 

* Select the extruder or heated bed to PID by tapping it. The button will be highlighted in the theme color (default red).
<img src=img/K_Touch/debug_screen2_en.png  width="600"/>

* Enter the desired PID value on the right side and tap `√`. The `Auto PID` button below will become clickable and light up in the theme color.
<img src=img/K_Touch/debug_screen2_1_en.png  width="600"/>

* Tap the `Auto PID` button to bring up a confirmation popup for initiating the PID process.
<img src=img/K_Touch/debug_screen2_2_en.png  width="600"/>

* Tap the `OK` button to start the PID process, and a popup indicating the ongoing PID adjustment will appear.
<img src=img/K_Touch/debug_screen2_4_en.png  width="600"/>

* PID is completed, and a pop-up window will appear to confirm whether to save. After clicking the OK button, the pop-up window will close and the PID value will be saved. At this time, you can perform PID again or use the net bed to level. Please note that if you click the Cancel button, the pop-up window will close, but the PID data will not be saved. If you need to perform PID or net bed leveling again, you need to restart K-Touch.
<img src=img/K_Touch/debug_screen2_5_en.png  width="600"/>

#### Z-Offset Calibration

* Select the desired movement unit (mm), default is 0.05mm. Use the `↑+` and `↓-` buttons below to operate the Z-axis.
<img src=img/K_Touch/debug_screen3_en.png  width="600"/>

* Tap the `OK` button to save the adjusted Z-offset calibration data.
<img src=img/K_Touch/debug_screen3_1_en.png  width="600"/>

* Tap the `Clear` icon to reset the adjusted Z-offset calibration data.
<img src=img/K_Touch/debug_screen3_2_en.png  width="600"/>

* Tap the `Axis offset` box to navigate to the `Axis/Temp Interface`.

### System Settings

*  Navigate to the `System Settings` by tapping the `Settings` button on the main interface.

<img src=img/K_Touch/set_screen1_en.png  width="600"/>

#### Wi-Fi Settings

##### WiFi Connection Status

###### Connected

<img src=img/K_Touch/set_wifi_screen1.png  width="600"/>

 Displays the currently connected IP address when connected to WiFi.

###### Connecting
<img src=img/K_Touch/set_wifi_screen2.png  width="600"/>

###### Connection Failed

<img src=img/K_Touch/set_wifi_screen3_en.png  width="600"/>

##### Manual Refresh

* Tap the `Refresh` icon next to the IP to manually refresh the list of WiFi networks.

<img src=img/K_Touch/set_wifi_screen4.png  width="600"/>

##### Background Auto Refresh

* K-Touch features a `Background Auto Refresh` function that attempts automatic reconnection when the network is disconnected, with a refresh frequency of `60 seconds`.

#### Screen Brightness Settings

<img src=img/K_Touch/set_screen2_en.png  width="600"/>

* Adjust the screen brightness (default 50) by tapping or long pressing.

#### Screen Timeout

<img src=img/K_Touch/set_screen3_en.png  width="600"/>

* Select the desired timeout period, default is `10 minutes`.

#### Language Selection

<img src=img/K_Touch/set_screen4_en.png  width="600"/>

*  Choose the desired language, default is `English`.

#### Theme

<img src=img/K_Touch/set_screen5_en.png  width="600"/>

* Choose the desired theme color, default is `Red`.

#### System Information

* Access the system information interface by tapping the `System Info` .
<img src=img/K_Touch/set_system1_en.png  width="600"/>

* Displays the connected `Device ID`, current `Language`, `Firmware Version`.
* **Restore Factory Settings (Clears All Data)**
*  Lower left for OTA upgrade process interface.
<img src=img/K_Touch/set_system2_en.png  width="600"/>

* Lower right for feedback information interface.
<img src=img/K_Touch/set_system3_en.png  width="600"/>

## Start Printing Interface

* Tap the `Start Printing` button to navigate to the print file list interface and refresh the list of print files (up to 50 files can be displayed).
<img src=img/K_Touch/print_file_reflash_en.png  width="600"/>

* Once scanning is complete, the print file list will appear. The duration of the scan depends on the size of the file list and the images.
* The red frame indicates the default print image.
<img src=img/K_Touch/print_file_num.png  width="600"/>


* Select the file you wish to print, click `OK`, and initiate the printing process.
<img src=img/K_Touch/print_file_en.png  width="600"/>


* The main interface loads the printing information. If there is no print image, the default image below is used.
* Printing
<img src=img/K_Touch/home_printing_en.png  width="600"/>

* Pause
<img src=img/K_Touch/home_stop_en.png  width="600"/>

### Klipper Termination Page

* K-Touch continuously monitors the printer's status, capturing error messages and anomalies.
* If an error occurs or the emergency stop button is pressed, K-Touch displays an error page.

<img src=img/K_Touch/print_report0_en.png  width="600"/>
<img src=img/K_Touch/print_report1_en.png  width="600"/>
<img src=img/K_Touch/print_report2_en.png  width="600"/>

    ①: Sends the "RESTART" command, similar to the web interface.
    ②: Sends the "FIRMWARE_RESTART" command, similar to the web interface.
    ③: Tap to access the System Settings interface, allowing for WiFi reconnection, theme color selection, screen timeout settings, etc.
    ④: Tap to access the Printer Selection interface to rescan, enter, and select printers.
    ⑤: Displays the current printer status and error messages.

### Pop-up Alerts

#### Timeout Pop-up

* Displays a timeout warning when network issues such as instability, printer shutdowns, or weak signals occur.

<img src=img/K_Touch/print_timeout0_en.png  width="600"/>

#### Error Pop-up

* The printer has not been homed, yet X, Y, Z axis movement was performed.

<img src=img/K_Touch/error_axis0_en.png  width="600"/>

* Triggered if the extruder or bed temperature exceeds the maximum limit.

<img src=img/K_Touch/error_axis1_en.png  width="600"/>

<!-- * Triggered if there is an attempt to reselect printer files during printing.

<img src=img/K_Touch/error_axis2_en.png  width="600"/> -->

#### Accidental Touch Prevention Pop-up

* Emergency stop button:
<img src=img/K_Touch/print_stop_en.png  width="600"/>

* Unlock motors button:
<img src=img/K_Touch/print_lock_en.png  width="600"/>

* Repeat PID:
<img src=img/K_Touch/print_pid_en.png  width="600"/>

* Factory reset button:
<img src=img/K_Touch/print_reset_en.png  width="600"/>

* Delete printer:
<img src=img/K_Touch/print_delete_en.png  width="600"/>

* Prevents switching printers during file search:
<img src=img/K_Touch/print_change_en.png  width="600"/>

* Prevents accidental file selection:
<img src=img/K_Touch/print_choose_en.png  width="600"/>

*  Stops a printing file:
<img src=img/K_Touch/print_printing_en.png  width="600"/>

#### Reminder Pop-up

* Displays when the printer file list is empty or exceeds 50 files.

* Indicates auto bed leveling completion (`OK` button saves data):

<img src=img/K_Touch/temp_axis_screen2_leve.png  width="600"/>

* Indicates automatic PID completion (`OK` button saves data):

<img src=img/K_Touch/debug_screen2_5_en.png  width="600"/>

* Notifies when printing is complete.

<img src=img/K_Touch/print_complete_en.png  width="600"/>

## Firmware

### Firmware History

#### [V1.0.0](https://github.com/bigtreetech/K-Touch/blob/master/Firmware/panda_touch-v1.0.1.bin)

* The initial release of factory firmware.

### Feature Requests

If you would like to see specific features in upcoming K-Touch firmware releases, please log your feature requests on the official K-Touch GitHub repository to let us know.

[Request Features](https://github.com/bigtreetech/K-Touch/issues)

### How to Update Firmware
#### OTA

* Download the firmware binary file from the [Firmware History] section to the device you will use for the update, such as a computer or mobile device running iOS or Android. Here, it will be referred to as `computer`.
<br><img src=img/K_Touch/firmware_download.png width="600"/>
* Connect K-Touch to the WiFi network that shares the same local area network as the computer.
* Locate K-Touch's IP address in the `Wi-Fi Settings` under `System Settings`.
<br><img src=img/K_Touch/ip.png width="600"/>
* Enter K-Touch's IP address in your computer's browser to access the web UI, then click the "Update FW" button.
<br><img src=img/K_Touch/ota_1.png width="600"/>
* Click the `Choose File` button and select the downloaded firmware binary file. K-Touch will automatically start the update process.
<br><img src=img/K_Touch/ota_2.png width="600"/>
* After the update is complete, K-Touch will automatically reboot and operate with the new firmware.
<br><img src=img/K_Touch/ota_3.png width="600"/>

### How to Update IMG Files
* When the IMG part of the new firmware has changed, updating the IMG file is necessary.
<br><img src=img/K_Touch/ota_img_remind.png width="660"/>

* Download the IMG file to your computer or mobile device.
<br><img src=img/K_Touch/ota_img_download.png width="660"/>
* Ensure K-Touch is connected to the WiFi network on the same local area network as your computer.
* Enter K-Touch's IP address in your computer browser to access the web UI, then click the "Update File" button.
<br><img src=img/K_Touch/ota_img_1.png width="660"/>
* Click the `Choose File` button, then select the downloaded img file. K-Touch will automatically start the update.
<br><img src=img/K_Touch/ota_img_2.png width="660"/>
* After the update is complete, K-Touch will reboot automatically and operate with the new img file.
<br><img src=img/K_Touch/ota_img_3.png width="660"/>

### How to Use Different Firmware (Updating K-Touch to Panda-Touch)
* Note:
It is crucial to back up data. Switching between K-Touch firmware and Panda Touch firmware will erase all existing data on the device. Record necessary information like the Klipper or Bambu printer IP, SN, access codes, WiFi network, and password beforehand.

* Ensure K-Touch is connected to the WiFi network sharing the same local network as the computer to obtain the necessary IP for OTA updates.
<br><img src=img/K_Touch/ip.png width="600"/>

* Visit the [Panda-Touch GitHub repository](https://github.com/bigtreetech/PandaTouch/tree/master/Firmware) to download the latest firmware version.
<br><img src=img/K_Touch/K-Ptouch.png width="600"/>
* Enter K-Touch's IP address in your computer browser to access the web UI, then click the "Update FW" button.
<br><img src=img/K_Touch/ota_1.png width="600"/>
* Click the `Choose File` button, then select the previously downloaded Panda-Touch firmware binary file. K-Touch will automatically start the update.
<br><img src=img/K_Touch/K-Ptouch1.png width="600"/>
*  After the update is complete, K-Touch will reboot automatically and operate with the new firmware.
<br><img src=img/K_Touch/ota_3.png width="600"/>
*  After rebooting with different firmware, the Panda-Touch initialization interface will appear. 
* After connecting to WiFi, the left side will display the IP address.
<br><img src=img/K_Touch/K-Ptouch2.png width="600"/>
* Enter K-Touch's IP address in your computer browser to access the web UI, then click the "Update FW" button.
<br><img src=img/K_Touch/K-Ptouch3.png width="600"/>
*  Click the `Choose File` button, then select the downloaded img file. K-Touch will automatically start the update.
<br><img src=img/K_Touch/K-Ptouch4.png width="600"/>
* After the update is complete, K-Touch will reboot automatically and operate with the new img file.
<br><img src=img/K_Touch/ota_img_3.png width="660"/>
* The update is successful, displaying the Panda-Touch initialization interface.
<br><img src=img/K_Touch/K-Ptouch6.png width="600"/>

### Flash Download Tool

This method is supported only on the Windows operating system.
* Visit the [K-Touch GitHub](https://github.com/bigtreetech/K-Touch) to download the required files.
<br><img src=img/K_Touch/flash_down.png width="660"/>
* Use a Type-C USB cable to connect K-Touch to your computer. Check if a new COM port appears in the Device Manager. If the COM port is not recognized, please install the [CH340 driver](https://www.wch-ic.com/download/CH341SER_EXE.html).
* Download and unzip [flash_Download_tool_3.9.3_0-K-Touch.zip]（./flash_Download_tool-3.9.3_0-K-Touch.zip）to your computer.
* Double-click `flash_download_tool_3.9.3.exe`
<br><img src=img/K_Touch/flash_down1.png width="660"/>
* Set the ChipType to `ESP32-S3` and click the `OK` button.
<br><img src=img/K_Touch/flash_down2.png width="660"/>
* Adjust the COM port setting to match the port recognized by your computer, then click `ERASE`.
<br><img src=img/K_Touch/flash_down5.png width="660"/>
* Ensure the erasing process is completed. Keep the software open and proceed with the firmware writing.
<br><img src=img/K_Touch/flash_down4.png width="660"/>
* Click `START` to begin the firmware writing process.
<br><img src=img/K_Touch/flash_down3.png width="660"/>
* After the process completes, power off K-Touch, then turn it on to restart.
<br><img src=img/K_Touch/flash_down4.png width="660"/>

## Technical Support
Was this page helpful? If you have any further questions about product usage or encounter other issues, please email our after-sales team at service001@biqu3d.com.
