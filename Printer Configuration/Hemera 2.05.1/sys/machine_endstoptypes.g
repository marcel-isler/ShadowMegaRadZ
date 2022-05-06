; machine_endstoptypes.g
; July 17, 2018

; This file defines what type of end-stops the printer is using.
; Make sure you set the correct end-stop type or your printer will grind the belts trying to reach an end-stop that isn't responding!!!

; For mechanical endstops, use S0, for optical ones, use S1
M574 X2 S1 ; Set x end-stops types (S0 is active low, applied to X)
M574 Y2 S1 ; Set y end-stops types (S1 is active high, applied to Y)
M574 Z2 S1 ; Set z end-stops types (S1 is active high, applied to Z)
