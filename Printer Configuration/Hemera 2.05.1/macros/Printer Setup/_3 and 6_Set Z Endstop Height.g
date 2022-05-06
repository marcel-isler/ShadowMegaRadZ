;_____________Set Z Endstop Height_____________
M291 P"Do you want to set the Z endstop height?" S3
M291 P"Setting Z endstop height, this will home the printer, heat the bed and nozzle and then give you further instructions." S0

M140 S70 ; Start heating bed to 70c
G10 P0 S150 ;turn on extruder

G28 ; Home all

M190 S70 ; wait for heat bed to get to 70c

;G32 ; Autotram the bed

;G1 Z20 F2500 ; move the bed to 200mm from the nozzle

G29 S2 ; Disable bed mesh
G29 S2 ; Disable bed mesh

G1 X187 Y315 Z20 F1500 ; move extruder to the back center leadscrew and raise bed.

M564 S0 ; Disable movement boundaries.

;Beep 3 times
M300 S600 P250
G4 P401
M300 S600 P250
G4 P401
M300 S600 P250
G4 P401

M291 P"Slowly move the bed up until nozzle is touching. Press OK when done." S2 Z1

;Beep 3 times
M300 S600 P250
G4 P401
M300 S300 P250
G4 P401
M300 S600 P250
G4 P401

M291 P"Check the G-Code Console for instructions on what to do next" S2
;M291 P"Record the Z axis value displayed in the Machine Status..." S2
;M291 P"If the value is 0 and this is the first round, run the macro '_1 and 4_Calibrate Z Probe' again, otherwise run the '_7_Mesh Bed' macro" S2
;M291 P"If the value is NOT 0, set the G92 Z value in machine_zendstop.g" S2
;M291 P"If the recorded Z value is - (negative), ADD it to the current Z value." S2
;M291 P"If the recorded Z value is + (positive), SUBTRACT it from the current Z value." S2
;M291 P"Edit machine_axisdimension.g and set max Z to the next whole number above the new Z end stop set in machine_zendstop.g." S2
;M291 P"After both files are saved run the '_3 and 6_Set Z Endstop Height' macro again until no correction is needed" S2
;M291 P"These messages are also displayed on the g-code console screen." S2

; Display commands on the console screen

M118 S"After both files are saved, run the '_3 and 6_Set Z Endstop Height' macro again until no correction is needed." P0
G4 P1000
M118 S"Edit machine_axisdimension.g and set max Z to the next whole number above the new Z end stop set in machine_zendstop.g" P0
G4 P1000
M118 S"If the recorded Z value is + (positive), SUBTRACT it from the current Z value" P0
G4 P1000
M118 S"If the recorded Z value is - (negative), ADD it to the current Z value" P0
G4 P1000
M118 S"If the value is NOT 0, set the G92 Z value in machine_zendstop.g" P0
G4 P1000
M118 S"If the value is 0 and this is the first round, run the macro '_1 and 4_Calibrate Z Probe' again, otherwise run the '_7_Mesh Bed' macro" P0
G4 P1000
M118 S"Record the Z axis value displayed in the Machine Status" P0