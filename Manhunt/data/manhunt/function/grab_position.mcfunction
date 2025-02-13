execute as @e[team=runners] at @s if dimension minecraft:overworld store result score @s manhunt_x_overworld run data get entity @s Pos[0]
execute as @e[team=runners] at @s if dimension minecraft:overworld store result score @s manhunt_y_overworld run data get entity @s Pos[1]
execute as @e[team=runners] at @s if dimension minecraft:overworld store result score @s manhunt_z_overworld run data get entity @s Pos[2]

execute as @e[team=runners] at @s if dimension minecraft:the_nether store result score @s manhunt_x_nether run data get entity @s Pos[0]
execute as @e[team=runners] at @s if dimension minecraft:the_nether store result score @s manhunt_y_nether run data get entity @s Pos[1]
execute as @e[team=runners] at @s if dimension minecraft:the_nether store result score @s manhunt_z_nether run data get entity @s Pos[2]