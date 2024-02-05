# Panda Touch
<img src=img/PandaTouch/panda_touch.png width="600"/>

The CAD files for the Panda Touch can be downloaded [here](https://github.com/bigtreetech/PandaTouch/tree/master/3D)

## IMPORTANT NOTE

The Panda Touch is currently compatible with all Bambu Lab printer firmware versions up until:

* P1P --> v01.05.02.00
* P1S --> v01.05.02.00
* X1C --> v01.07.02.00
* A1 --> v01.01.01.00
* A1 Mini --> v01.01.03.00

It is possible that Bambu Lab may release a future firmware version which impacts the functions available from the Panda Touch. Bigtreetech will monitor all beta firmware versions and if we find a firmware version that affects Panda Touch functionality we will send out an alert via email, Aliexpress chat and our social channels. Buyers can then decide whether or not they would like to perform the update at the risk of losing functionality. Note that the Panda Touch warranty does not cover lost functionality due to a Bambu Lab firmware update being performed.

## IMPORTANT USAGE INFORMATION

* When using "LAN Only" mode, firmware versions below V1.05.01.00 on the P1P/S will only allow either the Panda Touch or Bambu Studio to connect to the printer at one time. Firmware versions above that will allow both connections simultaneously.
* When using "Cloud" mode, firmware versions below V1.05.01.00 on the P1P/S will allow both Bambu Studio and the Panda Touch to connect simultaneously. However, they will not allow a third device such as Home Assistant to connect. Firmware versions above that will allow all three simultaneous connections.
* Please check the firmware listing in the product page description to ensure that your printer firmware is compatible with the Panda Touch. Updating printer firmware to an incompatible version that may limit the functionality of the Panda Touch is not covered under the Warranty.
* MicroSD card and USB drive files can currently only be read from the root directory and will only be recognized when models are sliced in Build Plate #1 in Bambu Studio and are in 3mf format.
* When running on its built-in lithium battery, the Panda Touch has a battery life of 30 minutes. To maintain the battery and extend the lifespan of the product, it is advised to charge the Panda Touch or turn it off as soon as the battery runs out.
* The screen may flicker when the lithium battery is low on power. This flickering is normal and acts as a warning to users that the battery is almost empty. Users should then promptly charge the battery or turn off the Panda Touch.
* If you plan to turn your printer on and off frequently then we recommend running the Panda Touch on USB direct mode. This bypasses the battery and prevents the battery from being taken through many charge-discharge cycles. If you want to run off the battery then simply flick the switch on the back of the Panda Touch to the battery power mode.

## Specifications

| MCU | Xtensa 32-bit LX7 dual-core ESP32S3R8 <br> up to 240MHz clock speed. |
| :-----| :----: |
| Memory | PSRAM-8MB, Flash-16MB |
| Display Size | 5” |
| Resolution | 800 x 480 |
| Viewing Angle | IPS Full View |
| Display Colors | 16.7M |
| Communication | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| Operating Temperature | 0-60°C |
| Operating Current | 5V 0.5A (Peak 0.7A) |
| Logic Voltage | 3.3V |
| Built-in Battery | Enables Panda Touch portable use for up to 30 minutes. |
| Charging Time | 1.2 hours |
| Expansion Interfaces | I2C (For temperature/humidity sensors supported in future firmware, etc.) <br> USB Drive (For reading 3mf files from USB drives) |

## Assembly Instructions

### Overview

<img src=img/PandaTouch/pt_back.png width="600"/>

### Charging dock

<img src=img/PandaTouch/charging_dock.png width="600"/>

* The power input has been outfitted with hot-plug protection, allowing users to hot-plug the power supply.

### Packing list

| <img src=img/PandaTouch/pl_1.png width="200"/> | <img src=img/PandaTouch/pl_2.png width="200"/> |
| :----: | :----: |
| Panda Touch x 1 | Mounting Bracket x 1 |
| <img src=img/PandaTouch/pl_3.png width="200"/> | <img src=img/PandaTouch/pl_4.png width="200"/> |
| Magnetic Charging Dock x 1 | USB-C Charging Cable x 1 |
| <img src=img/PandaTouch/pl_5.png width="200"/> | <img src=img/PandaTouch/pl_6.png width="200"/> |
| M3x6 Screws x 4 <br> Hex Key x 1 | BTT Duck x 1 |

### Installing Panda Touch

* Use the hex/allen key and the two M3x6 FHCS to assemble the Charging Dock and the Mounting Bracket as shown.
<br> <img src=img/PandaTouch/pt_1_1.png width="300"/>
* Peel off the film from the bottom side of the Mounting Bracket.
<br> <img src=img/PandaTouch/pt_1_2.png width="300"/>
* Ensure the printer surface is clean and free of oil, grease, etc., attach the assembled Charging Dock centrally atop the original screen. Apply pressure to adhere fully and allow 12 hours for optimal adhesion.
<br> <img src=img/PandaTouch/pt_1_3.png width="300"/>
* Attach the Panda Touch to the Charging Dock.
<br> <img src=img/PandaTouch/pt_1_4.png width="300"/>

### Wiring and Power Connection

* Remove the foam covering the USB port on the printer to access the port.
<br> <img src=img/PandaTouch/pt_2_1.png width="300"/>
* Thread the Charging Cable through the hole on the right side of the printer, then plug the USB-C end into the power input of the Charging Dock.
<br> <img src=img/PandaTouch/pt_2_2.png width="300"/>
* Insert the USB-A end of the charging cable into the USB port on the printer to connect the power supply. Then arrange the cable in the clip as shown.
<br> <img src=img/PandaTouch/pt_2_3.png width="300"/>
* You have three options on the rear power switch. 
  * In the `OFF` position, no power is sent to the Panda Touch and the battery is disconnected.
  * When switched to the battery position, the USB will charge the batter and power the Panda Touch at the same time. If the Panda Touch is removed from the dock then the battery will take over and power it for up to 30 minutes. Upon being returned to the dock, the USB will once again resume charging and powering the Panda Touch. This mode is recommended for users who do not turn their printer on and off often.
  * When switched to the DC 5V position, the Panda Touch is powered directly from the USB input, bypassing the battery. Removing it from the dock will power it off. This mode is recommended for users who often turn their printer on and off as it will preserve battery charge cycles. If such users wish to use the Panda Touch in a portable mode then they can flip the switch to battery power after removing it from the dock.
<br> <img src=img/PandaTouch/pt_2_4.png width="300"/>
* Panda Touch has been successfully installed and powered on. Please follow the on-screen instructions for the next setup step.
<br> <img src=img/PandaTouch/pt_2_5.png width="300"/>

## User Interface Instructions

### First time connection guide

You will be presented with the screen below after booting for the first time or after executing the `Restore Factory Settings` command.

#### WiFi connection guide

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/guide_wifi.png width="600"/>

* During the initial setup the Panda Touch will scan for WiFi networks and then display upt to 20 networks with the best signal strength. If you cannot find your desired network in the list then tap `Refresh` and the Panda Touch will rescan for WiFi networks. **Note:** The current version (`V1.0.1`) of the firmware does not support connecting to hidden WiFi networks. Also, when Panda Touch is connecting to WiFi, Panda Touch cannot perform the WiFi scanning task at the same time.
* Click on the WiFi name in the list, and the [keyboard interface](#keyboard-interface) will pop up. After entering the correct password, click "OK" to start connecting to WiFi. (Password length: 8~64 characters)
* The connection status will be displayed next to the name of the WiFi network. A `Spinner` graphic means that WiFi is still attempting a connection, and a `✔` means the connection is successful.
* After the connection is successful, the `Next` button will be enabled. Click `Next` to enter the printer connection menu.

#### Printer connection menu

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/guide_printer.png width="600"/>

* There are two possible methods to connect the Panda Touch to a printer.
   1. Automatic Scanning (recommended).
   2. Manual data entry.

##### Automatic Scanning

* For automatic scanning simply tap the `Scan` button. Bambu Lab printers that are on the same WiFi network will be displayed in the scan results with the `Name`, `Printer IP`, `SN` and `Model` information pre-populated. Pre-populating these fields helps to make adding printers easier and can result in fewer mistakes due to manual data input errors. The only data that you will need to enter is the `Access Code` which can be found within the printer WiFi/LAN menu. Instructions on how to find your access code will be displayed on the Panda Touch screen. Printers which have previously been connected to the Panda Touch will still be displayed in the scan results however the Panda Touch will not allow them to be added again and `Already added` will be displayed near to the printer icon. Once you have entered your access code you can confirm the connection or manually add some of the data below.

##### Manual Data Entry

* You can click on the printer icon on the left to enter the menu for selecting the printer model. You must set it according to the actual model of the printer you are connecting to. The Panda Touch will also perform some checks in the background to confirm the model. The available models are as follows:
  * P1P
  * P1S
  * X1C
  * A1 mini
  * A1

  After selecting a model using the icon, the content in the `Model` field will be filled with the corresponding model name.

* After selecting the printer model, there are 4 required fields. These fields contain information necessary to connect to and identify the printer. Tap the `i` icon and swipe left and right for instructions on how to find this information on your printer.
  * `Name`: a custom name for users to identify the printer. (length: 1~15 characters)
  * `Printer IP`: for Panda Touch to connect to printer. (length: 7~15 characters)
  * `Access Code`: for Panda Touch to connect to printer. (length: 8 characters)
  * `SN`: for Panda Touch to connect to printer. (length: 15 characters)
* There are 5 optional fields which may help you to identify certain parameters of the printer during later use.
  * `Model`: The model name identifies the exact model of the printer and defines what picture is associated with it. `P1P`, `P1S`, `X1C`, `A1 mini`, `A1`, or customized. (length: 0~15 characters)
  * `Filament Color`: The color of the filament used by the printer. (length: 0~6 characters)
  * `Filament Material`: The material of the filament used by the printer. (length: 0~6 characters)
  * `Nozzle Diameter`: The diameter of the nozzle used by the printer. (length: 0~6 characters)
  * `Nozzle Material`: The type of nozzle used on the printer. (length: 0~6 characters)

* `Confirm` button
After filling in the `required` information, you can click the `Confirm` button to start connecting to the printer. The title bar of the Panda Touch will display the status of the connection.

### Keyboard interface
    ①: Use this key to hide or show the entered information.
    ②: Switch between upper and lower case letters.
    ③: Switch to `Symbol input`.
    ④: Switch to `Number input`.
* `Letter input`:
     <br> <img src=img/PandaTouch/keyboard_letter.png width="600"/>

* `Symbol input`
 <br> <img src=img/PandaTouch/keyboard_symbol.png width="600"/>

* `Number input`
 <br> <img src=img/PandaTouch/keyboard_number.png width="600"/>

### Grouping logic (Control Mode)

Currently (`V1.0.1`), the Panda Touch has 4 settable control modes:
&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/control_mode.png width="600"/>
* `Master`: A single machine that acts as the source of instructions for itself and possibly other machines.
  * The temperature, filament, and file list in the MicroSD Card displayed by Panda Touch are all derived from this printer.
  * Panda Touch requires that a single printer is set at the `Master` as the source of this information.
  * All controls on `Temperature/Axis` and `Filament` menus are in reference to the `Master`.
  * The Panda Touch will monitor all `print error` and `HMS` messages from the `Master` in the background and either send them to the notification center if they are non-critical or display them with a pop-up if they are critical.
  * You can start print jobs directly on the master using its internal SD memory.
* `Slave`: Slave machines will follow the instructions that the user sends to the `Master`. For example, instructions such as `home`, `heating`, `setting filament information` and `load/unload filament` will be followed by all slave machines. This design is for batch control of printers in print farms, so it is recommended that the model and filament (AMS) of `Slave` machines are the same as those of `Master`. If they are different, please use `Slave` mode with caution.
  * All controls on `Temperature/Axis` and `Filament` menus will take effect on `Slave` machines.
  * There can be none or multiple `Slave` machines at the same time.
  * The Panda Touch will monitor all `print error` and `HMS` messages from the `Slave` machines in the background and either send them to the notification center if they are non-critical or display them with a pop-up if they are critical.
  * You can start a print job on a `Slave` printer using an external USB drive and selecting the slave printer.
* `Sync`: An independent machine that does not follow the instructions sent to the master and slave machines.
  * There can be none or multiple `Sync` machines at the same time.
  * The Panda Touch will monitor all `print error` and `HMS` messages from the `Sync` machines in the background and either send them to the notification center if they are non-critical or display them with a pop-up if they are critical.
  * You can start a print job on a `Sync` printer using an external USB drive and selecting the slave printer.
  * Currently (`V1.0.1`) you cannot control sync printers using the `Temperature/Axis` and `Filament` menus. They must be temporarily set to `Master` in order to do this. In a future firmware version the grouping scheme will be adjusted such that this is possible.
* `Disconnected`: The Panda Touch will close the connection to any printers in this state and no instructions will be sent to it.

### Start printing

#### Start printing from USB flash drive

* Ensure that the file system of the USB flash drive is formatted as FAT32.
* Export the `.3mf` file from either Bambu Studio or Orca Slicer using the `Export plate sliced file` option. <br> <img src=img/PandaTouch/export_3mf.png width="600"/>
* Write the sliced `.3mf` file to the root directory of the USB flash drive
  * Panda Touch currently (`V1.0.1`) only supports files are sliced in `Build Plate #1` in Bambu Studio.
  * Panda Touch currently (`V1.0.1`) only supports `.3mf` files and does not support `.gcode` files.
  * Panda Touch currently (`V1.0.1`) only supports reading files in the root directory and does not support reading files in folders.
* Insert the USB flash drive into the Panda Touch, and then go to the `USB flash drive` menu. <br> <img src=img/PandaTouch/usb_flash_drive.png width="600"/>
* Find the file we want to print in the file list, click on the file name to select the printer(s) and start printing. <br> <img src=img/PandaTouch/select_printer.png width="600"/>
  * ①: Select or deselect this printer to start the print job.
  * ②: Set printing parameters:
    * `Bed Leveling`
    * `Flow Calibration` (`P1P` and `P1S` do not have this feature, so these models of printers will not display this option.)
    * `Timelapse`
    * `Use AMS` (Panda Touch will automatically identify whether this printer has AMS plugged in and then determine whether this option needs to be displayed.)
  * ③：List of printers selected to start the task.
  * ④：Start printing.
    * Please make sure that the sliced `.3mf` file is compatible with the selected printers.
    * If using an AMS, please make sure that the filaments in the AMS tray are consistent with those in the sliced `.3mf` file as there is currently (`V1.0.1`) no ability to dynamically map filaments at the start of the print.

* Panda Touch will start to upload the files in the USB flash drive to the root directory of the printer's MicroSD card. <br> <img src=img/PandaTouch/uploading.png width="600"/>
  * 1. Please make sure there is an MicroSD card inserted into the printer.
  * 2. Please ensure that the remaining capacity of the MicroSD card is sufficient to write the files to be uploaded.
* Printing will begin once the upload is complete. For very large `.3mf` files the transfer time may take some minutes to each printer. <br> <img src=img/PandaTouch/printing.png width="600"/>

#### Start printing from the printer's MicroSD card

* Make sure the MicroSD card is inserted into the `Master` printer.
* Go to the `Master printer's MicroSD card` menu.
<br> <img src=img/PandaTouch/micro_sd.png width="600"/>

* Panda Touch currently (`V1.0.1`) only supports files are sliced in `Build Plate #1` in Bambu Studio.
* Panda Touch currently (`V1.0.1`) only supports `.3mf` files and does not support `.gcode` files.
* Panda Touch currently (`V1.0.1`) only supports reading files in the root directory and does not support reading files in folders.
* The file list displayed in this menu is from the `Master` printer. If we want to print files from another printer, we can set the printer we want to print to as the `Master`.
* Just like the steps in [Start printing from USB flash drive](#start-printing-from-usb-flash-drive), select the printer to start printing.

### Multiple printing

When a printer in the `sync` state is printing, or multiple printers in other states are printing at the same time, the Panda Touch will display the `Multiple printing` menu as shown below.
<br> <img src=img/PandaTouch/multi_printing.png width="600"/>

The following group controls exist from this menu:

* ①: Turn ON/OFF the chamber LED of the printer in the current print list.
* ②: Stop all print jobs in the current print list.
* ③: Pause/Resume all print jobs in the current print list.

### HMS (Health Management System)

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/hms.png width="600"/>

* Tap the title bar of Panda Touch, and the HMS notification center menu will expand.
* When a new HMS notification is detected, Panda Touch will automatically expand the HMS notification center.
* The upper left corner of the title bar will display the number of the printers that have sent HMS notifications.
* Click on the corresponding HMS notification to pop up the wiki link QR code for troubleshooting this problem.
* Click `X` to ignore this notification.
* Click `Ignore All` to ignore all notifications. **Note:** Currently (`V1.0.1`) the Panda Touch will ignore notifications from all printers but the X1C. Since the X1C repeatedly sends notification information at regular intervals, ignored notifications may reappear shortly thereafter.

## Firmware

### Firmware History

#### [V1.0.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/panda_touch-v1.0.1.bin)

* First released factory firmware.

### Feature requests

If there is something that you would like to see in a coming release of the Panda Touch firmware then please let us know by logging a feature request on the official Panda Touch github repo.

[Request a feature](https://github.com/bigtreetech/PandaTouch/issues)

### Coming soon

The features below are being worked on for the next firmware release:

* Automatic IP address healing when the router changes an IP of the printer.
* Changes to grouping to allow more than one group and individual printer access without needing to set it to master.
* Patch to better handle mesh networks with multiple matching SSIDs.

### How to update firmware

#### OTA

* Download the firmware binary file (Download link in [Firmware History](#Firmware-History)) to the computer(iPhone or Android Phone).
<br><img src=img/PandaTouch/firmware_download.png width="600"/>
* Connect the Panda Touch to the WiFi on the same LAN as the computer/mobile.
* Find the IP address of the Panda Touch from the `Network` menu.
<br><img src=img/PandaTouch/ip.png width="600"/>
* Enter the Panda Touch's IP address in the computer (iPhone or Android Phone)'s browser to access the web ui, and then click "Update FW" button.
<br><img src=img/PandaTouch/ota_1.png width="600"/>
* Click the "Choose File" button, then select the downloaded firmware binary file. The Panda Touch will automatically start updating.
<br><img src=img/PandaTouch/ota_2.png width="600"/>
* After the update is completed, the Panda Touch will automatically restart and run the new firmware.
<br><img src=img/PandaTouch/ota_3.png width="600"/>

## Finding Your Connection Details

### P1P & P1S

* Navigate to "Settings->WLAN" on the LCD menu, and click "OK".
<br><img src=img/PandaTouch/p1_1.png width="600"/>
* Enter the IP and Access code into the corresponding Panda Touch input boxes (only Access code for automatic scanning).
<br><img src=img/PandaTouch/p1_2.png width="600"/>
* Find "Settings->Device" on the screen menu, and click "OK".
<br><img src=img/PandaTouch/p1_3.png width="600"/>
* Enter the SN code into the corresponding Panda Touch input boxes. <br><img src=img/PandaTouch/p1_4.png width="600"/>

## Troubleshooting

### Connection Troubleshooting

#### Connect failed

<img src=img/PandaTouch/mqtt_connect_failed.png width="600"/>

This prompt means that the Panda Touch cannot establish a connection with the printer. There are generally several which can cause this:

* The printer and Panda Touch are not on the same LAN - Check if the WiFi connected to the printer and Panda Touch is the same SSID. If not, connect them to the same SSID.

* The router restricts communication between devices within the LAN - This is usually the case when using the "guest" network of a wireless router. It is recommended to the devices to a normal WiFi network instead of a guest WiFi network.

* Incorrect printer IP address - The incorrect IP address was typed into the Panda Touch or the IP address of the printer has been changed by the router. Check that the IP address within the Panda Touch matches that of the printer. In a future firmware update, the Panda Touch will be able to automatically find and heal connections that have been broken due to the router changing the IP address of the printer.

* Incorrect printer SN code - An incorrect SN code was entered. Check that the SN of the printer matches that within the Panda Touch.

* Weak WiFi signal - Both the Panda Touch and printer have icons displaying WiFi signals, please try to ensure as strong a WiFi signal as possible.

#### Authentication failed

<img src=img/PandaTouch/mqtt_login_failed.png width="600"/>

This prompt means that Panda Touch can establish a connection with the printer but authentication has failed. This is usually caused by an incorrect access code. Please check whether the printer's access code matches the set one. An incorrect access code are usually caused by the following:

* Input error.
* Clicking the refresh access code button on the printer resulting in the code changing.
* Enabling / Disabling the printer's LAN mode resulted in the printer generating a new access code.
* Exiting or logging back into the Bambu Lab account resulted in the printer generating a new access code.

## Technical Support
Did this page help you? If you have any further questions about product usage or encounter other issues, please feel free to contact our after-sales email at service001@biqu3d.com.
