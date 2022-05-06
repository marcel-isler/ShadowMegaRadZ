; machine_fans.g
; May 3, 2022
; This file is used to configure all the fans in the printer.

M950 F0 C"fan2" ; create fan 0 on pin fan0
M950 F1 C"fan0" ; create fan 1 on pin fan1
;M950 F2 C"fan1" ; create fan 2 on pin fan2

M106 P0 S0 H-1 L0.3 C"Part Cooling"; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off, Minimum fan value 0.3, Speed 0%
M106 P1 S255 H-1 L0.3 C"Electronics"; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned off, Minimum fan value 0.3, Speed 100%
;M106 P2 S0 H-1 L0.3 ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned off, Minimum fan value 0.3, Speed 0%
