# Software Installation

## **· Raspberry PI CM4 Setup steps**

### **· Download OS Image**

<p>If CM4 core board is used, You can directly download the images of Fluidd or Mainsail, also can<br> download the OS image from the official website of<br>Raspberry Pi Fluidd: <a href="https://github.com/fluidd-core/FluiddPI/releases">https://github.com/fluidd-core/FluiddPI/releases</a><br> Mainsail: <a href="https://github.com/mainsail-crew/MainsailOS/releases">https://github.com/mainsail-crew/MainsailOS/releases</a> <br> Raspberry Pi official OS: <a href="https://www.raspberrypi.com/software/operating-systems">https://www.raspberrypi.com/software/operating-systems</a></a> <br>(CM4 needs to refer to the following system settings to enable the system's USB, DSI and other<br> interfaces, whose operation is slightly different from the standard Raspberry Pi 3B, 4B, etc.)<br></p>

Raspberry_Pi_OS

<img src=img/Raspberry_Pi_OS.png width="600"/>

​	Install the official Raspberry Pi Imager: https://www.raspberrypi.com/software/

### **· Write OS**

#### **· CM4 LITE Version (Micro SD Card)**

1. Plug the Micro SD card into the computer via a card reader

2. Select Operating System

<img src=img/Rasp1.png width="600" />

3. Select "Use Custom", then select a custom.img from your computer

<img src=img/Rasp2.png width="600" />



4. Click the setting icon in the lower right corner

<img src=img/Rasp3.png width="600" />

5. “Enable SSH”and click“SAVE”， There are other features that can be set in this menu. Please modify them according to your own needs. Details are as follows：

   **Set hostname: raspberrypi.local** //Custom hostname Default:raspberrypi.local Enable SSH

   **Set username and password** // Custom username and password，Default username: pi password：raspberry

   **Configure wireless LAN** // Custom the SSID and password of WLAN

<img src=img/Rasp4.png width="600" />

6. Select the Micro SD card and click "WRITE" (Writing the image will format the Micro SD card. Be careful not to select the wrong storage device, otherwise, the data will be formatted).

<img src=img/Rasp5.png width="600" />

7. Wait for the writing to finish.

<img src=img/Rasp6.png width="600" />

#### **· CM4 eMMC Version**

​	**(Note: eMMC version will not tun the system from the Micro SD card.)**

1. Install rpiboot

    For Windows:http://github.com/raspberrypi/usbboot/raw/master/win32/rpiboot_setup.exe
    
    For Mac and Linux:https://github.com/raspberrypi/usbboot#building

2. Push the DIP switch 4 (USB OTG) and 3 (BOOT) to ON to enter BOOT mode.

<img src=img/M4P/M4P_USB.png width="600" />

3. Plug the Type-C into the USB port of the computer(in order to avoid problems caused by the insufficient USB power supply of the computer, it is best to use an external 24V power supply to power the motherboard). Run **sudo ./rpiboot**(Mac/Linux) or rpiboot.exe on Windows, then the eMMC of CM4 will be recognized as a mass storage device by the computer (if rpiboot reports an error at this time, you can try to re-plug the USB).

4. The step of using the Raspberry Pi Imager to write the OS image is exactly the same as the LITE version. Note: the SSH function should also be enabled.

5. When the writing is completed, push the DIP switch 4 (USB OTG) and 3 (BOOT) back to OFF after power off, and power on again to enter the normal working mode.

## **· BIGTREETECH CB1 Setup steps**

### **· Download OS Image**

​	If BIGTREETECH CB1 core board is used, You can only download and install the system image provided by BIGTREETECH:https://github.com/bigtreetech/CB1/releases

### **· Download and Install Raspberry Pi Imager**

​	Install the official Raspberry Pi Imager: https://www.raspberrypi.com/software/ .The system image of CB1 can also be written with this software.

### **· Write OS Image**

1. Plug the Micro SD card into the computer via a card reader.
2. Select Operating System.

<img src=img/Rasp1.png width="600" />

3. Select "Use Custom", then select a custom.img from your computer.

<img src=img/Rasp2.png width="600" />

4. Select the Micro SD card and click "WRITE" (Writing the image will format the Micro SD card. Be careful not to select the wrong storage device, otherwise, the data will be formatted).

<img src=img/Rasp5.png width="600" />

5. Wait for the writing to finish.

<img src=img/Rasp6.png width="600" />