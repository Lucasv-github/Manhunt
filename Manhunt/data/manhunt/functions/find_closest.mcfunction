execute if score Temp manhunt_distance > @s manhunt_distance run tag @e remove manhunt_closest
execute if score Temp manhunt_distance > @s manhunt_distance run tag @s add manhunt_closest
execute if score Temp manhunt_distance > @s manhunt_distance run scoreboard players operation Temp manhunt_distance = @s manhunt_distance