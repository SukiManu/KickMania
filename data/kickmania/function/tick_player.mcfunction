execute unless score @s player.id matches 1.. run function kickmania:init_player


execute if score @s flag matches 0.. run function kickmania:editor/flag/get
execute if score @s timer matches 20.. run scoreboard players remove @s timer 1

execute if score @s joined matches 1.. run function kickmania:player/on_join

execute if entity @s[tag=editing_book] run function kickmania:editor/team_name/main

execute if score @s player_input matches 2.. run function kickmania:player/request_input


execute if score @s spawn matches 1.. run function kickmania:player/tp_to_spawn


execute unless score @s parkour_time matches 1.. positioned -34.5 -57 -22 if entity @s[distance=..2] run scoreboard players add @s parkour_time 1
execute positioned -34.5 -57 -22 if entity @s[distance=..2] run team join black @p

execute if score @s parkour_time matches 1.. run function kickmania:tick_parkour


