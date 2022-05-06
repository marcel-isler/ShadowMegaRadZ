;_____________Autotram Bed_____________
M291 P"Do you want to Autotram the bed?" S3
M291 P"Autotramming the bed now." S0

M140 S70 ; Start heating bed to 70c

;G28 ; Home all

M190 S70 ; wait for heat bed to get to 70c

G32

M291 P"The bed has been leveled." S2
M291 P"Please run the '_3 and 6_Set Z Endstop Height' macro" S2
M291 P"These messages are also displayed on the g-code console screen." S2

; Display commands on the console screen

M118 S"Please run the '_3 and 6_Set Z Endstop Height' macro" P0
M118 S"The bed has been leveled." P0
