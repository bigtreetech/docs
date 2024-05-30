# SKSM

<img src=img/SKSM/SKSM_Title.png width="600" />

## **Product Profile**

The SKSM is an external module for 3D printers that features the ability to save data in the event of a power outage. It is suitable for 3D printers that use 12-24V DC power supplies and are equipped with Klipper firmware, such as the Ender 3. 

**Product Link:** https://biqu.equipment/products/bigtreetech-sksm-v1-0

## **Features Highlights**

- Smart Power Outage Detection: It has a high-sensitivity MCU chip that can quickly detect power losses.
- Backup Power: Equipped with two 2.7V 20F supercapacitors, it ensures your printer has enough power to save your work during an outage.
- Safe Power Input: Comes with reverse polarity protection to safeguard against wrong connections, thus protecting your printer’s circuit board.
- Compact Design: Its small size makes installation simple and hassle-free.
- Power Output: Offers a Type-C output with +5V/2A power.
- Main Function: Its primary role is to enable saving your print data during power outages.

## **Specifications**

| **Size**                 | **40.8mm x 32.9mm**                                          |
| ------------------------ | ------------------------------------------------------------ |
| **Input Power**          | **DC12-24V**                                                 |
| **Outputs**              | **BAT +5V/2A**                                               |
| **Outputs**              | **USB +5V/2A**                                               |
| **Charging Time**        | **100 seconds (starting from power on).**                    |
| **Battery Output Power** | **5W with a discharge time of 13 seconds (please be aware of the load power).** |
| **Compatibility**        | **3D printers using Klipper firmware and powered by DC 12-24V (such as the Ender 3).** |

## **Dimensions**

<img src=img/SKSM/SKSM_Dimensions.png width="600" />

## **Powering Up**

When the SKSM is powered on, the red LED in the upper left corner (which flashes for 15 seconds when the capacitors are completely discharged) indicates its status. The red light flashes during charging, and once the BAT+5V begins to discharge normally, the red light stays on continuously.

<font  color="red">**Note: It’s designed for DC12-24V input only. Always check the polarity before connecting, and connect only when the power is off. Incorrect connections are not covered under warranty.**</font>

## **Connecting to Your Printer**

The SKSM uses a XH2.54mm 5P cable for communication with the printer’s mainboard. Make sure the "PB0 PB1 PB2" signal lines are correctly connected; otherwise, the power outage save feature won’t work.

<img src=img/SKSM/SKSM_Connection.png width="600" />

<img src=img/SKSM/SKSM_Connection1.png width="600" />

**Pin Description**

1、PB0 SKSM (INPUT PIN): Input detection, high level active. Receives a high-level signal from the host.

2、PB1 (OUTPUT PIN): Outputs a low-level signal when power is lost; when the host detects this signal, data is synchronized and the system will shut down.

3、PB2 (OUTPUT PIN): Outputs a low-level signal to reset the host if power is restored during a power outage. The host must support this feature (Please refer to Point 3 in the **5. Precautions**).

### SKSM + BIGTREETECH Pi V1.2 Wiring

<img src=img/SKSM/SKSM_Wiring.png width="600" />

<font  color="red">**Note: The +5V at the 2.54mm socket is for emergency power output only and should not be used for regular power supply. Please use USB-C for power supply.**</font>

### SKSM + Raspberry Pi Wiring

<img src=img/SKSM/SKSM_Wiring1.png width="600" />

<font  color="red">**Note: The +5V at the 2.54mm socket is for emergency power output only and should not be used for regular power supply. Please use USB-C for power supply.**</font>

### SKSM + BIGTREETECH Pi 2 V1.0.1 Wiring

<img src=img/SKSM/SKSM_Wiring2.png width="600" />

### SKSM + Manta Series Board Wiring

<img src=img/SKSM/SKSM_Wiring3.png width="600" />

## **System Configuration**

### Usage for BIGTREETECH Pi V1.2

1、Access BIGTREETECH Pi V1.2 by entering its IP address in remote login software.

2、Send the command: sudo nano /boot/boardEnv.txt

3、Modify according to the diagram shown.

<img src=img/SKSM/SKSM_System.png width="600" />

4、After making the changes, save with Ctrl + S, exit with Ctrl + X (or directly Ctrl + X to exit, press Y to confirm the changes, and press Enter to save), then type sudo reboot to restart the host machine.

### Usage for BIGTREETECH Pi 2:

1、Access BIGTREETECH Pi 2 by entering its IP address in remote login software.

2、Send the command: sudo nano /boot/armbianEnv.txt

3、Enable the content shown in the picture.

<img src=img/SKSM/SKSM_System1.png width="600" />

4、After making the changes, save with Ctrl + S, exit with Ctrl + X (or directly Ctrl + X to exit, press Y to confirm the changes, and press Enter to save), then type sudo reboot to restart the host machine.

### Usage for Raspberry Pi

For Raspberry Pi, the procedure is similar. Insert the Micro SD card with the OS image into the computer. Add the following line to the config.txt file: <font  color="blue">**dtoverlay=gpio-shutdown,gpio_pin=21**</font>.Then save and exit.


## **PRECAUTIONS**

<font  color="red">**1、The module detects when the DC12-24V power supply is cut off and can maintain a 5V output for up to 15 seconds. The load capacity during this time is 5V-1A.**</font>

2、When using the BIGTREETECH Pi 2 with the SKSM, please use a 12V-24V power supply. Do not use a TYPE-C 5V power supply. (To ensure the normal operation of the module, the 5V output voltage inside the SKSM board must not be lower than 4.9V. Otherwise, the SKSM will draw power from internal boosting, and the capacitor will remain in a charging state, causing the module to continue heating up.)

3、The reset pin on the SKSM can be connected to a master computer with power reset capabilities, such as the BIGTREETECH Pi 2, Raspberry Pi 4 Model B. (If the reset wire is not connected, and the power drops and then is restored quickly, the host computer will still enter standby and will not restart automatically; a manual restart of the host computer is required).
