scoreboard players reset @a manhunt_x_o
scoreboard players reset @a manhunt_y_o
scoreboard players reset @a manhunt_z_o

scoreboard players reset @a manhunt_x_n
scoreboard players reset @a manhunt_y_n
scoreboard players reset @a manhunt_z_n

tag @e remove manhunt_died
tag @e remove manhunt_previous

scoreboard players set Temp manhunt_enabled 1
scoreboard players set Temp manhunt_end 10

scoreboard players operation Starts: manhunt_display = Temp manhunt_lead