(**** start.gcode for Replicator 2, single head ****)
M103 (disable RPM)
M73 P0 (enable build progress)
G21 (set units to mm)
G90 (set positioning to absolute)
M104 S220 T0 (set extruder temperature)
(**** begin homing ****)
G162 X Y F2500 (home XY axes maximum)
G161 Z F1100 (home Z axis minimum)
G92 Z-5 (set Z to -5)
G1 Z0.0 (move Z to "0")
G161 Z F100 (home Z axis minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
(**** end homing ****)
G1 X-141 Y-74 Z50 F3300.0 (move to waiting position)
G130 X20 Y20 Z20 A20 B20 (Lower stepper Vrefs while heating)
M6 T0 (wait for toolhead, and HBP to reach temperature)
G130 X127 Y127 Z40 A127 B127 (Set Stepper motor Vref to defaults)
M108 T0
G0 X-141 Y-74 (Position Nozzle)
G0 Z0.6      (Position Height)
G92 E0 (Set E to 0)
G1 E4 F300 (Extrude 4mm of filament)
G92 E0 (Set E to 0 again)
(**** end of start.gcode ****)
