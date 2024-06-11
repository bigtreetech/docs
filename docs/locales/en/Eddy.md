# Eddy

<img src=img/Eddy/Eddy_Title.png width="600" />

**Product Link:** https://biqu.equipment/products/bigtreetech-eddy

***Eddy Guide Video***

<video width="500" height="300" controls>
    <source src="img/Eddy/installationen.mp4" type="video/mp4">
</video>



## **Features Highlights**

- Compact size and lightweight;
- Equipped with temperature compensation;
- Highly efficient leveling;
- Broad application, strong compatibility;
- High precision, strong stability;
- Non-contact operation.

## **Specifications**

| **Name**                  | **Eddy**                                                     |
| ------------------------- | ------------------------------------------------------------ |
| **Weight**                | **6g**                                                       |
| **Voltage**               | **5V**                                                       |
| **Static Current**        | **30mA**                                                     |
| **Operating Current**     | **30mA**                                                     |
| **Cable Length**          | **2.5 m (USB Version), 15 cm (Coil Version)**                |
| **Connection**            | **USB: 4-pin, 1.5mm pitch**                                  |
|                           | **Coil: 4-2.54mm DuPont female header, one end with ZH1 5mm 4P connector** |
| **Operating Temperature** | **≤60℃ Ambient**                                             |
| **Standard Error**        | **0.5μm**                                                    |
| **Compatible Models**     | **All FDM printers using the Klipper firmware**              |

## **Dimensions**

<img src=img/Eddy/Eddy_Dimensions.png width="600" />

<font  color="red">**Note: When installing Eddy, ensure the bottom is at least 1-2 mm above the nozzle.**</font>

The coil center point is as follows:

<img src=img/Eddy/Eddy_Dimensions1.png width="600" />

## Instructions for the BOOT Button

<img src=img/Eddy/Eddy_Instructions.png width="600" />

<font  color="red">**Note: Only Eddy V1.0 has the BOOT function; the button on Eddy Coil V1.0 is non-functional.**</font>

## **Installation Guide**

### Example using Voron 2.4

Installation replaces the original PL-08N position.

Use two M3*25 screws (included in the package) to secure the Eddy to the X Carriage as shown in the diagram.

<img src=img/Eddy/Eddy_Installation1.png width="600" />

<img src=img/Eddy/Eddy_Installation2.png width="600" />

### Eddy + Manta M5P

<img src=img/Eddy/Eddy_Connection.png width="600" />

### Eddy + Manta M8P V2.0

<img src=img/Eddy/Eddy_Connection1.png width="600" />

### Eddy Coil + EBB36 V1.2

<img src=img/Eddy/Eddy_Connection2.png width="600" />

### Eddy Coil + EBB42 V1.2

<img src=img/Eddy/Eddy_Connection3.png width="600" />

## **Firmware**

### Important Notes

1、Klipper has not yet merged the pull request for fast scanning. Until then, please use the BIGTREETECH version of Klipper by running the following commands in your SSH terminal:

