; machine_heater_extrusion.g
; May 3, 2022
; This file is used to configure all the values for the hot end heater.

; ---------- SECTION ----------
; This section sets the thermistor behavior for the hot ends.
; H0 is bed
; H1 is main hot end
; H2 is additional hot end

M570 H1 P15 T30                                        ; Allow heater to be off by as much as 30C for 15 seconds
M308 S1 P"e0temp" Y"thermistor" T100000 B4725 C7.06e-8 ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                                   ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 R1.447 K0.255:0.000 D6.73 E1.35 S1.00 B0 V24.2 ; Set PID values use M303 auto-tune calibration settings
M302 P1                                                ; Allow Cold extrudes


; ---------- SECTION ----------
; This section sets the maximum temperatures for the hot ends.
; This should only be changed if hardware modifications have been made that
; can handle the higher temperatures!
; FIRE HAZARD - USE AT YOUR OWN RISK!!!!!!
M143 H1 S320 ; Set maximum heater temperature to 320C for hot end 1
