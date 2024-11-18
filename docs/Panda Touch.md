# Panda Touch
<img src=img/PandaTouch/panda_touch.png width="600"/>

The CAD files for the Panda Touch can be downloaded [here](https://github.com/bigtreetech/PandaTouch/tree/master/3D)

**Product Link:** https://biqu.equipment/products/bigtreetech-panda-touch-5-display-for-bambu-lab-printers

**Panda Touch Guide Video**

<video width="430" height="300" controls>
    <source src="img/PandaTouch/introduction.mp4" type="video/mp4">
</video>

## IMPORTANT NOTE

The Panda Touch is currently compatible with all Bambu Lab printer firmware versions up until:

* P1P --> v01.06.01.02
* P1S --> v01.06.01.02
* X1C --> v01.08.02.00
* A1 --> v01.03.01.02
* A1 Mini --> v01.03.01.02

It is possible that Bambu Lab may release a future firmware version that impacts the functions available on the Panda Touch. Bigtreetech will monitor all beta firmware versions, and if we find a firmware version that affects Panda Touch functionality, we will send out an alert via email, Aliexpress chat, and our social channels. Buyers can then decide whether or not they would like to perform the update at the risk of losing functionality. Note that the Panda Touch warranty does not cover lost functionality due to a Bambu Lab firmware update being performed.

## IMPORTANT USAGE INFORMATION

* When using "LAN Only" mode on a P1P or P1S, there is no need to connect the Panda Touch to a cloud account, and all printer functions will be available on the Panda Touch.
* When the printer is set to connect to the cloud, you will need to enable [cloud mode functionality](#cloud-mode-functionality) on the Panda Touch to retain the ability to control heaters and printing functions.
* Please check the firmware listing on the product page description to ensure that your printer firmware is compatible with the Panda Touch. Updating printer firmware to an incompatible version that may limit the functionality of the Panda Touch is not covered under the warranty.
* MicroSD card and USB drive files can currently only be read from the root directory and will only be recognized when models are sliced in Build Plate #1 in Bambu Studio and are in 3mf format. Folder browsing and thumbnail previews will come in a future firmware release.
* When running on its built-in lithium battery, the Panda Touch has a battery life of approximately 20 to 30 minutes, depending on the screen brightness. To maintain the battery and extend the lifespan of the product, it is advised to charge the Panda Touch or turn it off as soon as the battery runs out.
* The screen may flicker when the lithium battery is low on power. This flickering is normal and acts as a warning to users that the battery is almost empty. Users should then promptly charge the battery or turn off the Panda Touch.
* If you plan to turn your printer on and off frequently, we recommend running the Panda Touch on DC5V mode. This bypasses the battery and prevents it from going through many charge-discharge cycles. If you want to run off the battery, then simply flick the switch on the back of the Panda Touch to the battery power mode.

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
| Operating Current (charging) |  Screen active: 1.25A (0.95A for models after May 2024), Screen inactive: 0.85A  |
| Logic Voltage | 3.3V |
| Built-in Battery | Enables Panda Touch portable use for up to 30 minutes. |
| Charging Time | 1.2 hours |
| Expansion Interfaces | I2C (For temperature/humidity sensors supported in future firmware, etc.) <br> USB Drive (For reading 3mf files from USB drives - FAT32 only) |

## Assembly Instructions

### Overview

<img src=img/PandaTouch/pt_back.png width="600"/>

### Charging Dock

<img src=img/PandaTouch/charging_dock.png width="600"/>

* The power input has been outfitted with hot-plug protection, allowing users to hot-plug the power supply.

### Packing List

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

> TIP:
> Be 100% sure that you have threaded the cable into the clips to prevent the tool head from catching it during a homing sequence.

<br> <img src=img/PandaTouch/pt_2_3.png width="300"/>
* You have three options on the rear power switch. 
  * In the `OFF` position, the battery will charge but the Panda Touch will not be powered up.
  * When switched to the `battery` position, the USB will charge the battery and power the Panda Touch at the same time. If the Panda Touch is removed from the dock then the battery will take over and power it for up to 30 minutes. Upon being returned to the dock, the USB will once again resume charging and powering the Panda Touch. This mode is recommended for users who do not turn their printer on and off often. Note that there is no battery charge level indicator. The Panda Touch has been designed for brief periods of use away from a dock and not for prolonged mobile use.
  * When switched to the `DC 5V` position, the Panda Touch is powered directly from the USB input, while still charging the battery. Removing it from the dock will power it off without the Panda Touch draining the battery. This mode is recommended for users who often turn their printer on and off as it will preserve battery charge cycles. If such users wish to use the Panda Touch in a portable mode then they can flip the switch to battery power after removing it from the dock.
  <br> <img src=img/PandaTouch/pt_2_4.png width="300"/>
* Panda Touch has been successfully installed and powered on. Please follow the on-screen instructions for the next setup step.
<br> <img src=img/PandaTouch/pt_2_5.png width="300"/>

## User Interface Instructions

### First Time Connection Guide

You will be presented with the screen below after booting for the first time or after executing the `Restore Factory Settings` command.

#### Language Selection Guide

<img src=img/PandaTouch/language_guide.png width="600"/>

* Choose a language for Panda Touch and press `Next`

#### WiFi Connection Guide
&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/guide_wifi.png width="600"/>

* During the initial setup the Panda Touch will scan for WiFi networks and then display up to 20 networks with the best signal strength. If you cannot find your desired network in the list then tap `Refresh` and the Panda Touch will rescan for WiFi networks. 
> NOTE:
> The current version of firmware does not support connecting to hidden WiFi networks. Also, when the Panda Touch is connecting to WiFi, it cannot perform the WiFi scanning task at the same time.

* Click on the WiFi network that you would like to connect to in the list, and the [keyboard interface](#keyboard-interface) will pop up. After entering the correct password, click "OK" to start connecting to WiFi. (Password length: 8~64 characters)

> NOTE:
> If you are using a mesh network with several WiFi networks that share the same SSID then select the SSID with the strongest signal strength in the list.

* The connection status will be displayed next to the name of the WiFi network. A `Spinner` graphic means that WiFi is still attempting a connection, and a `✔` means the connection is successful.
* After the connection is successful, the `Next` button will be enabled. Click `Next` to enter the printer connection menu.

#### Printer Connection Menu

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/PandaTouch/guide_printer.png width="600"/>

* There are two possible methods to connect the Panda Touch to a printer.
   1. Automatic Scanning (recommended).
   2. Manual data entry.

#### Finding Your Connection Details

During this process you may need to enter connection details. These can be found using the steps below.

##### P1P & P1S

* Navigate to "Settings->WLAN" on the LCD menu, and click "OK".
<br><img src=img/PandaTouch/p1_1.png width="600"/>
* Here you will find the IP addess and access code (only Access code is needed for automatic scanning).
<br><img src=img/PandaTouch/p1_2.png width="600"/>
* Find "Settings->Device" on the screen menu, and click "OK".
<br><img src=img/PandaTouch/p1_3.png width="600"/>
* Here you will find the serial number of the printer. This is only needed for manual entry mode. 
<br><img src=img/PandaTouch/p1_4.png width="600"/>

##### Automatic Scanning

* For automatic scanning simply tap the `Scan` button. Bambu Lab printers that are on the same WiFi network will be displayed in the scan results with the `Name`, `Printer IP`, `SN` and `Model` information pre-populated. Pre-populating these fields helps to make adding printers easier and can result in fewer mistakes due to manual data input errors. The only data that you will need to enter is the `Access Code` which can be found within the printer WiFi/LAN menu. Instructions on how to find your access code will be displayed on the Panda Touch screen by tapping the info icon in the bottom left. Printers which have previously been connected to the Panda Touch will still be displayed in the scan results however the Panda Touch will not allow them to be added again and `Already added` will be displayed near to the printer icon. Once you have entered your access code you can confirm the connection or manually add some of the data below.

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
* There are 4 optional fields which may help you to identify certain parameters of the printer during later use.
  * `Model`: The model name identifies the exact model of the printer and defines what picture is associated with it. `P1P`, `P1S`, `X1C`, `A1 mini`, `A1`, or customized. (length: 0~15 characters)
  * `Filament Color`: The color of the filament used by the printer. (length: 0~6 characters)
  * `Filament Material`: The material of the filament used by the printer. (length: 0~6 characters)
  * `Nozzle Diameter`: The diameter of the nozzle used by the printer. (length: 0~6 characters)

* `Confirm` button
After filling in the `required` information, you can click the `Confirm` button to start connecting to the printer. The title bar of the Panda Touch will display the status of the connection.

### Cloud Mode Functionality

If any of your P1P/S printers are not set to `LAN Only` mode then you are going to need to enable cloud connectivity to them from the panda touch in order to control the functions below:
* Heating
* Starting prints
* Pausing prints
* Stopping prints

Follow the steps below to enable cloud connectivity to those printers that need it.

##### Add a Bambu Cloud Account
* Tap to jump to the settings page and then tap the `Login BambuLab account` button.

  <img src=img/PandaTouch/add_account.png width="600"/>
* Select your region by tapping the arrow at the top right of the resulting pop up.
* Users in China use mobile phone numbers, while users in global regions use email addresses.
* Press 'Send code' button to get code from email. 
  <br><img src=img/PandaTouch/login.png width="600"/>
* Tap the confirm button once you've entered the login details.

  > NOTE:
  > Currently, two factor authentication needs to be turned off in order to enable cloud mode on the Panda Touch. If you would like to keep it enabled then you can turn it off, enable cloud mode on the Panda Touch and then turn it back on. Note that you will likely need to repeat this process every three months as the login details will expire on the Panda Touch after that period.

  <br><img src=img/PandaTouch/input_account.png width="600"/>

##### Synchronize the printers under the account to the local device
* After a successful login, you can choose to convert the communication between all of your existing printers and Panda Touch to cloud mode.
* We recommend only converting all of the printers if all of your machines run using cloud mode. If any use LAN Only mode then it is better to manually set each machine to cloud mode as described in [How To Change Working Mode Between The Panda Touch and Printer](#how-to-change-working-mode-between-the-panda-touch-and-printer).

  <br><img src=img/PandaTouch/login_ok.png width="600"/> 

* If you want to convert your existing printers to cloud mode then tap "Yes". 
* During this process, the printers must be on the same network as the Panda Touch. In case of a poor network connection, you may need to re-edit the printer's IP address.

  <br><img src=img/PandaTouch/sync_ok.png width="600"/> 

* Once a printer works in cloud mode you will notice a green cloud associated with its card in the multi printer view. The cloud indicates the communication method between the printer and Panda Touch. 
* You will also notice a green arrow pair to indicate the connection status with that printer.

  <br><img src=img/PandaTouch/cloud_mode.png width="600"/> 

##### How to delete a account
* Click the "X" button in the upper right corner of the account information to delete the account information saved on Panda Touch. 
* After deleting the account information, the communication mode between Panda Touch and the printer will be changed to local mode. Note that this will not set the printer itself to `LAN Only` mode but rather it will tell the Panda Touch to only speak to the printer using LAN mode which may result in the loss of some functions.

  <br><img src=img/PandaTouch/del_account.png width="600"/> 

##### How To Change Working Mode Between The Panda Touch and Printer
* Navigate to the printer/group card page.
* Find the printer that you would like to enable or disable cloud connectivity for.
* Scroll down to the `Edit` button for that printer.
* Select `Enable cloud` to set that printer to clould connectivity mode.
> TIP
> You must have a cloud account entered into the settings menu otherwise you will not be able to set any printers to cloud mode.

<br><img src=img/PandaTouch/switch_work_mode.png width="600"/> 

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

### Display of Print Tasks and SD Card Thumbnails on the Home Screen
<br> <img src=img/PandaTouch/thumbnail_preview.png width="600"/>
 
> Note:
> Only displays print tasks initiated from Bambu Studio with .3mf files of size <=20MB. The X1 series printers do not support this feature.
> Thumbnail Mismatch: A mismatch will only occur if the timestamp of an image in the 'image' folder matches the timestamp of another print file.
> Enhanced loading thumbnails: There is a option for loading thumbnails in setting page, if you turn on this then it will bring a long delay for start printing from u-disk and do something from the sd-card panel.

### Filament Control

The Panda Touch allows users to configure the type and color of the filament being used on their external spool holder and their AMS. Users can also load and unload Filament using this menu.

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

### Grouping logic
The Panda Touch allows you to create up to 10 groups that can each contain individual or multiple printers.

#### How To Add A Group
* Tap + in the connected printer list to pop up the multi function menu.  

  <br><img src=img/PandaTouch/press_plus.png width="600"/>

* Choose the add group option.

  <br><img src=img/PandaTouch/press_add_group.png width="600"/>

* Choose the printers which you want add to the group and ensure that you select which one should be the leader (other printers in the group will follow the commands sent to the leader).
  <br><img src=img/PandaTouch/group_choose_printer.png width="600"/>

* Tap next, input the group name and click "OK".
  
  <br><img src=img/PandaTouch/group_name.png width="600"/>

* You now can see the group in the printer list, tapping this group will allow you to control the whole group but the controls presented will be those of the group leader.

#### Switch Between Group and Individual Printer Control
* To control an individual printer, simply click on the card that corresponds to it and you will notice the name in the top bar change to the name of that printer. You can now send commands to it in isolation even if it is part of a group.
* If you send a command to an individual printer that takes some time (such as homing) and then you send a command to a group that it belongs to, the second command will be ignored if the first is still busy.
* To control an entire group, simply click on the card that corresponds to that group and you will notice the name in the top bar change to the name of the group and the name of the leader, separated by a forward slash. You can now send commands to the leader and other printers in the group will follow.

  <br><img src=img/PandaTouch/add_group_ok.png width="600"/> 

#### Considerations For Printing From USB

When trying to print from USB, please take note of the important points below.

* Ensure that the file system of the USB flash drive is **formatted as FAT32**.
* Export the `.3mf` file from either Bambu Studio or Orca Slicer using the `Export plate sliced file` option. 

  <br> <img src=img/PandaTouch/export_3mf.png width="400"/>

* Write the sliced `.3mf` file to the root directory of the USB flash drive
  * Panda Touch only supports files that are sliced on `Build Plate #1` in Bambu Studio.
  * Panda Touch only supports `.3mf` files and does not support `.gcode` files.
  * Panda Touch only supports reading files in the root directory and does not support reading files in folders.
* Insert the USB flash drive into the Panda Touch, and then go to the `USB flash drive` menu.

  <br> <img src=img/PandaTouch/usb_flash_drive.png width="600"/>

#### Start Printing With One Printer

* Tap to choose the file on the USB disk or SD card to print.
* Set printing parameters. Depending on the printer, you may be presented with:
    * `Bed Leveling`
    * `Flow Calibration` (`P1P` and `P1S` do not have this feature, so these models of printers will not display this option.)
    * `Timelapse`
    * `Use AMS` (Panda Touch will automatically identify whether this printer has AMS plugged in and then determine whether this option needs to be displayed.)
    * `Auto Power-Off` (Automatically detects the online Panda PWR and enables the automatic power-off feature.)
    * `RST Usage` (Automatically detects the online Panda PWR and resets the power usage of Panda PWR)
  <br><img src=img/PandaTouch/start_print_one.png width="600"/>

* Please make sure that the sliced `.3mf` file is compatible with the selected printer.
* If using an AMS, please make sure that the filaments in the AMS tray are consistent with those in the sliced `.3mf` file as there is no ability to dynamically map filaments at the start of the print.

* If you started the print from USB then the Panda Touch will start to upload the files in the USB flash drive to the root directory of the printer's MicroSD card. To avoid issues with the upload, please ensure that:
  1. There is an MicroSD card inserted into the printer.
  2. The remaining capacity of the MicroSD card is sufficient to write the files to be uploaded.

  <br> <img src=img/PandaTouch/uploading.png width="600"/>

* Printing will begin once the upload is complete. For very large `.3mf` files the transfer time may take some minutes to each printer.

* After starting the print the Panda Touch will automatically jump to the main interface and display printer data.

  <br><img src=img/PandaTouch/start_print_one_ing.png width="600"/>

#### Group Printing

* Group printing is only supported with files stored on a USB disk.
* Tap to choose the file on the USB disk to print.
* Set printing parameters. Depending on the printers in the group, you may be presented with:
    * `Bed Leveling`
    * `Flow Calibration` (`P1P` and `P1S` do not have this feature, so these models of printers will not display this option.)
    * `Timelapse`
    * `Use AMS` (Panda Touch will automatically identify whether this printer has AMS plugged in and then determine whether this option needs to be displayed.)
    * `Auto Power-Off` (Automatically detects the online Panda PWR and enables the automatic power-off feature.)
    * `RST Usage` (Automatically detects the online Panda PWR and resets the power usage of Panda PWR)
* Tick box print options for a particular group will be based on the functionality available for the most functional machine in the group. For example, you are using a group which contains X1C\P1P\P1S, you will have the lidar scan option available but this option will only be sent to the printers in the group that support it.

  <br><img src=img/PandaTouch/start_print.png width="600"/>

* Panda Touch will generate a list of available printers for you choose from. 
* Printers and groups that are already busy will be excluded from this list. This means that if a single printer in a group is already busy then you will be unable to print to any printers in that group. This allows groups to always remain in sync with each other.

* Please make sure that the sliced `.3mf` file is compatible with the selected printer(s).
* If using an AMS, please make sure that the filaments in the AMS tray(s) are consistent with those in the sliced `.3mf` file as there is no ability to dynamically map filaments at the start of the print.

* The Panda Touch will start to upload the file in the USB flash drive to the root directory of the printer(s) MicroSD card. To avoid issues with the upload, please ensure that:
  1. There is an MicroSD card inserted into the printer(s).
  2. The remaining capacity of the MicroSD card is sufficient to write the files to be uploaded.

  <br><img src=img/PandaTouch/udisk_upload.png width="600"/>

* Printing will begin once the upload is complete. For very large `.3mf` files the transfer time may take some minutes to each printer.
  
  <br><img src=img/PandaTouch/group_printing.png width="600"/>

* After you start a print you will be taken to the print summary page where the status of each printer in the group is summarized on individual cards.

#### Group Printing Summary Page

When a group is selected and multiple printers in the group are busy printing, the Panda Touch will display the `Multiple printing` menu as shown below.

  <br> <img src=img/PandaTouch/multi_printing.png width="600"/>

The following group controls exist from this menu:

    ①: Turn ON/OFF the chamber LED of the printers in the group.

    ②: Stop all print jobs in the group.

    ③: Pause/Resume all print jobs in the group.

#### Group Printing Delay Function
The group printing is delayed based on this time, and if the current printer heats up or the time is up, the print job is sent to the next one.
<br> <img src=img/PandaTouch/group_delay.png width="600"/>

### Connecting with Panda PWR
#### Binding Panda Touch and Panda PWR
* Open the Panda PWR page<br><img src=img/PandaPWR/bind_before.png width="600"/>  
* Press and hold the "Bind" button until the blue light starts flashing (approximately 3 seconds).  
* Place the Panda Touch on the Panda PWR to establish the connection.
<img src=img/PandaPWR/ask_bind.png width="600"/>  

* After successful binding, the data of Panda PWR will be displayed on this page.
<img src=img/PandaPWR/bind_ok.png width="600"/>  

#### Unbinding from Panda PWR
* To bind Panda PWR to another device, unbind the current connection first.
<img src=img/PandaPWR/unbind.png width="600"/>    

#### Shutdown After Printing
Enable the automatic power-off feature to have the printer shut down automatically after printing. Set the countdown timer and temperature threshold; 
the countdown begins once conditions are met, and Panda PWR will cut off the power upon countdown completion.

* Activate the Automatic Power-Off
<br><img src=img/PandaPWR/start_auto_power_off.png width="600"/>

* The countdown starts automatically when the printer is online and the temperature reaches the set limit. The countdown pauses if conditions are not met and resumes once they are.
<br><img src=img/PandaPWR/auto_power_off_ing.png width="600"/>

#### Reset Power Usage
To reset the recorded power consumption data, click the "RST Usage" button.
<br><img src=img/PandaPWR/reset_usage.png width="600"/>

#### Hiding the Panda PWR Control Interface
* Navigate to the settings menu, tap on Panda PWR, and select 'Off'.
<br><img src=img/PandaTouch/hide_pwr.png width="600"/>

#### USB1 Follows Printer Lights
* Set to ON: USB1 will mimic the printer's LED status. When the LED is on, USB1 outputs 5V; when off, the output is disabled.
* Set to OFF: USB1 functions manually and does not respond to the printer's LED status.
<br><img src=img/PandaPWR/usb1_function.png width="600"/>

### Sorting Function for SD Cards and USB Drives
#### Sort by Name
Click "Name" to sort alphabetically from 'A' to 'Z' or reverse. Sorting by Chinese names is currently unsupported.
<br><img src=img/PandaTouch/sort_by_name.png width="600"/>

#### Sort by Date
Click "Date" to sort by date from newest to oldest or vice versa.
<br><img src=img/PandaTouch/sort_by_new.png width="600"/>

### Thumbnail Preview of USB Files
Click the icon in the lower right corner to switch to thumbnail view.
<br><img src=img/PandaTouch/to_thumbnail.png width="600"/>  
Click again to return to the file list view.
<br><img src=img/PandaTouch/thumbnail.png width="600"/>  
> Note:
> Only 3mf files generated by Bambu Studio are supported for thumbnail previews. If the thumbnail is not displayed correctly, consider re-slicing with Bambu Studio.

### File Folder Access for SD Cards and USB Drives
* Tap on a directory to switch to it
<br><img src=img/PandaTouch/change_dir.png width="600"/>  

* USB Drive
<br><img src=img/PandaTouch/udisk_folder.png width="600"/> 

* SD Card
<br><img src=img/PandaTouch/ftps_folder.png width="600"/>  

### Reprinting
#### Reprinting from the Home Screen
<img src=img/PandaTouch/reprint_home.png width="600"/>  

> Note: To reprint, ensure the file is stored in the default directory on the printer’s SD card (selectable between Cache or the root directory via Panda Touch settings).

#### Reprinting from History
<img src=img/PandaTouch/print_history.png width="600"/>  

### Change the Default Directory on the printer’s SD card 
<br><img src=img/PandaTouch/cache_root.png width="600"/>

### Adding New Languages 
<br><img src=img/PandaTouch/language_custom.png width="600"/>

* German (Deutsch)
<br><img src=img/PandaTouch/de.png width="600"/>  

* Spanish (Español)
<br><img src=img/PandaTouch/es.png width="600"/>  

* Japanese (日本語)
<br><img src=img/PandaTouch/ja.png width="600"/>  

### How To Change The Panda Picture

Use [this tool](https://pandatouch.us.kg/) to change the picture of the panda.
* Ensure that the firmware version of Panda Touch is 1.0.6 or above. 
* Please ensure that the image you want to replace meets the following requirements: 
  * Pixel width less than 280
  * Pixel height less than 306
  * Pixel depth 32-bit color
  * Image format PNG. 
* Upload the yml file if you need to replace the label on the UI of Panda Touch.
  * [Panda Touch UI Translation](https://github.com/bigtreetech/PandaTouch/tree/master/Translation)
<br><img src=img/PandaTouch/upload_new_panda.png width="600"/>  

* Click generate button. 
<br><img src=img/PandaTouch/generate_new_panda.png width="600"/> 

* Open the web ui from Panda Touch and update filesystem by this .img file. 

## Troubleshooting

### Connection Troubleshooting

#### Connect Failed

<img src=img/PandaTouch/mqtt_connect_failed.png width="600"/>

This prompt means that the Panda Touch cannot establish a connection with the printer. There are generally several which can cause this:

* The printer and Panda Touch are not on the same LAN - Check if the WiFi connected to the printer and Panda Touch is the same SSID. If not, connect them to the same SSID.

* The router restricts communication between devices within the LAN - This is usually the case when using the "guest" network of a wireless router. It is recommended to the devices to a normal WiFi network instead of a guest WiFi network.

* Incorrect printer IP address - The incorrect IP address was typed into the Panda Touch or the IP address of the printer has been changed by the router. Check that the IP address within the Panda Touch matches that of the printer. In a future firmware update, the Panda Touch will be able to automatically find and heal connections that have been broken due to the router changing the IP address of the printer.

* Incorrect printer SN code - An incorrect SN code was entered. Check that the SN of the printer matches that within the Panda Touch.

* Weak WiFi signal - Both the Panda Touch and printer have icons displaying WiFi signals, please try to ensure as strong a WiFi signal as possible.

#### Authentication Failed

<img src=img/PandaTouch/mqtt_login_failed.png width="600"/>

This prompt means that Panda Touch can establish a connection with the printer but authentication has failed. This is usually caused by an incorrect access code. Please check whether the printer's access code matches the set one. An incorrect access code are usually caused by the following:

* Input error.
* Clicking the refresh access code button on the printer resulting in the code changing.
* Enabling / Disabling the printer's LAN mode resulted in the printer generating a new access code.
* Exiting or logging back into the Bambu Lab account resulted in the printer generating a new access code.

## Firmware

### Feature requests

If there is something you would like to see in a future release of the Panda Touch firmware, please let us know by logging a feature request on the official Panda Touch Github repository.

[Request a feature](https://github.com/bigtreetech/PandaTouch/issues)

### How to update firmware

> Note:
> Updating versions V1.0.2 and above requires sending two files to Panda Touch. One is the firmware file (.bin) and the other contains the graphics and fonts (.img).  This will help us to add more languages to the Panda touch in the future. Be sure to download both the .bin and .img files.
 
#### Over The Air Updates

* Download the firmware binary file (Download link in [Firmware History](#firmware-history)) to the device being used to perform the update. This can be a computer or a mobile device running an OS such as iOS or Android. Hereafter it will be referred to as the "computer".

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

#### How to update img file 
* When the img section of the new firmware changes, the user interface will ask you to update the img file.

  <br><img src=img/PandaTouch/ota_img_remind.png width="660"/>

* Download the img file to the device being used to perform the update. This can be a computer or a mobile device running an OS such as iOS or Android. Hereafter it will be referred to as the "computer".

  <br><img src=img/PandaTouch/ota_img_download.png width="660"/>

* Enter the Panda Touch's IP address in the computer's browser to access the web UI, and then click "Update File" button.

  <br><img src=img/PandaTouch/ota_img_1.png width="660"/>

* Click the "Choose File" button, then select the downloaded img file. The Panda Touch will automatically start updating.

  <br><img src=img/PandaTouch/ota_img_2.png width="660"/>

* After the update is completed, the Panda Touch will automatically restart and be ready to run the latest firmware.

  <br><img src=img/PandaTouch/ota_img_3.png width="660"/>

### Firmware History
#### V1.0.6
##### New Features
- **Supports thumbnail display of print tasks and SD card on the home screen**: Only displays print tasks initiated from Bambu Studio with .3mf files of size <=20MB. Note: The X1 series printers do not support this feature.
- **Supports quick reprint from the home screen after printing completion**: The print file must be stored in the default directory on the printer's SD card (default directory can be set to Cache or root directory in Panda Touch settings).
- **Display and Initiate from Print History Records**: Currently supports displaying the latest 12 print records only.
- **Folder Directory Access**: Includes access for both SD card and USB drives.
- **Filament Management Interface**: Displays the currently loaded filament with a new UI closer to the official operating experience.
- **AMS Interface Humidity Display**: Displays a humidity icon and data in the bottom right corner.  
- **Expanded Filament Type Selection in Filament Management Interface**: Filament editing now synchronized with the types settable via the Handy APP.   
- **Group Printing Delay Function**: Allows delayed printing operations when initiating group printing via USB drive.
- **Hide Panda PWR Control Interface**: Option to enable/disable in Panda Touch settings.
- **Multilingual Display**: Currently supports German, Spanish, and Japanese. Each language uses a different .img file, selectable as the third language option. 

##### Functional Optimizations
- **Pre-Selection Options Before Printing**: The Auto Power-Off feature of Panda PWR is now by default set to off.
- **Optimization of New_Panda File Verification**: Device checks the file upon power-up to avoid update interruptions that could prevent startup.
- **Optimized Chamber Temperature Display Icon**.
- **Improved IMG File Generation**: New new_panda files can now be generated using the [online tool](https://pandatouch.us.kg/).

##### Bug Fixes
- **Fixed Access Code Data Synchronization Issue**: Discrepancies in Access code data retrieved from the cloud server can cause loss of SN data, making it impossible to connect to the printer.
#### [V1.0.5.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.5.1/panda_touch-v1.0.5.1.bin) 
* change the login method: login by email code.

#### [V1.0.5](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.5/panda_touch-v1.0.5.bin) 
* New Panda PWR Binding Mode for Intelligent Power Management of Bambu Lab Printers
  * Features a Panda PWR management interface to display printer power and energy consumption, with control over the. 
  * By equipping each printer with a Panda PWR, a single Panda Touch can manage the power for up to 10 printers. 
  * In the print initiation window of Panda Touch, you can access preset Panda PWR options for:
    * One-click activation for automatic shutdown post-printing, ensuring energy efficiency.
    * One-click reset for tracking electricity usage per print job.
  * Note: This feature requires the use of the BIGTREETECH Panda PWR product.
* New Sorting Feature for SD Card and USB Drive Filenames
  * Enhanced functionality to sort print files by name, simplifying file retrieval. 
* New USB Drive File Thumbnail Preview
  * Supports thumbnail displays for up to 24 3mf files, created by Bambu Studio, with options to toggle between list and thumbnail views for easy identification of print file contents.
* Optimized Button Sequence for Bed Leveling
  * Adjustments to the bed leveling buttons sequence align with the lifting logic of the P1/X1 series, enhancing intuitive operation.
* Enhanced WiFi Connection Experience
  * Improved WiFi setup: entering an incorrect password will not trigger an automatic reconnection, conserving processor resources.
* Corrected a display error in fan speed.
* Fixed a bug preventing the X1 series heated bed from reaching temperatures above 100℃.     

#### [V1.0.4.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.4.1/panda_touch-v1.0.4.1.bin)
* To fix the bug: Setting the nozzle material in versions prior to V1.0.4 causes a crash after upgrading to V1.0.4.

#### [V1.0.4](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.4/panda_touch-v1.0.4.bin)
* Added the ability to log in to the Bambu account on the settings page, supporting the addition of printers to enable cloud mode.Cloud mode means the communication method between the printer and Panda Touch. This resolves the issue of not being able to initiate printing and heating functions on Bambu P-series printers using the latest firmware via Panda Touch.
* Added the ability to switch locally added printers to cloud mode in Panda Touch.
* Added a WiFi automatic reconnection feature, which supports automatic connection to the strongest WiFi signal within the same SSID. This resolves the issue of not being able to automatically connect to the strongest same-name WiFi in Mesh networks. 
* Added the ability to sort print files stored on the printer's SD card and external USB drives connected to Panda Touch from newest to oldest.

> NOTE:
> We have removed this firmware. Please use the latest version of the firmware.

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

#### [V1.0.2](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.2/panda_touch-v1.0.2.bin)

* Add multi-language option, support chinese.

#### [V1.0.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.1/panda_touch-v1.0.1.bin)

* First released factory firmware.

The section below discusses how the logic of this firmware version worked. For the latest control logic please refer to the main sections of the user guide.

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

## Technical Support
Did this page help you? If you have any further questions about product usage or encounter other issues, please feel free to contact our after-sales email at service001@biqu3d.com.
