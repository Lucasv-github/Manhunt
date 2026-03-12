clear @s minecraft:compass[minecraft:custom_data={Manhunt_tracker:1b}]
tellraw @s[tag=!manhunt_not_in_nether] {text:"Looks like the runner hasn't been in the Nether yet...",color:"gold"}
tag @s add manhunt_not_in_nether