; bed.g
;called to perform automatic bed compensation via G32
;Tripple Zscrew Automatic Tramming 
;
M561     ; clear any bed transform
G28      ; home all
G29 S2   ; clear height map - must home first!
G29 S2   ; clear height map - 2nd time just to be sure
M401     ; deploy Z probe (omit if not using bltouch)

G1 Z30 F1200

G30 P0 X350 Y-32 Z-99999 ; probe near right leadscrew
G30 P1 X187 Y175 Z-99999 ; probe center of bed
G30 P2 X0 Y-32 Z-99999 ; probe near left leadscrew
G30 P3 X0 Y310 Z-99999 ; probe left rear
G30 P4 X187 Y310 Z-99999 ; probe center rear (leadscrew)
G30 P5 X350 Y310 Z-99999 S3 ; probe right rear and calibrate 3 motors

G30 P0 X350 Y-32 Z-99999 ; probe near right leadscrew
G30 P1 X187 Y175 Z-99999 ; probe center of bed
G30 P2 X0 Y-32 Z-99999 ; probe near left leadscrew
G30 P3 X0 Y310 Z-99999 ; probe left rear
G30 P4 X187 Y310 Z-99999 ; probe center rear (leadscrew)
G30 P5 X350 Y310 Z-99999 S3 ; probe right rear and calibrate 3 motors

;G30 P0 X350 Y0 Z-99999 ; probe near right leadscrew
;G30 P1 X187 Y175 Z-99999 ; probe center of bed
;G30 P2 X0 Y0 Z-99999 ; probe near left leadscrew
;G30 P3 X0 Y315 Z-99999 ; probe left rear
;G30 P4 X187 Y315 Z-99999 ; probe center rear (leadscrew)
;G30 P5 X350 Y315 Z-99999 S3 ; probe right rear and calibrate 3 motors

;G30 P0 X350 Y0 Z-99999 ; probe near right leadscrew
;G30 P1 X187 Y175 Z-99999 ; probe center of bed
;G30 P2 X0 Y0 Z-99999 ; probe near left leadscrew
;G30 P3 X0 Y315 Z-99999 ; probe left rear
;G30 P4 X187 Y315 Z-99999 ; probe center rear (leadscrew)
;G30 P5 X350 Y315 Z-99999 S3 ; probe right rear and calibrate 3 motors

G29 S1   ; Re-Enable Bed Mesh
M402     ;For bltouch
