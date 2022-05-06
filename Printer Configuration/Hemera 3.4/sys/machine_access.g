; machine_access.g
; May 3, 2022

; Set the machine name and IP address in here
; Follow http://promega.printm3d.com/books/user-manual/page/network-setup, for more help

M111 S0                   ; Debugging off
M550 PShadowMegaRadZ      ; Set machine name, type promega/ in your browser!

; M551                    ; No Machine Password
; M540 PBE:EF:DE:AD:FE:ED ; Set MAC address
M552 P192.168.69.32 S1    ; Set IP address and enable networking
;M552 P0.0.0.0 S1         ; Set IP address and enable networking
