execute as @e[team=runners,tag=!manhunt_true_runner,tag=!manhunt_fake_runner] run function manhunt:handle_fake_runner

execute if score Temp manhunt_enabled matches 1 run function manhunt:lead_second
execute if score Temp manhunt_enabled matches 2 run function manhunt:hunt_second

scoreboard players set Temp manhunt_ticks 0