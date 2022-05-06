; machine_stepper_extruder.g
; December 16, 2019
; This file is used to configure all the values for the extruder steppers, like direction, steps / mm and power.

; ---------- SECTION ----------
; Configure the direction each stepper turns.
M569 P5 S0 D2 V0 ; Drive 3, Main Extruder
M584 E5 ; Extruder motor is the first of the expansion board drivers


; ---------- SECTION ----------
; This section allows you to calibrate the extruder steps.
; This is important to verify as it can lead to over or under extrusion if the values are wrong.
; Here is a link to how to calibrate extruder steps:
; http://print.theporto.com/posts/how-to-calibrate-your-3d-printer-extruder-steps/

; If you need to configure more than one extruder, add a colon behind each value and add the value for the second extruder
M92 E400    ; Extruder Steps/mm
M350 E16 I1 ; Setting microstepping to 16 with interpolation.


; ---------- SECTION ----------
; This section sets the stepper motor currents.
; This is an advanced feature and should only be changed if you REALLY know what you're doing!
; Increasing stepper motor currents beyond their limit can result in damage to them!
; This only sets the currents for the extruder stepper, change the current for the motion steppers in machine_stepper_movement.g
M906 E800 I60 ; Set motor currents (mA) and idle current percentage


; ---------- SECTION ----------
; This section sets the different speed limits of the extruder stepper.
; A higher acceleration value makes for faster print speeds, but can also introduce ghosting and other artifacts.
; The maximum linear speed should only be changed if hardware has changed
; The maximum instantaneous speed change determines how slow the print head has to move before it can make
; abrupt direction changes.
; These are advanced feature values and should only be changed for good reason and if you know how they impact prints.

; If you need to configure more than one extruder, add a colon behind each value and add the value for the second extruder
M203 E3600 ; Set maximum linear speeds (mm/min)
M201 E1500 ; Set accelerations (mm/s^2)
M566 E3600 ; Set maximum instantaneous/jerk speed changes (mm/min)


; ---------- SECTION ----------
; This section sets the pressure advance for the main extruder.
M572 D0 S0.02
