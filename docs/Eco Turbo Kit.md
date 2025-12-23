# Eco Turbo Kit

<img src=img/eco_turbo_kit/eco_turbo_kit_title.webp width="600"/>

**Product Link:**

https://biqu.equipment/products/biqu-eco-turbo-kit

 

**GitHub repository:**

[GitHub - bigtreetech/Eco-Turbo-Kit](https://github.com/bigtreetech/Eco-Turbo-Kit)

## **Introduction**

The BIQU Eco Turbo Kit is designed to significantly boost cooling efficiency. This kit supports a wide voltage range of 5-24V, allowing for the direct replacement of standard DC fans. It features quick-connect terminals and pre-crimped wires for hassle-free installation. Additionally, it is equipped with a driver cooling fan to ensure stable operation of the blower.

## **Feature Highlights**

- Utilizes a 32-bit ARM Cortex-M0 STM32F042F6P6 MCU with a clock speed of 48MHz.
- Utilizes CJ7533S-300mA power chip, supporting 24V power input, with a maximum output current of 300mA.
- A BOOT button is reserved on the motherboard, allowing users to update the bootloader via DFU mode.
- The fan control signal supports input from 5V to 24V.

## **Specifications**

| MCU                                       | ARM Cortex-M0 STM32F042F6P6 48MHz                            |
| ----------------------------------------- | ------------------------------------------------------------ |
| Input Voltage                             | DCIN=DC24V                                                   |
| Logic Voltage                             | DC5V-24V                                                     |
| Fan Interfaces                            | One Turbo Fan Control Interface (XH2.54-3PIN) <br />One Cooling Fan Control Interface (XH2.54-2PIN) |
| Maximum Output Current for Fan Interfaces | 3A                                                           |

## **Dimensions**

<img src=img/eco_turbo_kit/eco_turbo_kit_dimensions1.webp width="600"/>

<img src=img/eco_turbo_kit/eco_turbo_kit_dimensions2.webp width="600"/>

## **Precautions**

- Ensure that the blower and your mainboard(fan controller device) are grounded through the same power supply, alternatively, if powered by separate power supplies, connect the grounds together on both PSUs.
- Connect the control signal to a BIGTREETECH motherboard that has a fan interface. 
- Be aware that the 'FAN-' terminal on the Fan Control Signal Input is not ground (GND). Do not connect 'FAN-' directly to the ground.

## **Peripheral Interfaces**

### Interface Diagram

<img src=img/eco_turbo_kit/eco_turbo_kit_interface.webp width="600"/>

## **Interface Introduction**

### Fan Signal Input

The input signal for the fan supports a range from 5V to 24V.

<font  color="red">**Important: To ensure proper fan control signal function, ensure that the blower and your mainboard (fan controller device) are grounded through the same power supply, alternatively, if powered by separate power supplies, connect the grounds together on both PSUs. This provides a reference voltage level for the fan control signal.**</font>

<font  color="red">**Note that 'FAN-' is not a ground connection.**</font>

<img src=img/eco_turbo_kit/eco_turbo_kit_fan.webp width="600"/>

### Power Input

The power input requires a 24VDC source.

<font  color="red">**Important: To ensure proper fan control signal function, ensure that the blower and your mainboard (fan controller device) are grounded through the same power supply, alternatively, if powered by separate power supplies, connect the grounds together on both PSUs. This provides a reference voltage level for the fan control signal.**</font>

<font  color="red">**Note that 'FAN-' is not a ground connection.**</font>

<img src=img/eco_turbo_kit/eco_turbo_kit_power.webp width="600"/>

### Writing Interface

<img src=img/eco_turbo_kit/eco_turbo_kit_writing.webp width="600"/>

### Driver Cooling Fan Interface

Equipped with a 24V BLDC driver cooling fan.

<font  color="red">**When the PWM input signal falls below 10%, the driver cooling fan is deactivated. For input signals between 10% and 50%, the driver cooling fan operates at 50% of its maximum speed. When the input signal ranges from 50% to 100%, the driver cooling fan functions at full capacity.**</font>

<img src=img/eco_turbo_kit/eco_turbo_kit_driver.webp width="600"/>

### Turbo Fan Interface

Do not connect the blower to your mainboard through this interface, the integrated adaptor board communicates to the blower through this interface.

<img src=img/eco_turbo_kit/eco_turbo_kit_turbo.webp width="600"/>

## **Mounting Tutorial**

In this tutorial, you will learn how to install the Eco Turbo Kit in the VORON 2.4 with BIGTREETECH SFS and a Ventilation Fan.

**Preparation:**

Check the packaging list and ensure you have the fan pipe, which must be purchased separately. Also, print the installation model in advance.

**Packaging List:** 

<img src=img/eco_turbo_kit/eco_turbo_kit_mounting.webp width="600"/>

**Fan Pipe (purchased separately):**

<img src=img/eco_turbo_kit/eco_turbo_kit_pipe.webp width="600"/>

**Installation Model (print in advance):**

<img src=img/eco_turbo_kit/eco_turbo_kit_model.webp width="600"/>

**Print Files Instruction**

Firstly, print everything in the "StealthBurner Parts" folder. You will need the following extra parts to complete the printhead: 1x BTT KNOMI V2.0; 1x 15mm CPAP Fan Pipe; 2x Zip Ties

Firstly, print everything in the "StealthBurner Parts" folder. You will need the following extra parts to complete the printhead: 1x BTT KNOMI V2.0; 1x 15mm CPAP Fan Pipe; 2x Zip Ties

1. Voron-Exhaust-ETK-SFS-without-fan: Redesigned version of the Voron exhaust hood with an integrated SFS V2.0 module, making use of the included Air Filter, without the 60mm exhaust fan.

This is the recommended configuration as it completely encloses the blower, keeping the noise level to a minimum. 
* Design by @MichalKelnar_1267496 on Printables.
View Original Design
https://www.printables.com/model/668556-modified-voron-exhaust-filter/files
For this configuration, you will need the following extra parts:
1x BIGTREETECH SFS V2.0

2. Voron-Exhaust-ETK-without-fan: modified Voron design V2.4 exhaust hood without a 60mm exhaust fan. This is the recommended configuration for non-SFS users as it completely encloses the blower, keeping the noise level to a minimum.
For this configuration, no extra parts are needed.

3. Voron-Exhaust-ETK-SFS-with-fan: this is a redesigned version of the Voron exhaust hood with an integrated SFS V2.0 module and a 60mm exhaust fan. A powerful 60mm fan is needed to maintain negative pressure in the printer enclosure due to the CPAP blower position; bear in mind that this will produce a high noise level, as the blower isn’t enclosed. 
* Design by @MichalKelnar_1267496 on Printables.
View Original Design
https://www.printables.com/model/668556-modified-voron-exhaust-filter/files
For this configuration, you will need the following extra parts:
1x BIGTREETECH SFS V2.0; 1x 60mm Axial Fan

4. Voron-Exhaust-ETK-with-fan: original Voron design V2.4 exhaust hood with a 60mm exhaust fan. A powerful 60mm fan is needed to maintain negative pressure in the printer enclosure due to the CPAP blower position; bear in mind that this will also produce a high noise level, as the blower isn’t enclosed.
For this configuration, you will need the following extra parts:
1x 60mm Axial Fan

**Mounting Steps:**

1. Melt eight M3 heat-set inserts into the printed case, ensuring they sit flush with the case surface. (front side of the shell: 2 pcs, other side of the shell: 6 pcs)

<img src=img/eco_turbo_kit/eco_turbo_kit_step1.webp width="600"/>

<img src=img/eco_turbo_kit/eco_turbo_kit_step2.webp width="600"/>

2. Attach the printed pipe connector to the blower.

<img src=img/eco_turbo_kit/eco_turbo_kit_step3.webp width="600"/>

3. SFS Installation (Skip if not using SFS)

​	Route the SFS cable through the dedicated holes;

​	Install the SFS in its slot;

​	Secure with three M3x6 screws.

<img src=img/eco_turbo_kit/eco_turbo_kit_step4.webp width="600"/>

<img src=img/eco_turbo_kit/eco_turbo_kit_step5.webp width="600"/>

4. Fasten the case to the blower assembly using three M3x8 screws.

<img src=img/eco_turbo_kit/eco_turbo_kit_step6.webp width="600"/>

5. SFS Cable management (Skip if not using SFS) - Organize the cable into the cable clip.

<img src=img/eco_turbo_kit/eco_turbo_kit_step7.webp width="600"/>

6. Use four M3x30 screws to secure the 6020 fan to the case.

<img src=img/eco_turbo_kit/eco_turbo_kit_step8.webp width="600"/>

7. Connect the Power and Fan Cables

<img src=img/eco_turbo_kit/eco_turbo_kit_step9.webp width="600"/>

Cables can be routed through this slot.

<img src=img/eco_turbo_kit/eco_turbo_kit_step10.webp width="600"/>

8. Use two M3x12 screws to secure the cover.

<img src=img/eco_turbo_kit/eco_turbo_kit_step11.webp width="600"/>

9. Cut the pipe as shown in the image below.

<img src=img/eco_turbo_kit/eco_turbo_kit_step12.webp width="600"/>

10. Install the Mounting Bracket - Insert the M5 Drop-In T-Nuts into the profile, aligning with the printed bracket spacing.

<img src=img/eco_turbo_kit/eco_turbo_kit_step13.webp width="600"/>

Position the bracket and fasten with two M5x10 screws.

<img src=img/eco_turbo_kit/eco_turbo_kit_step14.webp width="600"/>

11. Install the Pipe and Secure the Ventilation Cover - Pass the pipe through the second hole on the right of the printed ventilation cover. 

<img src=img/eco_turbo_kit/eco_turbo_kit_step15.webp width="600"/>

Rotate the pipe into the printed pipe connector.

<img src=img/eco_turbo_kit/eco_turbo_kit_step16.webp width="600"/>

12. Use two M3 x 12 screws through the ventilation cover and bracket to secure the case.

<img src=img/eco_turbo_kit/eco_turbo_kit_step17.webp width="600"/>

<img src=img/eco_turbo_kit/eco_turbo_kit_step18.webp width="600"/>

13. Insert the SFS quick-connect button and turn it 90 degrees, then insert the PTFE tube into the button until it is fully seated in the SFS.

<img src=img/eco_turbo_kit/eco_turbo_kit_step19.webp width="600"/>

**Eco Turbo KIT Installation Complete**
Internal Machine View:

<img src=img/eco_turbo_kit/eco_turbo_kit_step20.webp width="600"/>

External View

<img src=img/eco_turbo_kit/eco_turbo_kit_step21.webp width="600"/>

Tips: cable instructions

<img src=img/eco_turbo_kit/eco_turbo_kit_step22.webp width="600"/>

## **Firmware Setup**

**Klipper**

Insert your fan port pin into the pin section below and copy it to your “printer.cfg” file:

<font  color="blue">**[fan]**</font>

<font  color="blue">**pin:**</font> \# Output pin controlling the fan. This parameter must be provided.

<font  color="blue">**max_power: 1**</font>

#If you need to fine-tune the max_power parameter to adapt to your motherboard, first set it to 1.0. Gradually increase the fan speed in the Klipper dashboard until the actual speed no longer increases with the set value. Divide this speed by 100 and enter it into the max_power parameter.

#This parameter defines the maximum power (expressed as a value from 0.0 to 1.0) that the pin may be set to. 

#The value 1.0 allows the pin to be set fully enabled for extended periods, while a value of 0.5 would allow the pin to be enabled for no more than half the time. 

#This setting may be used to limit the total power output (over extended periods) to the fan. 

#If this value is less than 1.0, then fan speed requests will be scaled between zero and max_power (for example, if max_power is 0.9 and a fan speed of 80% is requested, then the fan power will be set to 72%).

<font  color="blue">**shutdown_speed: 0**</font>

#The desired fan speed (expressed as a value from 0.0 to 1.0) if 

#The microcontroller software enters an error state. 

#The default is 0.

<font  color="blue">**cycle_time: 0.01**</font>

#The amount of time (in seconds) for each PWM power cycle to the fan.

#It is recommended this be 10 milliseconds or greater when using software-based PWM.

#The default is 0.010 seconds.

<font  color="blue">**hardware_pwm: False **</font>

#Enable this to use hardware PWM instead of software PWM.

#Most fans do not work well with hardware PWM, so it is not recommended to enable this unless there is an electrical requirement to switch at very high speeds.

#When using hardware PWM, the actual cycle time is constrained by the implementation and may be significantly different than the requested cycle_time.

#The default is False.

<font  color="blue">**kick_start_time: 0.100**</font>

#Time (in seconds) to run the fan at full speed when either first enabling or increasing it by more than 50% (helps get the fan spinning).

#The default is 0.100 seconds.

<font  color="blue">**off_below: 0.15**</font>

#The blower will not spin with the included brushless driver when the duty cycle is below 15%. When scaled with Max_power at 1, the off_below parameter should be set to 0.15. 

#To calibrate this setting, gradually lower the fan speed to determine the lowest input speed that reliably drives the fan without stalls. 

#Set off_below to the duty cycle corresponding to this value (for example, 15% -> 0.15/Max_power -> 0.15/1 -> 0.15) or slightly higher.

#This parameter is the minimum input speed that will power the fan (expressed as a value from 0.0 to 1.0).

#When a speed lower than off_below is requested, the fan will instead be turned off.

#This setting may be used to prevent fan stalls and to ensure effective kick starts.

#To calibrate this setting, start with off_below set to 0.0 and the fan spinning.

#Gradually lower the fan speed to determine the lowest input speed that reliably drives the fan without stalls.

#Set off_below to the duty cycle corresponding to this value (for example, 12% -> 0.12) or slightly higher.

**Marlin**

Enable "FAN_SOFT_PWM" and set "SOFT_PWM_SCALE" to 5.

**Duet Board**

https://docs.duet3d.com/en/User_manual/Connecting_hardware/Fans_connecting

## **Product Purchase Link**

https://biqu.equipment/products/biqu-eco-turbo-kit

If you have any issues with the product, please submit a support ticket.

https://biqu3d.com/pages/submit-a-ticket

**Navigation:**

BIQU Official Website: http://biqu3d.com

BIGTREETECH Official Website: http://bigtree-tech.com

Online Store: https://biqu.equipment

Community: https://community.biqu3d.com
