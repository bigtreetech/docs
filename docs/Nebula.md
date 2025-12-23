# Nebula

<img src=img/Nebula/nebula_title.webp width="600" />

**Github Repository:** [bigtreetech/Nebula](https://github.com/bigtreetech/Nebula)

**Product Link:** [BIGTREETECH Official Website](https://biqu.equipment/products/biqu-nebula)

## Introduction

Nebula, the smart extruder designed for optimal cost-effectiveness, features an RGB backlight to enhance your print head. It boasts powerful extrusion capabilities, a built-in filament sensor, and a customizable G-code button, enabling auto filament loading and one-button unloading.

## Feature Highlights

**RGB Lighting:** Programmable for visual status monitoring.

**Built-in Filament Sensor:** Automatically triggers filament loading upon insertion.

**Transparent Magnetic Cover:**	Enables efficient maintenance checks and repairs.

**Customizable G-code Button:**	A programmable button for one-click filament unloading and other custom functions.

**6kg+ Reliable Extrusion Force:** Precision planetary gears deliver over 6kg of extrusion power, with a hardened steel drive gear ensuring consistent and flawless extrusion for perfect prints.

## Specifications

| **Extrusion Method**                | **Dual Gear Extrusion**               |
| ----------------------------------- | ------------------------------------- |
| **Weight**                          | **143 g**                             |
| **Maximum Extrusion Force**         | **6 kg (varies with filament types)** |
| **Rotation Distance**               | **51.75**                             |
| **Gear Ratio**                      | **11.25:1**                           |
| **Recommended Motor Current**       | **650 mA**                            |
| **Drive Gear Circumference**        | **50.4 mm**                           |
| **Filament Diameter and Tolerance** | **1.75 mm ± 0.05 mm**                 |
| **Voltage**                         | **24V**                               |

## Dimensions

**XYZ Dimensions: 52.73 x 36.5 x 54.82mm**

<img src=img/Nebula/nebula_dimensions.webp width="600" />

## Adjusting the Drive Gear Clamp Distance

The drive gear clamp distance is adjustable to accommodate different types of filaments. Rotate the Limit Screw counterclockwise (toward the marked "(-)") to decrease distance or increase clamping pressure, which is ideal for hard filament, or clockwise (toward the marked "(+)") to increase distance to decrease pressure, ideal for softer materials.

!!! warning
    Avoid forcing the screw beyond its stopping point to prevent damage to the extruder.

    <img src=img/Nebula/nebula_adjusting.webp width="400" />

## Programmable Button

<img src=img/Nebula/nebula_programmable.webp width="600" />

https://github.com/julianschill/klipper-led_effect/

## Motor Specifications

| **Number of Phase**       | **2**                 |
| ------------------------- | --------------------- |
| **Step Angle**            | **1.8°**              |
| **Rated Voltage**         | **DC 2.4V**           |
| **Rated Current**         | **DC 1.0A**           |
| **Holding Torque**        | **≥110mN·m**          |
| **Winding Resistant**     | **2.4±10% ohm (20℃)** |
| **Winding Inductance**    | **1.7±20% mH (1kHz)** |
| **Direction of Rotation** | **A-AB-B-CW**         |
| **Rotor Inertia**         | **15 g·cm²**          |
| **Motor Weight**          | **0.1 kg**            |
| **Insulation Class**      | **Class F**           |

<img src=img/Nebula/nebula_motor.webp width="400" />

## Expanded

<img src=img/Nebula/nebula_view.webp width="600" />

| **1. Motor**                  | **15. Idler Gear**             |
| ----------------------------- | ------------------------------ |
| **2. Ring Gear Housing**      | **16. 3-5-6 PEEK Bearing**     |
| **3. Planetary Gear**         | **17. Idler Carrier Arm**      |
| **4. MR85ZZ Bearing**         | **18. Extrusion Gear**         |
| **5. Planetary Gear Carrier** | **19. Filament Senser Insert** |
| **6. 14-Tooth Pinion Gear**   | **20. Pin (Diameter 3x11)**    |
| **7. MF128ZZ Bearing**        | **21. 3-5-10 PEEK Bearing**    |
| **8. Back Case**              | **22. Right Lens**             |
| **9. Distribution Board**     | **23. Front Case**             |
| **10. Bowden Clip**           | **24. Left Lens**              |
| **11. Bowden Fitting**        | **25. M3x25 FHCS Screw**       |
| **12. M2x4 Screw**            | **26. Transparent Cover**      |
| **13. Limit Screw**           | **27. Magnetic Cover Frame**   |
| **14. Spring**                |                                |

## Klipper Config Example

!!! note 
    Config below can able find in GitHub repo [bigtreetech/Nebula](https://github.com/bigtreetech/Nebula)

``` title="[extruder] section config"
[extruder]
rotation_distance: 51.75
gear_ratio: 11.25:1
max_extrude_only_distance: 200.0
```

``` title="nebula neopixel config"
[neopixel nebula_neopixel]
pin: EBBCan:PD3
chain_count: 2
color_order: GRB
initial_RED: 1.0
initial_GREEN: 1.0
initial_BLUE: 1.0
```

``` title="macro and sensor"
[gcode_macro _NEBULA_VARIABLE]
# unload
variable_unload_purge_distance: 35   # (mm) purge a distance before unload to clean filament
variable_unload_purge_speed:    300  # (mm/min) purge speed
variable_unload_distance:       120  # (mm) unload distance
variable_unload_speed:          3000 # (mm/min) unload speed
# load
variable_load_distance:         40   # (mm) load distance
variable_load_speed:            1500 # (mm/min) load speed
variable_load_purge_distance:   70   # (mm) purge a distance after load
variable_load_purge_speed:      300  # (mm/min) purge speed
gcode:

[gcode_macro NEBULA_UNLOAD_FILAMENT]
gcode:
  {% set nebula = printer['gcode_macro _NEBULA_VARIABLE'] %}
  {% set unload_purge_distance = nebula.unload_purge_distance %}
  {% set unload_purge_speed = nebula.unload_purge_speed %}
  {% set unload_distance = nebula.unload_distance %}
  {% set unload_speed = nebula.unload_speed %}

  SAVE_GCODE_STATE NAME=tmp_unload_state
  G91
  G92 E0
  M118 Nebula unload purging
  G1 E{unload_purge_distance} F{unload_purge_speed}
  M400
  M118 Nebula unloading
  G1 E-{unload_distance} F{unload_speed}
  M400
  RESTORE_GCODE_STATE NAME=tmp_unload_state

[gcode_macro NEBULA_LOAD_FILAMENT]
gcode:
  {% set nebula = printer['gcode_macro _NEBULA_VARIABLE'] %}
  {% set load_purge_distance = nebula.load_purge_distance %}
  {% set load_purge_speed = nebula.load_purge_speed %}
  {% set load_distance = nebula.load_distance %}
  {% set load_speed = nebula.load_speed %}

  SAVE_GCODE_STATE NAME=tmp_unload_state
  G91
  G92 E0
  M118 Nebula loading
  G1 E{load_distance} F{load_speed}
  M400
  M118 Nebula load purging
  G1 E{load_purge_distance} F{load_purge_speed}
  M400
  RESTORE_GCODE_STATE NAME=tmp_unload_state

[gcode_button nebula_unload_button]
pin: ^!EBBCan:PB5 # Gcode Button pin（marked as GB on extruder）, Modify this to match your mainboard！
debounce_delay: 0.02
press_gcode:
release_gcode:
  {% if printer.print_stats.state != "printing" %}
    {% set fs = printer['gcode_button filament_sensor'] %}
    {% if fs.state == "RELEASED" %}
      NEBULA_UNLOAD_FILAMENT
    {% endif %}
  {% endif %}

[gcode_button filament_sensor]
pin: ^EBBCan:PB6 # Filament sensor pin（marked as FS on extruder）, Modify this to match your mainboard！
debounce_delay: 0.5
press_gcode:
  {% if printer.print_stats.state == "printing" %}
    PAUSE # [pause_resume] is required in printer.cfg
  {% endif %}
release_gcode:
  {% if printer.print_stats.state != "printing" %}
    NEBULA_LOAD_FILAMENT
  {% endif %}
```
