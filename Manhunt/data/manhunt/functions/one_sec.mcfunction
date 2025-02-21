#TODO compass specific tag

#Prevent runners from having compass
execute if score Temp manhunt_enabled matches 1 run clear @a[team=runners] minecraft:compass

#Prevent a late joiner from having a compass
execute if score Temp manhunt_enabled matches 1 if score Starts: manhunt_display matches 1.. run clear @a[team=hunters] minecraft:compass

#Game over detection (runners)
execute if score Temp manhunt_enabled matches 1 unless entity @e[team=runners,tag=!manhunt_died] run function manhunt:decide_winners

#Game over detection (hunters)
execute if score Temp manhunt_enabled matches 1 unless entity @a[team=hunters] run function manhunt:decide_winners

#Game over detection (dragon death)
execute if block 1 61 0 minecraft:end_portal run function manhunt:dragon_death

execute if score Temp manhunt_enabled matches 1 if score Starts: manhunt_display matches 0 as @a[team=hunters] unless entity @s[nbt={Inventory:[{id:"minecraft:compass"}]}] run give @s minecraft:compass

function manhunt:grab_position

execute if score Temp manhunt_enabled matches 1 if score Starts: manhunt_display matches 0 as @a[team=hunters] at @s if predicate manhunt:in_overworld run function manhunt:update_compass_overworld
execute if score Temp manhunt_enabled matches 1 if score Starts: manhunt_display matches 0 as @a[team=hunters] at @s if predicate manhunt:in_nether run function manhunt:update_compass_nether

execute if score Starts: manhunt_display matches 1.. run scoreboard players remove Starts: manhunt_display 1

execute if score Starts: manhunt_display matches 1.. run effect give @a[team=hunters] minecraft:slowness 2 255
execute if score Starts: manhunt_display matches 1.. run effect give @a[team=hunters] minecraft:blindness 2 255
execute if score Starts: manhunt_display matches 1.. run effect give @a[team=hunters] minecraft:mining_fatigue 2 255
execute if score Starts: manhunt_display matches 1.. run effect give @a[team=hunters] minecraft:weakness 2 255

scoreboard players set Temp manhunt_ticks 0
