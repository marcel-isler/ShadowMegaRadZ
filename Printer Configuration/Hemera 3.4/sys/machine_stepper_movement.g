; machine_stepper_movement.g
; May 3, 2022
; This file is used to configure all the values for the movement steppers, like direction, steps / mm and power.

; ---------- SECTION ----------
; Set the mode and XYZ scaling.  X and Z are usually 1.0, Y is calculated based of your calibration method
M667 S1             ; Enable CoreXY mode, set Y scale factor
M669 K1             ; Select CoreXY kinematics (RRF 2.03 and later)
M579 X1.0 Y1.0 Z1.0 ; Scale X, Y and Z axis

; ---------- SECTION ----------
; Configure the direction each stepper turns.  For CoreXY, each stepper moves the carriage diagonally.
M569 P3 S0 ; Drive 3, CoreXY_1
M569 P4 S0 ; Drive 4, CoreXY_2
M569 P0 S0 ; Drive 0, Z Motor
M569 P1 S0 ; Drive 1, Z Motor
M569 P2 S0 ; Drive 2, Z Motor

; Z screw setup And driver mapping
M584 X4 Y3 Z0:1:2                  ;Z motor drive mapped to 0 1 2
M671 X-37:415:189 Y-32:-32:380 S30 ;Z leadscrew positions, make sure they are in the order of the drives above

; ---------- SECTION ----------
; These values define how many steps make 1mm of movement.
; Please note, only change the calibration if the measurements are always
; off by the same amount, no matter what the material, layer height or print speed.

; Here is a link on how to properly calibrate your step values.
; http://print.theporto.com/posts/how-to-calibrate-your-3d-printer-for-accurate-printing/

M92 X80.22 Y80.22 Z1600  ; Set axis steps/mm.
                         ; Please note that on a CoreXY system, the X and Y value MUST be the same.
                         ; Change the Y scaling above if you're not getting identical X and Y distance
M350 X16 Y16 Z16 I1      ; Setting microstepping with interpolation


; ---------- SECTION ----------
; This section sets the stepper motor currents.
; This is an advanced feature and should only be changed if you REALLY know what you're doing!
; Increasing stepper motor currents beyond their limit can result in damage to them!
; This only sets the currents for the movement steppers, change the current for the extruder steppers in machine_stepper_extruder.g
M906 X1200 Y1200 Z1200 I60; Set motor currents (mA) and idle current percentage


; ---------- SECTION ----------
; This section sets the different speed limits of the X Y and Z steppers.
; A higher acceleration value makes for faster print speeds, but can also introduce ghosting and other artifacts.
; The maximum linear speed should only be changed if hardware has changed
; The maximum instantaneous speed change determines how slow the print head has to move before it can make
; abrupt direction changes.
; These are advanced feature values and should only be changed for good reason and if you know how they impact prints.

M203 X24000 Y24000 Z720  ; Set maximum linear speeds (mm/min)
M201 X2500 Y2500 Z200    ; Set accelerations (mm/s^2)
M566 X400 Y400 Z200      ; Set maximum instantaneous/jerk speed changes (mm/min)


; ---------- SECTION ----------
; Since this is called in other places as well, the information is in its own file.
M98 Pmachine_axisdimension.g ; Set Axes Limits

