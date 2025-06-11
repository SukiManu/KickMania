scoreboard players add @s timer 1
execute if score @s timer matches ..25 run spectate @s @a[tag=next_player,limit=1]

execute if score @s timer matches 1 at @a[tag=next_player,limit=1] run tp @s ~ ~1.65 ~ ~ ~


execute if score @s timer matches 3 run spectate @s @p[tag=next_player,limit=1]
execute if score @s timer matches 3 run data modify entity @s teleport_duration set value 10
execute if score @s timer matches 4 facing entity @e[type=husk,tag=in_control,limit=1] eyes run tp @s ~ ~ ~ ~ ~


execute if score @s timer matches 16 run data modify entity @s teleport_duration set value 20
execute if score @s timer matches 17 facing entity @e[type=husk,tag=in_control,limit=1] eyes at @e[type=husk,tag=in_control,limit=1] run tp @s ~ ~1.65 ~ ~ ~


execute if score @s timer matches 38.. as @a[tag=next_player,limit=1] run function kickmania:game/init_player
execute if score @s timer matches 38.. run kill @s
execute if score @s timer matches 38.. run scoreboard players reset @s timer

