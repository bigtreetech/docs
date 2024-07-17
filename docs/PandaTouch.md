# Panda Touch
<img src=img/PandaTouch/panda_touch.png width="600"/>

The CAD files for the Panda Touch can be downloaded [here](https://github.com/bigtreetech/PandaTouch/tree/master/3D)

**Product Link:** https://biqu.equipment/products/bigtreetech-panda-touch-5-display-for-bambu-lab-printers

<video width="430" height="300" controls>
    <source src="img/PandaTouch/introduction.mp4" type="video/mp4">
</video>



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
| Operating Current (fully charged) |  Screen active: 0.6A, Screen inactive: 0.2A  |
| Operating Current (charging) |  Screen active: 1.25A, Screen inactive: 0.85A  |
| Logic Voltage | 3.3V |
| Built-in Battery | Enables Panda Touch portable use for up to 30 minutes. |
| Charging Time | 1.2 hours |
| Expansion Interfaces | I2C (For temperature/humidity sensors supported in future firmware, etc.) <br> USB Drive (For reading 3mf files from USB drives - FAT32 only) |

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
  * In the `OFF` position, the battery will charge but the Panda Touch will not be powered up.
  * When switched to the battery position, the USB will charge the battery and power the Panda Touch at the same time. If the Panda Touch is removed from the dock then the battery will take over and power it for up to 30 minutes. Upon being returned to the dock, the USB will once again resume charging and powering the Panda Touch. This mode is recommended for users who do not turn their printer on and off often. Note that there is no battery charge level indicator. The Panda Touch has been designed for brief periods of use away from a dock and not for prolonged mobile use.
  * When switched to the DC 5V position, the Panda Touch is powered directly from the USB input, while still charging the battery. Removing it from the dock will power it off without the Panda Touch draining the battery. This mode is recommended for users who often turn their printer on and off as it will preserve battery charge cycles. If such users wish to use the Panda Touch in a portable mode then they can flip the switch to battery power after removing it from the dock.
  <br> <img src=img/PandaTouch/pt_2_4.png width="300"/>
* Panda Touch has been successfully installed and powered on. Please follow the on-screen instructions for the next setup step.
<br> <img src=img/PandaTouch/pt_2_5.png width="300"/>

## User Interface Instructions

### First time connection guide

You will be presented with the screen below after booting for the first time or after executing the `Restore Factory Settings` command.

#### Language select guide

<img src=img/PandaTouch/language_guide.png width="600"/>

* Choose a language for Panda Touch

#### WiFi connection guide
&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/guide_wifi.png width="600"/>

* During the initial setup the Panda Touch will scan for WiFi networks and then display upt to 20 networks with the best signal strength. If you cannot find your desired network in the list then tap `Refresh` and the Panda Touch will rescan for WiFi networks. **Note:** Currently version of the firmware does not support connecting to hidden WiFi networks. Also, when Panda Touch is connecting to WiFi, Panda Touch cannot perform the WiFi scanning task at the same time.
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

### Filament Control

The Panda Touch allows users to configure the type and colour of the filament being used on their external spool holder and their AMS. Users can also load and unload filamement using this menu.

When performing any actions, please ensure that the correct AMS unit and filament slot is selected. You will know that the filament is selected when it has a red border around it. If nothing has been selected then the `Load` and `Unload` buttons will be greyed out.

<img src=img/PandaTouch/filament_screen.png width="600"/>

### HMS (Health Management System)

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/hms.png width="600"/>

* Tap the title bar of Panda Touch, and the HMS notification center menu will expand.
* When a new HMS notification is detected, Panda Touch will automatically expand the HMS notification center.
* The upper left corner of the title bar will display the number of the printers that have sent HMS notifications.
* Click on the corresponding HMS notification to pop up the wiki link QR code for troubleshooting this problem.
* Click `X` to ignore this notification.
* Click `Ignore All` to ignore all notifications. **Note:** the Panda Touch will ignore notifications from all printers but the X1C. Since the X1C repeatedly sends notification information at regular intervals, ignored notifications may reappear shortly thereafter.

## Firmware

### Firmware History
**Note：** Updating versions V1.0.2 and above requires sending two files to Panda Touch. 
One is the firmware file and the other contains the graphics and fonts. 
This will help us to add more languages to the Panda touch in the future. Be sure to download both the .bin and .img files.

#### [V1.0.4](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.4/panda_touch-v1.0.4.bin)
* Added the ability to enter Bambu cloud credentials into the settings page.
* Added the ability to synchronize printers under the account to PandaTouch.
* Added the ability to configure individual printers to either connect via the cloud or via local LAN.
* Support WiFi reconnection and automatic connection to stronger signals in the same SSID. 
* Support sorting files in u-disk and ftps by time.

##### How to add a account
* Click to jump to the settings page, then click the "login BambuLab account" button. 
<img src=img/PandaTouch/add_account.png width="600"/>
* China uses mobile phone numbers, while global regions use email addresses.
<br><img src=img/PandaTouch/login.png width="600"/>
* Tap the confirm button.
<br><img src=img/PandaTouch/input_account.png width="600"/>

##### Synchronize the printer under the account to the local device
* After successful login, you can choose to synchronize the printer under your account to the local device. 
<br><img src=img/PandaTouch/login_ok.png width="600"/> 
* Tap yes to synchronize,during this process, the synchronized printer must be on the same network as PandaTouch. In case of poor network connection, you may need to re-edit the printer's IP address.
<br><img src=img/PandaTouch/sync_ok.png width="600"/> 
* As we can see, this printer works in cloud mode.
<br><img src=img/PandaTouch/cloud_mode.png width="600"/> 

##### How to delete a account
* Click the "X" button in the upper right corner of the account information to delete the account information saved on PandaTouch. After deleting the account information, the communication mode between PandaTouch and the printer will be changed to local mode. This operation will not directly switch the working mode of the printer itself.
<br><img src=img/PandaTouch/del_account.png width="600"/> 

##### How to change working mode between PandaTouch and printer
* Synchronize the printer under the account to switch communication methods locally by selecting cloud mode. Before switching to cloud mode, a new account needs to be added.
<br><img src=img/PandaTouch/switch_work_mode.png width="600"/> 

#### [V1.0.3](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.3/panda_touch-v1.0.3.bin)
* Add Multi-group feature.
* Add the ability to change picture of Panda.
* Add auto select external filament slot with no AMS.
* Add the feature when operating the axis during a print, a prompt pops up indicating that the operation is not allowed.
* Add self healing IP address.
* Add ability to control screen brightness.
* Add the feature when adding a new printer, the number of scanning printers increases from 10 to 20.
* Add reprint function, only supports printing tasks launched from Panda touch, will not take action after restarting.
* Fix unable to load/unload when print is paused.
* Fix german filenames are now displayed correctly, ä ü ö ß characters are displayed.
* Fix wiFi connection instability. If WiFi falls off the network the Panda Touch will attempt three forced disconnect-reconnect cycles. If these still fail then the user is alerted and given an option for a manual reboot.
* Fix use BSSID as the primary key for WiFi connections instead of SSID.

##### Grouping logic
Allow you to create up to 10 new groups to control multiple printers:

##### How to add a group
* Tap + in the connected printer list to pop up the multi function menu.  
<br><img src=img/PandaTouch/press_plus.png width="600"/>
* Choose the add group option.
<br><img src=img/PandaTouch/press_add_group.png width="600"/>
* Choose the printer which you want add to the group.
<br><img src=img/PandaTouch/group_choose_printer.png width="600"/>
* Tap the next and input the group name and click "OK".
<br><img src=img/PandaTouch/group_name.png width="600"/>
* You now can see the group in the printer list, tapping this group will allow you to control the whole group but the controls presented will be those of the group leader. 

##### Switch to group
* To control an individual printer, simply click on the card that corresponds to it and you will be taken to the control page that sends commands to it in isolation even if it is part of a group. If you send a command that takes some time and then you send a command to a group that it belongs to, the second command will be ignored if the first is still busy.
<br><img src=img/PandaTouch/add_group_ok.png width="600"/> 

##### Start printing with one printer
* Tap to choose the file in the USB disk list to print.
* Set printing parameters:
  <br><img src=img/PandaTouch/start_print_one.png width="600"/>
    * `Bed Leveling`
    * `Flow Calibration` (`P1P` and `P1S` do not have this feature, so these models of printers will not display this option.)
    * `Timelapse`
    * `Use AMS` (Panda Touch will automatically identify whether this printer has AMS plugged in and then determine whether this option needs to be displayed.)
  
* Automatically jump to the main interface and display printer data.
<br><img src=img/PandaTouch/start_print_one_ing.png width="600"/>

##### Multiple printing
* Tap to choose the file in the USB disk list to print.
* Set printing parameters:
  <br><img src=img/PandaTouch/start_print.png width="600"/>
    * `Bed Leveling`
    * `Flow Calibration` (When there is a printer in the group that supports this feature, it will be automatically selected and only applicable to those supported printers.)
    * `Timelapse`
    * `Use AMS` (When there is a printer in the group that supports this feature, it will be automatically selected and only applicable to those supported printers.)


* Panda Touch will generate a list of available printers for you choose from. Printers that are already busy will be excluded from this list. This applies to groups that contain printers that are already busy too. Tick box print options for a particular group will be based on the functionality available for the most functional machine in the group. For example, you are using a group wich contains X1C\P1P\P1S, you will have the lidar scan option available but this option will only be sent to the printers in the group that support it.
<br><img src=img/PandaTouch/udisk_upload.png width="600"/>
<br><img src=img/PandaTouch/group_printing.png width="600"/>

The group controls menu same as the version V1.0.1

##### How to exchange Panda Picture
You can check out the tool form this link [exchange picture tool](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.3/)
* Please upgrade the PandaTouch firmware to V1.0.3 before proceeding.
* The operation to replace the Panda image can only be performed on a Windows system.
* Please ensure that the image you want to replace meets the following requirements: pixel width less than 280, pixel height less than 306, pixel depth 32-bit color, and image format PNG.
###### Step by Step
* The tool can run at windows system only.
* Download the Panda Exchange Tool from the firmware folder of V1.0.3.
* Ensure that the image you want to replace meets the format requirements, rename it, and replace the new_panda.png file in this folder. The Panda Exchange Tool folder already contains a new Panda image. If you don't have a specific image to replace, you can skip this step.
* Click generate_img.bat to compile.
* Enter the IP address of the Panda Touch in the browser to access the OTA web UI.
* Click "Update File," select new_panda.img, and proceed with the update.

#### [V1.0.2](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.2/panda_touch-v1.0.2.bin)

* Add multi-language option, support chinese.

#### [V1.0.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.1/panda_touch-v1.0.1.bin)

* First released factory firmware.

##### Grouping logic
the Panda Touch has 4 settable control modes:
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
  * you cannot control sync printers using the `Temperature/Axis` and `Filament` menus. They must be temporarily set to `Master` in order to do this. In a future firmware version the grouping scheme will be adjusted such that this is possible.
* `Disconnected`: The Panda Touch will close the connection to any printers in this state and no instructions will be sent to it.

##### Start printing

###### Start printing from USB flash drive

* Ensure that the file system of the USB flash drive is *formatted as FAT32*.
* Export the `.3mf` file from either Bambu Studio or Orca Slicer using the `Export plate sliced file` option. <br> <img src=img/PandaTouch/export_3mf.png width="600"/>
* Write the sliced `.3mf` file to the root directory of the USB flash drive
  * Panda Touch only supports files are sliced in `Build Plate #1` in Bambu Studio.
  * Panda Touch only supports `.3mf` files and does not support `.gcode` files.
  * Panda Touch only supports reading files in the root directory and does not support reading files in folders.
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
    * If using an AMS, please make sure that the filaments in the AMS tray are consistent with those in the sliced `.3mf` file as there is no ability to dynamically map filaments at the start of the print.

* Panda Touch will start to upload the files in the USB flash drive to the root directory of the printer's MicroSD card. <br> <img src=img/PandaTouch/uploading.png width="600"/>
  * 1. Please make sure there is an MicroSD card inserted into the printer.
  * 2. Please ensure that the remaining capacity of the MicroSD card is sufficient to write the files to be uploaded.
* Printing will begin once the upload is complete. For very large `.3mf` files the transfer time may take some minutes to each printer. <br> <img src=img/PandaTouch/printing.png width="600"/>

###### Start printing from the printer's MicroSD card

* Make sure the MicroSD card is inserted into the `Master` printer and *formatted as FAT32*.
* Go to the `Master printer's MicroSD card` menu.
<br> <img src=img/PandaTouch/micro_sd.png width="600"/>

* Panda Touch only supports files are sliced in `Build Plate #1` in Bambu Studio.
* Panda Touch only supports `.3mf` files and does not support `.gcode` files.
* Panda Touch only supports reading files in the root directory and does not support reading files in folders.
* The file list displayed in this menu is from the `Master` printer. If we want to print files from another printer, we can set the printer we want to print to as the `Master`.
* Just like the steps in [Start printing from USB flash drive](#start-printing-from-usb-flash-drive), select the printer to start printing.

###### Multiple printing
When a printer in the `sync` state is printing, or multiple printers in other states are printing at the same time, the Panda Touch will display the `Multiple printing` menu as shown below.
<br> <img src=img/PandaTouch/multi_printing.png width="600"/>
The following group controls exist from this menu:

* ①: Turn ON/OFF the chamber LED of the printer in the current print list.
* ②: Stop all print jobs in the current print list.
* ③: Pause/Resume all print jobs in the current print list.

### Feature requests

If there is something that you would like to see in a coming release of the Panda Touch firmware then please let us know by logging a feature request on the official Panda Touch github repo.

[Request a feature](https://github.com/bigtreetech/PandaTouch/issues)

### How to update firmware

#### OTA

* Download the firmware binary file (Download link in [Firmware History](#Firmware-History)) to the device being used to perform the update. This can be a computer or a mobile device running an OS such as iOS or Android. Hereafter it will be referred to as the "computer".
<br><img src=img/PandaTouch/firmware_download.png width="600"/>
* Connect the Panda Touch to the WiFi on the same LAN as the computer.
* Find the IP address of the Panda Touch from the `Network` menu.
<br><img src=img/PandaTouch/ip.png width="600"/>
* Enter the Panda Touch's IP address in the computer's browser to access the web UI, and then click "Update FW" button.
<br><img src=img/PandaTouch/ota_1.png width="600"/>
* Click the "Choose File" button, then select the downloaded firmware binary file. The Panda Touch will automatically start updating.
<br><img src=img/PandaTouch/ota_2.png width="600"/>
* After the update is completed, the Panda Touch will automatically restart and run the new firmware.
<br><img src=img/PandaTouch/ota_3.png width="600"/>

### How to update img file 
* When the img section of the new firmware changes,The ota will ask for updating the img file.
<br><img src=img/PandaTouch/ota_img_remind.png width="660"/>

* Download the img file to the device being used to perform the update. This can be a computer or a mobile device running an OS such as iOS or Android. Hereafter it will be referred to as the "computer".
<br><img src=img/PandaTouch/ota_img_download.png width="660"/>
* Enter the Panda Touch's IP address in the computer's browser to access the web UI, and then click "Update File" button.
<br><img src=img/PandaTouch/ota_img_1.png width="660"/>
* Click the "Choose File" button, then select the downloaded img file. The Panda Touch will automatically start updating.
<br><img src=img/PandaTouch/ota_img_2.png width="660"/>
* After the update is completed, the Panda Touch will automatically restart and run the new Img.
<br><img src=img/PandaTouch/ota_img_3.png width="660"/>

## Finding Your Connection Details

### P1P & P1S

* Navigate to "Settings->WLAN" on the LCD menu, and click "OK".
<br><img src=img/PandaTouch/p1_1.png width="600"/>
* Enter the IP and Access code into the corresponding Panda Touch input boxes (only Access code for automatic scanning).
<br><img src=img/PandaTouch/p1_2.png width="600"/>
* Find "Settings->Device" on the screen menu, and click "OK".
<br><img src=img/PandaTouch/p1_3.png width="600"/>
* Enter the SN code into the corresponding Panda Touch input boxes. 
<br><img src=img/PandaTouch/p1_4.png width="600"/>

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
