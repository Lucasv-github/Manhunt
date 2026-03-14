function manhunt:remove_compass_new
function manhunt:remove_compass_old

tellraw @s[tag=!manhunt_not_in_nether] {"text":"Looks like the runner hasn't been in the Nether yet...","color":"gold"}
tag @s add manhunt_not_in_nether