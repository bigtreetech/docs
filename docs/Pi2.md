# Pi2

<img src=img/Pi2/Pi2_Title.png width="600" />

## **Product Profile**

BIGTREETECH Pi 2 uses the higher performance quad-core A55-RK3566 chipset. It consists of rich interface functions, a built-in eMMC5.1, onboard support for 2.4G/5G dual-mode, and WiFi transmission speeds of up to 433.3Mbps. It also supports the Bluetooth BT5.2 version. It has the same mounting hole positions as the Raspberry Pi; therefore, installation and use are convenient and quick.

**Product Link:** https://biqu.equipment/products/bigtreetech-pi-2-cb2

## **Features Highlights**

* CPU: Rockchip RK3566, quad-core Cortex-A55 @1.8GHz
* GPU: Mali-G52 1-Core-2EE
* NPU: 0.8 TOPS NPU
* RAM: 2GB LPDDR4 (customizable: 1GB/2GB/4GB/8GB)
* Onboard eMMC 32GB (customizable: 8GB/32GB/64GB/128GB...)
* MIPI DSI display support (320P-1080P 60Hz)
* SPI Flash: Customizable W25Q256JWEIQ
* Dual-lane MIPI CSI-2 Camera Interface (320P-1080P 60Hz)
* 3x USB 2.0 ports, 1x USB 3.0 port
* PCIe 2.1 1x1 Lane (Supports M.2 2242 4PIN+5PIN)
* MicroSD card slot (SDIO2.0)
* Networking: Gigabit Ethernet, 433Mbps WiFi, BT 5.2
* Audio: 3.5mm jack to support mic input
* Capacitive mic input
* 40-pin GPIO header
* HDMI 2.0 OUT (480P-4K 60Hz)
* Onboard infrared receiver (38kHz)
* Same mounting hole positions as Raspberry Pi
* 24V DC power input

## **Specifications**

| **Dimensions**                | **93.8mm x 56mm**                                  |
| ----------------------------- | -------------------------------------------------- |
| **Installation Hole Spacing** | **58.2mm x 49.4mm**                                |
| **USB-C Input**               | **DC 5V±5%/2A**                                    |
| **Output Voltage**            | **3.3V±2%/100mA**                                  |
| **WiFi**                      | **2.4G/5G, 802.11 ac/a/b/g/n/ wireless standards** |
| **Bluetooth**                 | **5.2**                                            |

## **Dimensions**

<img src=img/Pi2/Pi2_Dimensions.png width="600" />

## **Peripheral Interface**

### Interface Diagram

<img src=img/Pi2/Pi2_Interface1.png width="600" />

<img src=img/Pi2/Pi2_Interface2.png width="600" />

## **Interface Introduction**

### Power Supply

Input:

·	UBS-C: DC 5V 2A 

·	Terminal Block: DC 12-24V

<img src=img/Pi2/Pi2_Power1.png width="600" />



### 40 pin GPIO

<img src=img/Pi2/Pi2_GPIO.png width="1200" />

The method for calculating GPIO pins is as follows:

GPIO4_B2 = (‘B’ - ‘A’) * 8 + 2 = 1 * 8 + 2 = gpiochip4/gpio10

GPIO3_D7 = (‘D’ - ‘A’) * 8 + 7 = 3 * 8 + 7 = gpiochip3/gpio31

### UPS POWER

<img src=img/Pi2/Pi2_UPS.png width="600" />

Specifications: PH-2.0MM-5Pin horizontal type, compatible with our company's SKSM emergency power supply board.(Need to crimp cables and terminals by oneself)

<img src=img/Pi2/Pi2_SPI.png width="600" />

Specification model: W25Q256JWEIQ (NOT included. If needed, please contact us for customization.)

### SPDIF OUT

<img src=img/Pi2/Pi2_SPDIF.png width="600" />

### eMMC-EN

Default position is OFF, which means the eMMC can be used normally. If you do not wish to boot from eMMC, switch the EMMC-EN position to ON. This will short the eMMC signal lines to GND and disable eMMC boot.

<img src=img/Pi2/Pi2_eMMC.png width="600" />

### OTG

To enable OTG mode, switch the OTG KEY to the ON position. (Note: The black USB 2.0 port will not function properly in this mode.)

<img src=img/Pi2/Pi2_OTG.png width="600" />

### MIC IN

<img src=img/Pi2/Pi2_MIC.png width="600" />

### DSI

<img src=img/Pi2/Pi2_DSI.png width="600" />

<img src=img/Pi2/Pi2_DSI1.png width="600" />

### CSI

