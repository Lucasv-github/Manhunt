#TODO compass specific tag
clear @a[tag=hunted] compass
execute unless entity @e[tag=hunted] run clear @a[tag=hunter] minecraft:compass

execute if entity @e[tag=hunted] as @a[tag=hunter] unless entity @s[nbt={Inventory:[{id:"minecraft:compass"}]}] run give @s minecraft:compass

function manhunt:grab_position

execute if entity @e[tag=hunted] as @a[tag=hunter] at @s if dimension minecraft:overworld run function manhunt:set_compass_overworld with storage manhunt:compass_data_overworld
execute if entity @e[tag=hunted] as @a[tag=hunter] at @s if dimension minecraft:the_nether run function manhunt:set_compass_nether with storage manhunt:compass_data_nether

execute if score Starts: manhunt_display matches 1.. run scoreboard players remove Starts: manhunt_display 1

execute if score Starts: manhunt_display matches 1.. run effect give @a[tag=hunter] minecraft:slowness 2 255
execute if score Starts: manhunt_display matches 1.. run effect give @a[tag=hunter] minecraft:blindness 2 255
execute if score Starts: manhunt_display matches 1.. run effect give @a[tag=hunter] minecraft:mining_fatigue 2 255
execute if score Starts: manhunt_display matches 1.. run effect give @a[tag=hunter] minecraft:weakness 2 255

scoreboard players set Temp manhunt_ticks 0