scoreboard players add @s parkour 1
execute in overworld run tp @s -44 -57 -34
execute store result storage temp player.id int 1.0 run scoreboard players get @s player.id
function kickmania:player/store_parkour_time with storage temp player
scoreboard players set @s chest_open 0

