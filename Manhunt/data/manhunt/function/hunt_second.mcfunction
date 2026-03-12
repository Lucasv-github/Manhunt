execute as @e[team=runners] unless score @s manhunt_rid matches -2147483647.. run execute store result score @s manhunt_rid run data get entity @s UUID[0]

#Prevent a late joiner from having a compass
execute if score Starts: manhunt_display matches 1.. run clear @a[team=hunters] minecraft:compass

#Give runners compass
execute as @a[team=hunters] unless items entity @s inventory.* minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] unless items entity @s hotbar.* minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}] run give @s minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]

function manhunt:grab_position

execute as @a[team=hunters] at @s if predicate manhunt:in_overworld run function manhunt:update_compass_overworld
execute as @a[team=hunters] at @s if predicate manhunt:in_nether run function manhunt:update_compass_nether

#Game over detection (runners, only if no players left/none at all)
execute if score Temp manhunt_p_left matches ..0 unless entity @e[team=runners,tag=!manhunt_died,tag=!manhunt_fake_runner] run function manhunt:decide_winners

#Game over detection (hunters)
execute unless entity @a[team=hunters] run function manhunt:decide_winners

#Game over detection (dragon death)
execute in minecraft:the_end as @a[predicate=manhunt:in_end] if score Temp manhunt_end matches 1.. run scoreboard players remove Temp manhunt_end 1
execute if score Temp manhunt_end matches 0 unless entity @e[type=minecraft:ender_dragon] run function manhunt:dragon_death