<font  color="blue">**cd ~/klipper/**</font>

<font  color="blue">**git remote add eddy** https://github.com/bigtreetech/klipper</font>

<font  color="blue">**git fetch eddy**</font>

<font  color="blue">**git checkout eddy/eddy**</font>

Then, restart the Klipper with:

<font  color="blue">**sudo systemctl restart klipper**</font>

2、When Eddy performs temperature compensation, the heated bed temperature can be high. Please be cautious to avoid burns.

### Compiling Firmware

<font  color="red">**For the USB version, update the firmware of the MCU built into Eddy. For the coil version, update the firmware of the MCU connected to the motherboard.**</font>

1、After SSH connects to Raspberry Pi, enter the following in the command line:

<font  color="blue">**cd ~/klipper/**</font>

<font  color="blue">**make menuconfig**</font>

Compile the firmware using the configuration below

<img src=img/Eddy/Eddy_System1.png width="600" />

<font  color="blue">**[*] Enable extra low-level configuration optionsMicro-controller**</font>

<font  color="blue">**Micro-controller Architecture (Raspberry Pi RP2040) --->**</font>

<font  color="blue">**Bootloader offset (No bootloader) --->**</font>

<font  color="blue">**Flash chip (W25Q080 with CLKDIV 2) --->**</font>

<font  color="blue">**Communication interface (USB) --->**</font>

<font  color="blue">**USB ids --->**</font>

<font  color="blue">**() GPIO pins to set at micro-controller startup**</font>

2、After configuring, enter ‘q’ to exit the configuration interface. When asked to save configuration, select ‘Yes’.

3、Enter make to compile the firmware. When make is completed, the required klipper.uf2 firmware will be generated in the home/pi/klipper/out folder and can be directly downloaded to the computer on the left side of the SSH software. 

<img src=img/Eddy/Eddy_System2.png width="600" />

### Update Firmware via Computer

1、Press and hold the Boot button, then connect Eddy to your computer's USB port using a USB cable.

<img src=img/Eddy/Eddy_System3.png width="600" />

2、Once recognized as a storage device, copy the downloaded klipper.uf2 to it. Eddy will automatically update its firmware and restart. The update is complete after the restart.

<img src=img/Eddy/Eddy_System4.png width="600" />

### Update Firmware via DFU

1、Press and hold the Boot button, then connect Eddy to the USB port of your Raspberry Pi/BIGTREETECH Pi using a USB cable.

<img src=img/Eddy/Eddy_System5.png width="600" />

2、In the SSH terminal, run the command lsusb to query the DFU device ID.

<img src=img/Eddy/Eddy_System6.png width="600" />

3、Run:

<font  color="blue">**cd ~/klipper**</font>

<font  color="blue">**make flash FLASH_DEVICE=2e8a:0003**</font>

to start writing the firmware (Note: Replace 2e8a:0003 with the actual ID of the device obtained in the previous step).

4、Once firmware writing is complete, run the following to query the ID for USB communication:

<font  color="blue">**ls /dev/serial/by-id/**</font>

This ID can also be located in Mainsail.

<img src=img/Eddy/Eddy_System7.png width="600" />

### Klipper

#### Configuration for USB Version

Configure Eddy in printer.cfg:

<font  color="blue">**[mcu eddy]**</font>

<font  color="blue">**serial: /dev/serial/by-id/ **</font><font  color="red">**(Refer to the actual ID found in SSH or Mainsail using the method above)**</font>

<font  color="blue">**[temperature_sensor btt_eddy_mcu]**</font>

<font  color="blue">**sensor_type: temperature_mcu**</font>

<font  color="blue">**sensor_mcu: eddy**</font>

<font  color="blue">**[probe_eddy_current btt_eddy]**</font>

<font  color="blue">**sensor_type: ldc1612**</font>

<font  color="blue">**z_offset: 1.0**</font> **# Set to a non-zero value**

<font  color="blue">**i2c_mcu: eddy**</font>

<font  color="blue">**i2c_bus: i2c0f**</font>

<font  color="blue">**x_offset: 0**</font>	**\# Set actual offset relative to nozzle**

<font  color="blue">**y_offset: 20**</font>	**\# Set actual offset relative to nozzle**

<font  color="blue">**data_rate: 500**</font>



<font  color="blue">**[temperature_probe btt_eddy]**</font>

<font  color="blue">**sensor_type: Generic 3950**</font>

<font  color="blue">**sensor_pin: eddy:gpio26**</font>

<font  color="blue">**horizontal_move_z: 2**</font>



<font  color="blue">**[bed_mesh]**</font>

<font  color="blue">**horizontal_move_z: 2**</font>

**\# Configure other parameters as needed**



#### Configuration for Coil Version

**Configure Eddy Coil in printer.cfg:**

<font  color="blue">**[probe_eddy_current btt_eddy]**</font>

<font  color="blue">**sensor_type: ldc1612**</font>

<font  color="blue">**z_offset: 1.0**</font>	**\# Set to a non-zero value**

<font  color="blue">**i2c_mcu: EBBCan**</font>	**\# MCU name of the actual board connected to Eddy Coil**

<font  color="blue">**i2c_bus: i2c3_PB3_PB4**</font>	**\# I2C bus actually connected to Eddy Coil**

<font  color="blue">**x_offset:0**</font>	**\# Set actual offset relative to nozzle**

<font  color="blue">**y_offset: 20**</font>	**\# Set actual offset relative to nozzle**

<font  color="blue">**data_rate: 500**</font>



<font  color="blue">**[bed_mesh]**</font>

<font  color="blue">**horizontal_move_z: 2**</font>

**# Configure other parameters as needed**

**\# The coil version does not have a built-in thermistor, so there is no need to configure temperature_probe**



#### bed_mesh Configuration

<font  color="blue">**[bed_mesh]**</font>

<font  color="blue">**speed: 50**</font>

**\# X and Y movement speed during calibration (mm/s)**

<font  color="blue">**horizontal_move_z: 2**</font>

**\# Height (in mm) to which the head is moved before starting the scanning operation**

<font  color="blue">**mesh_min: 10, 10**</font>

**\# For rectangular beds, defines the minimum X, Y coordinates of the grid. This coordinate is relative to the Eddy's location. This will be the first scanning point, closest to the origin. This parameter must be provided for rectangular beds.**

<font  color="blue">**mesh_max: 220, 220**</font>

**\# For rectangular beds, defines the maximum X, Y coordinates of the grid. Following the same principle as mesh_min, but this will be the scanning point farthest from the bed origin. This parameter must be provided for rectangular beds.**

<font  color="blue">**probe_count: 5, 5**</font>

**\# For rectangular beds, this is a pair of comma-separated integers X, Y, defining the number of points probed along each axis. A single value is also valid, in which case the value will be applied to both axes.**

**Refer to** https://www.klipper3d.org/Config_Reference.html#bed_mesh

<font  color="red">**The parameter `horizontal_move_z` in [bed_mesh] should be set to 2 to bring Eddy as close to the bed as possible during scanning. **</font>

#### Calibration

1、After the above configuration is completed, first calibrate the drive current of Eddy. Position Eddy about 20mm above the platform.

Execute in Mainsail's Console:

<font  color="blue">**LDC_CALIBRATE_DRIVE_CURRENT CHIP=btt_eddy**</font>

Save the settings with ‘SAVE_CONFIG’.

2、Calibrate the relationship between Eddy frequency and Z-axis height. First, home the X and Y axes: <font  color="blue">**G28 X Y**</font>

Center the nozzle: (ensure there is no height map activated during this step).

<font  color="blue">**G0 X150 Y150 F6000**</font>

Perform manual z-offset calibration <font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>:

<font  color="blue">**PROBE_EDDY_CURRENT_CALIBRATE CHIP=btt_eddy**</font>

Save the settings with ‘SAVE_CONFIG’.

<img src=img/Eddy/Eddy_System8.png width="600" />

3、For printers with z_tilt or quad_gantry_level (QGL) function, run <font  color="blue">**Z_TILT_ADJUST or QUAD_GANTRY_LEVEL**</font> once to prevent the nozzle from hitting the heated bed during grid scanning.

4、At this point, you can home all axes, then execute the following command for rapid grid scanning:

<font  color="blue">**BED_MESH_CALIBRATE METHOD=scan SCAN_MODE=rapid**</font>

Save the settings with ‘SAVE_CONFIG’.

5、Temperature Compensation (The coil version has no temperature compensation, ignore this step):

<font  color="red">**Note: Exercise caution as the heated bed can reach very high temperatures.**</font>

(1)	Home all axes.

(2)	Set the machine's idle timeout longer to prevent a timeout during the heating process:

​	<font  color="blue">**SET_IDLE_TIMEOUT TIMEOUT=36000**</font>

(3)	Record Temperatures:

​	Document the BIGTREETECH Eddy temperature at room temperature.

Set the heated bed to its maximum temperature and a commonly used tool head temperature. Wait for the BIGTREETECH Eddy temperature to stabilize and then record the highest temperature reached,<font  color="red">**which will serve as the target temperature for the next steps. Ensure this target is slightly below the maximum to prevent overheating.**</font>

<img src=img/Eddy/Eddy_System9.png width="600" />

(4)	Wait until it returns to room temperature and then execute:

​	<font  color="blue">**PROBE_DRIFT_CALIBRATE PROBE=btt_eddy TARGET=50 STEP=5**</font>

​	Where TARGET=50 means the target temperature is 50℃, and STEP=5 means each node's temperature scale is 5℃.

​	For example, if the current temperature is 30℃ and the target temperature is 50℃, then the total temperature range is 50-30=20℃, and the temperature scale for each node is 5℃, so there will be 20 / 5 = 4 nodes sampled.

​	Executing the above command will immediately require a manual z-offset calibration (<font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>). Then manually heat the heated bed and nozzle, waiting for the BIGTREETECH Eddy temperature to rise. The BIGTREETECH Eddy will require another manual z-offset calibration (<font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>) at the next node, which is 35℃, and then another manual z-offset calibration (<font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>) at the next node, which is 40℃, and so on.

