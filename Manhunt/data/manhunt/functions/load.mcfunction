scoreboard objectives add manhunt_ticks dummy
scoreboard objectives add manhunt_enabled dummy

scoreboard objectives add manhunt_display dummy
scoreboard objectives modify manhunt_display displayname ""
scoreboard objectives setdisplay sidebar manhunt_display

scoreboard objectives add manhunt_deaths deathCount
scoreboard objectives add manhunt_start_time dummy

scoreboard objectives add manhunt_x dummy
scoreboard objectives add manhunt_y dummy
scoreboard objectives add manhunt_z dummy

scoreboard objectives add manhunt_x_overworld dummy
scoreboard objectives add manhunt_y_overworld dummy
scoreboard objectives add manhunt_z_overworld dummy

scoreboard objectives add manhunt_x_nether dummy
scoreboard objectives add manhunt_y_nether dummy
scoreboard objectives add manhunt_z_nether dummy

scoreboard objectives add manhunt_distance dummy

execute unless score Temp manhunt_start_time matches -2147483647.. run scoreboard players set Temp manhunt_start_time 45

team add hunters "hunters"
team add runners "runners"

team modify hunters color blue
team modify runners color red


tellraw @a {"text":"Manhunt (1.17.x, 1.18.x, 1.19.x, 1.20.x, 1.21.x)-2 Loaded","bold":true,"color":"gold"}