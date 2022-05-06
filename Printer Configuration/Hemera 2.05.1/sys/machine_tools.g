; machine_tools
; July 9, 2018

; Tool Setup

; Main Tool T0
M563 P0 D0 H1 F2 S"Main Extruder" ; Define main tool
M568 P0 S0                        ; Turn off tool mixing
G10 P0 X0 Y0 Z0                   ; Set axis offsets
G10 P0 R0 S0                      ; Set active (S0) & standby temp (R0) at 0.
