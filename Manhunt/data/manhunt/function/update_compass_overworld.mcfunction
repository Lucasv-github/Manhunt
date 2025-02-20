#say uco

tag @s add tracker_temp

#Distance calculation
execute as @e[team=runners] store result score @s manhunt_x run data get entity @e[tag=tracker_temp,limit=1] Pos[0]
execute as @e[team=runners] store result score @s manhunt_y run data get entity @e[tag=tracker_temp,limit=1] Pos[1]
execute as @e[team=runners] store result score @s manhunt_z run data get entity @e[tag=tracker_temp,limit=1] Pos[2]

execute as @e[team=runners] run scoreboard players operation @s manhunt_x -= @s manhunt_x_overworld
execute as @e[team=runners] run scoreboard players operation @s manhunt_y -= @s manhunt_y_overworld
execute as @e[team=runners] run scoreboard players operation @s manhunt_z -= @s manhunt_z_overworld

execute as @e[team=runners] run scoreboard players operation @s manhunt_x *= @s manhunt_x
execute as @e[team=runners] run scoreboard players operation @s manhunt_y *= @s manhunt_y
execute as @e[team=runners] run scoreboard players operation @s manhunt_z *= @s manhunt_z

execute as @e[team=runners] run scoreboard players set @s manhunt_distance 0
execute as @e[team=runners] run scoreboard players operation @s manhunt_distance += @s manhunt_x
execute as @e[team=runners] run scoreboard players operation @s manhunt_distance += @s manhunt_y
execute as @e[team=runners] run scoreboard players operation @s manhunt_distance += @s manhunt_z

scoreboard players set Temp manhunt_distance 2147483647

execute as @e[team=runners] run function manhunt:find_closest

execute unless entity @e[tag=manhunt_previous,tag=manhunt_closest] run tellraw @s [{"text":""},{"text":"Now tracking: ","bold":true,"color":"gold"},{"selector":"@e[tag=manhunt_closest]"}]
execute unless entity @e[tag=manhunt_previous,tag=manhunt_closest] run tag @e remove manhunt_previous

tag @e[tag=manhunt_closest] add manhunt_previous

execute store result storage manhunt:compass_data X int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_x_overworld
execute store result storage manhunt:compass_data Y int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_y_overworld
execute store result storage manhunt:compass_data Z int 1 run scoreboard players get @e[tag=manhunt_closest,limit=1] manhunt_z_overworld

function manhunt:set_compass_overworld with storage manhunt:compass_data

tag @s remove tracker_temp