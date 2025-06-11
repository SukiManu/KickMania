function kickmania:items/platform/clear/start

scoreboard players set $timer_type kickmania.global -1
execute as @e[type=husk] on passengers run kill @s
execute as @e[type=husk] run kill @s
scoreboard players add @a[tag=alive,limit=1] kickmania.wins 1
tag @a remove plays
tag @a remove next_player
tag @a remove can_use_item
tag @a remove spectating
gamemode adventure @a[tag=in_game]
execute in overworld run tp @a[tag=in_game] -44 -57 -34 -90 0
scoreboard players set $game_running kickmania.global 0
bossbar set kickmania:current_fighter players
bossbar set kickmania:timer players
execute as @a run attribute @s minecraft:entity_interaction_range base reset
execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:step_height base reset
scoreboard objectives setdisplay sidebar
execute in overworld run spawnpoint @a[tag=in_game] -44 -57 -34 -90
tag @a[tag=in_game] remove in_game
kill @e[type=block_display,tag=view_range]
tellraw @a {"text":"Game ended","color":"yellow"}