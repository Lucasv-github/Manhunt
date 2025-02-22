scoreboard objectives add manhunt_ticks dummy
scoreboard objectives add manhunt_enabled dummy
scoreboard objectives add manhunt_end dummy

scoreboard objectives add manhunt_display dummy
scoreboard objectives modify manhunt_display displayname ""
scoreboard objectives setdisplay sidebar manhunt_display

scoreboard objectives add manhunt_deaths deathCount
scoreboard objectives add manhunt_lead dummy

scoreboard objectives add manhunt_x dummy
scoreboard objectives add manhunt_y dummy
scoreboard objectives add manhunt_z dummy

scoreboard objectives add manhunt_x_o dummy
scoreboard objectives add manhunt_y_o dummy
scoreboard objectives add manhunt_z_o dummy

scoreboard objectives add manhunt_x_n dummy
scoreboard objectives add manhunt_y_n dummy
scoreboard objectives add manhunt_z_n dummy

scoreboard objectives add manhunt_dst dummy

execute unless score Temp manhunt_lead matches -2147483647.. run scoreboard players set Temp manhunt_lead 45

team add hunters "hunters"
team add runners "runners"

team modify hunters color blue
team modify runners color red


tellraw @a {"text":"Manhunt (1.17.x, 1.18.x, 1.19.x, 1.20.x, 1.21.x)-2 Loaded","bold":true,"color":"gold"}