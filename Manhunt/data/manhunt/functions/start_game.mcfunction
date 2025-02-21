scoreboard players reset @a manhunt_x_overworld
scoreboard players reset @a manhunt_y_overworld
scoreboard players reset @a manhunt_z_overworld

scoreboard players reset @a manhunt_x_nether
scoreboard players reset @a manhunt_y_nether
scoreboard players reset @a manhunt_z_nether

tag @e remove manhunt_died
tag @e remove manhunt_previous

scoreboard players set Temp manhunt_enabled 1

scoreboard players operation Starts: manhunt_display = Temp manhunt_start_time