<img src=img/Pi2/Pi2_CSI.png width="600" />

<img src=img/Pi2/Pi2_CSI1.png width="600" />

## **Flashing the System**

### Download the System Image

Only use the image provided in the link:

https://github.com/bigtreetech/CB2/releases

### Write System to MicroSD Card

1、Download the balenaEtcher software from [https://www.balena.io/etcher/], install, and run it.

2、Insert the MicroSD card via a card reader. 

3、Select your downloaded image.

<img src=img/Pi2/Pi2_System35.png width="600" />

4、Select the MicroSD card and click "Flash" (WRITE the image will format the MicroSD card. Be careful not to select the wrong storage device, otherwise the data will be formatted). 

<img src=img/Pi2/Pi2_System36.png width="600" />

5、Wait for the process to complete. 

<img src=img/Pi2/Pi2_System37.png width="600" />

### Writing System onto eMMC

#### Using RKDevTool to Write the eMMC (Windows)

Download and unzip RKDevTool from the GitHub repository (https://github.com/bigtreetech/CB2) to your computer. DO NOT insert aMicroSD card.

1、As shown in the diagram below, toggle the USB OTG switch to the ON position. At this position, the USB OTG port is connected to a Type-C port. Set the eMMC switch to the OFF position, allowing the RK3566 to access the eMMC normally.

<img src=img/Pi2/Pi2_System1.png width="600" />

2、Hold down the “Recovery” button, then connect the BIGTREETECH Pi 2 tothe computer using a Type-C cable. Power on and after 3 seconds, release the button.

<img src=img/Pi2/Pi2_System2.png width="600" />

3、 Install the driver:

① In “Device Manager”, if you see “Unknown Device”, it indicates that the computer is missing drivers.

<img src=img/Pi2/Pi2_System3.png width="600" />

② Open the DriverAssistant tool in the downloaded RKDevTool folder, click “① Uninstall Driver”, then click “② Install Driver” to ensure that the latest version of the driver is installed.

<img src=img/Pi2/Pi2_System4.png width="600" />

③ After the installation is complete, hold down the “Recovery” button, replug the Type-C cable. "Device Manager" should now recognize a “Rockusb Device”, indicating that the driver installation is successful.

<img src=img/Pi2/Pi2_System5.png width="600" />

4、Open the “RKDevTool” software：

<img src=img/Pi2/Pi2_System6.png width="600" />

**Note:** The parameters in the software are set by default as shown in the image. Normally, you only need to set the “④ actual path of the .img system”. If the parameters in your software do not match those in the image, manually adjust them to match.

<img src=img/Pi2/Pi2_System7.png width="600" />

① Find the path where the downloaded RKDevTool is located.

② Open the RKDevTool tool.

③ The software will recognize a “LOADER” or “MASKROOM” device.

④ Select the system to be written (the OS image must be unzipped as a .img file beforehand; RKDevTool does not support directly writing compressed .xz files).

⑤ Check “Write by Address”.

⑥ Click “Run” to start writting the system.

⑦ “Download image OK” indicates that the system has been successfully burned.

5、After writing is complete, toggle the USB OTG switch to the OFF position to boot normally. Note: Files on the eMMC cannot be accessed by the computer like those on a MicroSD card, so you cannot modify the system.cfg configuration file to set up the WiFi network. Instead, use an Ethernet cable or USB-to-UART connection to configure the terminal.

#### Writing System onto eMMC Using a MicroSD Card

As shown in the figure, toggle the eMMC switch to the OFF position so that the RK3566 can access the eMMC normally.

<img src=img/Pi2/Pi2_System8.png width="600" />

First, write the system onto a MicroSD card, then insert the MicroSD card into the board's card slot, and wait for the system to boot. 

Connect to the system's terminal via Ethernet, WiFi, or USB to UART. Log in with the following credentials:

login: `biqu`

password: `biqu`

Execute the command sudo nand-sata-install. In the interface that pops up, select "2 Boot From eMMC - system on eMMC" and then select "OK"

<img src=img/Pi2/Pi2_System9.png width="600" />

① Select "Yes" to start erasing and writing the system onto the eMMC.

<img src=img/Pi2/Pi2_System10.png width="600" />

② Choose the filesystem "1 ext4" and then select "OK".

<img src=img/Pi2/Pi2_System11.png width="600" />

③ Wait for the writing process to complete.

<img src=img/Pi2/Pi2_System12.png width="600" />

④ Upon completion, you will be prompted whether to power off. Select “Power off” to shut down the system.

<img src=img/Pi2/Pi2_System13.png width="600" />

⑤ After the system has powered down, disconnect the power supply, remove the MicroSD card, and then reconnect power. The system should now boot from the eMMC.

### Erasing eMMC

When using a MicroSD card as the system card instead, it's best to erase the data on the eMMC to prevent the motherboard from booting from it by mistake.

#### Using RKDevTool to Erase eMMC (Windows)

1、Refer to the steps in "4.3.1 Using RKDevTool to Write the eMMC (Windows)" to connect the motherboard to the computer.

2、Open the "RKDevTool".

<img src=img/Pi2/Pi2_System14.png width="600" />

① Find the path where the downloaded RKDevTool is located.

② Open the RKDevTool.

③ The software will recognize a "LOADER" device. If it recognizes "MASKROOM," it indicates there is no data in the eMMC, hence no erase operation is necessary.

④ Click "Advanced Function."

⑤ Click "EraseAll" to begin erasing data from the eMMC.

⑥ "Erasing sectors success" indicates the erasure is complete.

#### Erasing eMMC After Booting from MicroSD Card

1、Refer to the steps in "4.3.2 Writing System onto eMMC Using a MicroSD Card" and log into the system terminal. 

2、Run the command sudo mkfs /dev/mmcblk1 and then enter "y" to confirm. 

<img src=img/Pi2/Pi2_System15.png width="600" />

## **System Configuration**

### Using Ethernet

Ethernet is plug-and-play and requires no additional setup.

### Setting Up WiFi

After the system image has been written, the MicroSD card will have a FAT32 partition recognized by the computer. In this partition, there is a "system.cfg" file. Open it and replace "Your SSID" with your actual WiFi name and "YourPassword" with the actual password.

<img src=img/Pi2/Pi2_System16.png width="600" />

### Configuring Overlays

Open the "armbianEnv.txt" file in the BOOT partition and set the values for overlays. The configuration file supports only one line of overlays at a time; if multiple overlays are enabled, only the last line will take effect. If you need multiple overlays, place the contents of multiple configurations on the same line separated by a space. For example, if you need to use a DSI screen, MCP2515 SPI to CAN module, and I2C1 simultaneously:

<font  color="blue">**overlays=dsi mcp2515 i2c1**</font>

<img src=img/Pi2/Pi2_System17.png width="600" />

### Configuring the Display

1、Open the "armbianEnv.txt" file in the BOOT partition.

<img src=img/Pi2/Pi2_System18.png width="600" />

2、The default overlay is set to "hdmi," meaning the system uses an HDMI screen by default. This can be changed to match the actual screen being 
used, such as:

· "hdmi": [HDMI screen](https://biqu.equipment/collections/lcd/products/bigtreetech-hdmi5-v1-0-hdmi7-v1-0)

· "dsi": [DSI screen](https://biqu.equipment/collections/lcd/products/bigtreetech-pi-tft43-v2-0-screen-board)

· "tft_35": [SPI Screen](https://biqu.equipment/collections/lcd/products/bigtreetech-tft35-spi-v2-1-touchscreen-io2can-module)

· 

For "tft_35", there is also a "tft35_spi_rotate" parameter for system-level screen rotation, with default "0" meaning no rotation, other options include "90", "180", "270".

**Note:** Only one screen type can be used at a time. 

3、To configure KlipperScreen, open the `system.cfg` file in the BOOT partition. Set the screen type with the parameter `ks_src`, and the rotation angle with `ks_angle`.

<img src=img/Pi2/Pi2_System19.png width="600" />

### Using SPI to CAN

Open the "armbianEnv.txt" file in the BOOT partition and add "mcp2515" to the overlays configuration.

<img src=img/Pi2/Pi2_System20.png width="600" />

### Using CSI Camera and Crowsnest Configuration

For both RPi v1.3 ov5647 and RPi v2 imx219 cameras, no specific configuration in "armbianEnv.txt" is required as they are plug-and-play. "crowsnest.conf" file configuration is as follows:

<font  color="blue">**device: /dev/video0**</font> # The CSI camera node is fixed as video0

<font  color="blue">**custom_flags: --format=UYVY**</font> # The current system's CSI camera does not support the default YUYV, so it needs to be set to the supported UYVY format.

<img src=img/Pi2/Pi2_System21.png width="600" />

### Using Bluetooth

1、 To scan for Bluetooth devices, enter the following command, and a list of Bluetooth devices will appear as shown below:

<font  color="blue">**bluetoothctl --timeout 15 scan on**</font>

<img src=img/Pi2/Pi2_System22.png width="600" />

2、Find your Bluetooth device, for example, if your device name is "HONOR xSport PRO", locate the corresponding Bluetooth MAC ID as shown below.

<img src=img/Pi2/Pi2_System23.png width="600" />

3、To connect to a Bluetooth device, enter the following command, connection success is shown as below 

<font  color="blue">**bluetoothctl connect E0:9D:FA:50:CD:4F**</font>

<img src=img/Pi2/Pi2_System24.png width="600" />

① If there's an issue while connecting, as shown below, please restart the Bluetooth device and repeat steps 1 and 2 to connect.

<img src=img/Pi2/Pi2_System25.png width="600" />

② If there's an issue while connecting, as shown below, please enter the following commands and then repeat steps 1 and 2:

<font  color="blue">**bluetoothctl remove E0:9D:FA:50:CD:4F**</font>  <font  color="red">**(Your Bluetooth device's corresponding MAC ID)**</font>

<font  color="blue">**rfkill block bluetooth**</font>

<font  color="blue">**sleep 3s**</font>

<font  color="blue">**rfkill unblock bluetooth**</font>

<font  color="blue">**pulseaudio -k**</font>

<font  color="blue">**pulseaudio –start**</font>

<img src=img/Pi2/Pi2_System26.png width="600" />

4、If you exit voice playback during the use of Bluetooth and cannot reuse it, manually delete the corresponding playback process. Use the ps command to view the process number, then use kill -9 process_number to delete the corresponding playback process.

<img src=img/Pi2/Pi2_System27.png width="600" />

### Setting up 3.5mm Headphones Port

1、Enter the command: <font  color="blue">**aplay -l**</font>

Check for the corresponding sound card, as shown in the image (the sound card for the headphone port shown in the image corresponds to <font  color="blue">**card 0**</font>).

<img src=img/Pi2/Pi2_System28.png width="600" />

2、Enter the command:

<font  color="blue">**amixer -c 0 contents**</font>	(0 represents the <font  color="blue">**card 0**</font> found in the previous <font  color="blue">**aplay -l**</font> command)

Check the settings for playback and recording channels, as shown in the image.

<img src=img/Pi2/Pi2_System29.png width="600" />

3、Enter the command:

<font  color="blue">**amixer -c 0 cset numid=1 3**</font>

Set the playback channel, as shown in the image.

<img src=img/Pi2/Pi2_System30.png width="600" />

4、 Enter the command:

<font  color="blue">**amixer -c 0 cset numid=2 1**</font>

Set the recording channel, as shown in the image.

<img src=img/Pi2/Pi2_System31.png width="600" />

5、Enter the following command to play audio, with the audio file directory xxx and the audio file name xxxxx.wav:

<font  color="blue">**aplay -D plughw:0,0 /xxx/xxxxx.wav**</font>

6、Enter the following command to record (where 10 represents recording for 10 seconds), storing the recording in directory xxx, file name xxxx.wav:

<font  color="blue">**sudo arecord -Dhw:0,0 -d 10 -f cd -r 44100 -c 2 -t wav /xxx/xxxx.wav**</font>

7、Enter the following command to play the recording:

<font  color="blue">**aplay -D plughw:0,0 /xxx/xxxx.wav**</font>

## **SSH Connect to Device**

1、Install the SSH software Mobaxterm: 

https://mobaxterm.mobatek.net/download-home-edition.html

2、After powering on, wait for the system to boot, which typically takes about 1 to 2 minutes.

3、Once the device is connected to WiFi or an Ethernet cable is plugged in, it will automatically be assigned an IP address.

4、Access the router management interface to find the device's IP (it should be BTT-CB2 here).

<img src=img/Pi2/Pi2_System32.png width="600" />

5、Open Mobaxterm and click "Session", and click "SSH", inset the device IP into Remote host and click "OK" (Note: your computer and the device needs to be in the same network).

<img src=img/Pi2/Pi2_System33.png width="600" />

6、Login as: `biqu` password: `biqu`

<img src=img/Pi2/Pi2_System34.png width="600" />

## **Precautions**

1、About 10 seconds after powering on, the system enters the kernel phase. At this time, the blue light stays on, and the green light flashes continuously, indicating that the system is running normally.

2、Root administrator:

​		Login: `root`

​		Password: `root`



​	BIQU user:

​		Login: `biqu`

​		Password: `biqu`

3、The PCIe M.2 interface does not support hot-plugging; the solid-state drive must be connected in advance for the device to be recognized.

4、When booting from eMMC, do not insert a MicroSD card. When booting from a MicroSD card, it is necessary to erase the data in the eMMC.



**Navigation:**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/

