; print_startgcode.g
; called from the slicer

M118 S"Print Setup Starting"

G32 ; autotram the bed

G1 X5 Y20 Z25 F12000 ; move to left front edge

M116 ; wait for temperature to be reached

T0

; Lower the head at an angle to drag the filament snot
G1 X5 Y25 Z25 F500
G1 X5 Y75 Z0.3 F500

;Intro Line Near Left Edge
G92 E0 ; zero extruder
G1 Y120 E30 F750 ; intro line
G1 Y125 F180 ; ooze it out buddy
G1 Y150 F5000 ; wipe off the ooze
;G1 Z5 F100 ; Lift off bed
G1 F5000
G92 E0 ;zero extruder
M118 S"Ready to Print"