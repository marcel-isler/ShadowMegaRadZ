; machine_leds.g
; May 6, 2022
; This file is used to configure all connectors to drive a LED strip.

M950 F3 C"e1heat" ; create fan 0 on pin fan0
M106 P3 S0 H-1 B0 X0.5 C"Lighting" ; Set LED strip value, PWM signal inversion and frequency. Thermostatic control is turned off, Minimum fan value 0.3, Speed 100%
