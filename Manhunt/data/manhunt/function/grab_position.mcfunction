execute as @e[tag=hunted] at @s if dimension minecraft:overworld store result storage manhunt:compass_data_overworld X int 1 run data get entity @s Pos[0]
execute as @e[tag=hunted] at @s if dimension minecraft:overworld store result storage manhunt:compass_data_overworld Y int 1 run data get entity @s Pos[1]
execute as @e[tag=hunted] at @s if dimension minecraft:overworld store result storage manhunt:compass_data_overworld Z int 1 run data get entity @s Pos[2]

execute as @e[tag=hunted] at @s if dimension minecraft:the_nether store result storage manhunt:compass_data_nether X int 1 run data get entity @s Pos[0]
execute as @e[tag=hunted] at @s if dimension minecraft:the_nether store result storage manhunt:compass_data_nether Y int 1 run data get entity @s Pos[1]
execute as @e[tag=hunted] at @s if dimension minecraft:the_nether store result storage manhunt:compass_data_nether Z int 1 run data get entity @s Pos[2]