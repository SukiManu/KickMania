bossbar set minecraft:progress players
scoreboard players set $debug kickmania.global 0


gamerule commandModificationBlockLimit 99999

scoreboard players set $next_player kickmania.global 0
scoreboard players set $water_level kickmania.global 24
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
clear @s
gamemode spectator @s
execute store result bossbar kickmania:current_fighter max run scoreboard players get $health kickmania.global
tp @s ~ ~ ~


tp 0-0-D9-0-016300000000 ~ 50 ~

execute store result entity 0-0-D9-0-016300000000 transformation.scale[0] float 1.0 run data get storage snbt:data current_map.x
execute store result entity 0-0-D9-0-016300000000 transformation.scale[2] float 1.0 run data get storage snbt:data current_map.z
execute store result entity 0-0-D9-0-016300000000 transformation.translation[0] float -0.5 run data get storage snbt:data current_map.x
execute store result entity 0-0-D9-0-016300000000 transformation.translation[2] float -0.5 run data get storage snbt:data current_map.z

tp 0-0-D7-0-016300000000 ~ 150 ~
gamemode spectator @s
tag @s add in_queue
tag @s[tag=in_queue] add alive
execute store result score $in_game_player_count kickmania.global if entity @a[tag=in_queue]
scoreboard players reset @s air_strike
execute store result storage temp args.in_game_player_count int 1.0 run scoreboard players get $in_game_player_count kickmania.global
function kickmania:game/team/init with storage minecraft:temp args

execute as @s run function kickmania:game/tell_player_team

data remove storage temp in_game_player_count
tag @s remove plays
scoreboard players set $timer_type kickmania.global 0
gamemode spectator @s[tag=!plays]
scoreboard players set $game_running kickmania.global 1

#data remove storage temp args
data remove storage temp length
data remove storage temp aliases
data remove storage temp colors

tellraw @a[tag=alive] {"text":"The game will start in 5 seconds :D\nGL&HF!","color":"green","bold":true}
scoreboard players set $timer kickmania.global 120
scoreboard players set $timer_type kickmania.global 0