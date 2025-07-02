# EZ5160 Pro

<img title="" src="img/EZ5160Pro/EZ5160Pro_Title.png" alt="" width="323">

## **Product Profile**

TMC5160 is a high-power stepper motor drive control chip, with an external MOSFET, its maximum voltage can reach 48V, thus the supported stepper motor range is wider, and the adaptability is higher.

**Product Link:** [BIGTREETECH Official Website](https://biqu.equipment/products/ez-drive-easy-driver-ez2209-ez5160-pro-v1-0?variant=39787467178082)

## **Features Highlights**

- With the external MOSFET, it can support higher voltage and larger current, and the maximum current can reach 8A (because the module is limited by size and connector, the current cannot exceed 3A);
- Ultra-quiet mode;
- Low heat generation, which is far lower than that of 2100, 2130, and other drivers;
- It can prevent the motor from shaking;
- Not easy to lose steps;
- Can drive 57 stepper motors;
- The newly developed board frame is used to match the new connector so that customers can experience the aesthetic feeling and avoid the accident of the old driving pin stabbing the hand;
- Using a new type of specially made heat sink to enhance the heat dissipation as well as protect the driver chip from external damage;
- Using the environmentally friendly packaging to improve the cost effectiveness.

## Specifications

| Specifications      |                                                                           |
| ------------------- | ------------------------------------------------------------------------- |
| Product Size        | 18.5 x 20mm                                                               |
| Driver Chip         | TMC5160-TA                                                                |
| Input Voltage (VM)  | 8V-48V                                                                    |
| Maximum Current     | 2.5A, Peak Value: 3A (the maximum current that the header can withstand.) |
| Maximum Subdivision | 256                                                                       |
| Working Mode        | SPI                                                                       |

## **Dimensions**

<img src=img/EZ5160Pro/EZ5160Pro_Diagram.png width="500"/>

## **Interface Diagram**

<img src=img/EZ5160Pro/EZ5160Pro_Interface1.png width="500"/>

<img src=img/EZ5160Pro/EZ5160Pro_Interface2.png width="500"/>

The direction of installing the EZ version driver to the new header is shown in the image below:

<img src=img/EZ5160Pro/EZ5160Pro_Interface3.png width="500"/>

<table border="1">
    <tr>
    <td>J1</td><td>Function</td><td>J2</td><td>Function</td></tr>
    <tr>
    <td>1</td><td>(EN)Enable</td><td>1</td><td>(VM)Motor Supply Voltage</td></tr>
    <tr>
    <td>2</td><td>(SDI/CFG1)Data</td><td>2<td>(GND)GND</td></tr>
    <tr>
    <td>3</td><td>(SCK/CFG2)Clock</td><td>3</td><td>(B2) B Phase</td></tr>
    <tr>
    <td>4</td><td>(CSN/CFG3) Chip Select</td><td>4</td><td>(B1) B Phase</td></tr>
    <tr>
    <td>5</td><td>(SDO/CFG0) Data</td><td>5</td><td>(A1) A Phase</td></tr>
    <tr>
    <td>6</td><td>(DIAG) Locked-Rotor Detection</td><td>6</td><td>(A2) A Phase</td></tr>
    <tr>
    <td>7</td><td>(STEP) Pulse Input</td><td>7</td><td>(VIO) Logic Voltage</td></tr>
    <tr>
    <td>8</td><td>(DIR) Direction Input</td><td>8</td><td>(GND) GND</td></tr>
    <tr>
</table>

## **Software Configuration**

For details, please view [TMC5160 Software Configuration](./TMC5160.md#software-configuration)

**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket

**Navigation:**

BIQU Official Website：                                            http://biqu3d.com

BIGTREETECH Official Website：                             http://bigtree-tech.com

Online Store：                                                            https://biqu.equipment

BIGTREETECH Official Group:                                   https://www.facebook.com/groups/bigtreetech

Discord:                                                                        https://discord.gg/hhZsV7zk

Reddit:                                                                          https://www.reddit.com/r/BIGTREETECH/
