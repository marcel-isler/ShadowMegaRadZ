; machine_heater_bed.g
; May 3, 2022
; This file is used to configure all the values for the bed heater.

; ---------- SECTION ----------
; This section sets the thermistor behavior for the bed.
M570 H0 P25 T30                                         ; Allow heater to be off by as much as 30C for 25 seconds
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138 C0 R2200 ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                                   ; create bed heater output on bedheat and map it to sensor 0
M307 H0 A92.6 C1808.3 D3.4 S1.00 V24.1 B0               ; Forcing heated bed PID control after power-cycle. Basic bed heating auto-tune
M140 H0                                                 ; map heated bed to heater 0


; ---------- SECTION ----------
; This section sets the maximum temperatures for the bed.
; This should only be changed if hardware modifications have been made that
; can handle the higher temperatures!
; FIRE HAZARD - USE AT YOUR OWN RISK!!!!!!
M143 H0 S120 ; Set maximum bed temperature to 120 C
