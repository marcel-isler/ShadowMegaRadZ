;_____________Mesh Bed_____________
M291 P"Do you want to Mesh the Bed?" S3
M291 P"Meshing the bed, this will home the printer, heat the bed and nozzle and then give you further instructions." S0

M140 S70 ; Start heating bed to 70C

G28 ; Home all

M190 S70 ; wait for heat bed to get to 70C

G32 ; Autotram the bed

G29 S2 ; Disable bed mesh
G29 S2 ; Disable bed mesh

G29 ; mesh the bed

;Finish song
M300 S1500 P200
G4 P250
M300 S1000 P200
G4 P250
M300 S500 P200
G4 P250
M300 S1500 P200
G4 P250
M300 S1000 P200
G4 P250
M300 S500 P200
G4 P250
M300 S1500 P200
G4 P250
M300 S1000 P200
G4 P250
M300 S3500 P200
G4 P250
M300 S3500 P200
G4 P250
M300 S3500 P200
G4 P250
M300 S3500 P200
G4 P250
