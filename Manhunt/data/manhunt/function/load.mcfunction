scoreboard objectives add manhunt_ticks dummy

scoreboard objectives add manhunt_display dummy
scoreboard objectives modify manhunt_display displayname ""
scoreboard objectives setdisplay sidebar manhunt_display

tellraw @a {"text":"Manhunt 1.21.4-0 Loaded","bold":true,"color":"gold"}