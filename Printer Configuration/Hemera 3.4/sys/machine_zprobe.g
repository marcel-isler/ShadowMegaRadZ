; machine_probe.g
; May 3, 2022

; This document tells the printer which Z probe to use and what the offsets of that probe are.
; For X and Y offset, use a caliper and measure the distance between the center of the nozzle
; and the part of the probe that measures the bed.
; If the probe is to the right of the nozzle, the X value is positive
; If the probe is to the left of the nozzle, the X value is negative
; If the probe is behind the nozzle, the Y value is positive
; If the probe is in front of the nozzle, the Y value is negative

; To select which probe to use, comment / uncomment ONE of the two M558 lines below.

; Determine the Probe Z Offset:
;  1. Heat the bed to 60C and the nozzle to 150C
;  2. Move the head near the center with G1 X200 Y200
;  3. Move the bed near the nozzle with G1 Z20
;  4. Disable the bed mesh with G29 S2, do this twice
;  5. Move the bed in small steps so it just touches the nozzle, 1mm steps first, then 0.1mm steps
;  6. Set the Z0 position with G92 Z0
;  7. Move the bed back to Z20, with G1 Z20
;  8. Deploy the probe if necessary
;  9. Get the Z Probe value with G30 S-1
; 10. Note the Z value in the Web UI and update it in the G31 Z parameter below
; 11. Put the Z probe away if necessary

; BLTouch pin assignment
M950 S0 C"zprobe.mod" ; Duet Maestro

;M558 P9 C"^zprobe.in" H5 F120 T6000 A5 ; Set Z probe type -- BL Touch -- Slow movement
M558 P9 C"^zprobe.in" H5 F240:120 T24000 A5 ; Set Z probe type -- BL Touch -- Fast movement

; Remember to update your Z-probe offset with the Z parameter below
G31 P999 X0 Y-35 Z1.85 ; Set Z probe (BL Touch) trigger value, offset
