execute as @a run function manhunt:remove_compass_new
execute as @a run function manhunt:remove_compass_old

title @a title {"text":"Game over","bold":true,"color":"gold"}
scoreboard players set Temp manhunt_enabled 0
scoreboard players set Starts: manhunt_display 0