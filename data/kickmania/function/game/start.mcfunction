bossbar set minecraft:progress players
scoreboard players reset @a fall_time
execute store result score $in_game_player_count kickmania.global if entity @a[tag=in_queue]

execute if score $in_game_player_count kickmania.global matches 0 run return run function kickmania:game/end
gamerule commandModificationBlockLimit 99999

scoreboard players set $next_player kickmania.global 0
scoreboard players set $water_level kickmania.global 0
scoreboard players set $round kickmania.global 0
scoreboard players reset * data
scoreboard players set $minions_left data 99999
scoreboard players display name $minions_left data {"text":"Minions Left:","color":"green"}
scoreboard players display numberformat $minions_left data blank
scoreboard objectives setdisplay sidebar data

scoreboard players set $blank data -1
scoreboard players display name $blank data ""
scoreboard players display numberformat $blank data blank

scoreboard players set $round data -2
scoreboard players display name $round data {"text":"Round: ","color":"green"}
scoreboard players display numberformat $round data fixed "0"

kill @e[type=item_display,tag=grave]
kill @e[type=item]
kill @e[type=husk]
kill @e[type=text_display,tag=hp_display]
kill @e[type=text_display,tag=action_display]
kill @e[type=minecraft:block_display,tag=crate]
clear @a[tag=in_queue]
gamemode spectator @a[tag=in_queue]
execute store result bossbar kickmania:current_fighter max run scoreboard players get $health kickmania.global
tp @a[tag=in_queue] ~ ~ ~


gamemode spectator @a

tag @a[tag=in_queue] add alive
tag @a[tag=in_queue] add in_game
scoreboard players reset @a air_strike
execute store result storage temp args.in_game_player_count int 1.0 run scoreboard players get $in_game_player_count kickmania.global
execute at 0-0-D7-0-016300000000 run function kickmania:game/team/init with storage minecraft:temp args

execute as @a[tag=in_game] run function kickmania:game/tell_player_team

data remove storage temp in_game_player_count
tag @a remove plays
#function kickmania:game/next_turn
#scoreboard players set $timer_type kickmania.global 0
#gamemode spectator @a[tag=!plays]
scoreboard players set $game_running kickmania.global 1

data remove storage temp args
data remove storage temp length
data remove storage temp aliases
data remove storage temp colors
scoreboard players set $timer_type kickmania.global 0
scoreboard players set $timer kickmania.global 120
tellraw @a {"text":"The game will start in 5 seconds. GL&HF","color":"green","bold":true}
title @a title {"text":"Press E for items!","bold":true,"color":"green"}
kill @e[type=block_display,tag=view_range]