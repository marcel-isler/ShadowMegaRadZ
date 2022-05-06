; machine_tools
; May 3, 2022

; Tool Setup

; Main Tool T0
M563 P0 S"Hemera" D0 H1 F0 ; Define main tool
G10 P0 X0 Y0 Z0            ; Set axis offsets
G10 P0 R0 S0               ; Set active (S0) & standby temp (R0) at 0.

T0 ; Automatic tool select
