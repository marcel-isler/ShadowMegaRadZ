; homex.g
; called to home the X axis
; updated September 4, 2018

; same as homey.g because of coreXY
; Front left corner is (0,0)

; ============= PRE-HOMING =====================

M913 X60 ; drop X motor currents to 60%
M913 Y60 ; drop Y motor currents to 60%

; Ignore Machine boundaries
M564 H0 S0

; Turn off bed leveling during homing
G29 S2 ; Does the same as M561!

; Switch to Origin Tool
T0

; Relative positioning
G91

; Provide Z height clearance
G1 Z10 F750 H1

; ================== HOME Y ============================

; Rapid Y until limit switch triggers
; G0 Y450 F2400 S1 ; Remove after initial tests, then uncomment the line below
G0 Y450 F12000 H1

; Back off to release limit switch
G0 Y-6 F12000

; Slow advance to trigger limit switch
G0 Y10 F120 H1

; Set this location as Y = 348mm
G92 Y345

; ============= HOME X ====================

; Rapid X until limit switch triggers
; G0 X450 F2400 S1 ; Remove after initial tests, then uncomment the line below
G0 X450 F12000 H1

; Back off to release limit switch
G0 X-6 F12000

; Slow advance to trigger limit switch
G0 X10 F120 H1

; Set this location as X = 350mm
G92 X350

; Move away from the limit switch, to prevent damage to it upon next move
;G0 X5 F1500

; ============ Post-Homing ==============

; Revert to absolute coordinates
G90

; Re-enable mesh leveling, This is now done after the AutoTram
;G29 S1

M913 X100					; X motor currents back to 100%
M913 Y100					; Y motor currents back to 100%

M98 Pmachine_axisdimension.g ; Set Axes Limits

; Stop movement across limits, enable boundaries, homing requirement
M564 H1 S1
