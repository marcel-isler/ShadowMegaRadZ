; filament-change.g
; called when a print from SD card is executing the M600 command

M83               ; relative extruder moves
G1 E-2 F3600      ; retract 2mm of filament
G91               ; relative positioning
G1 Z50 S1 F360    ; lift Z by 5mm, or until Z-limit is reached
G90               ; absolute positioning
G1 X175 Y50 F3600 ; move the nozzle to the front center
M83               ; relative extruder moves
G1 E-200 F3600    ; retract 200mm of filament
