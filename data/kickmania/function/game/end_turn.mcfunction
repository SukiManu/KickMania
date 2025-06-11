tellraw @a [{"selector":"@s"},{"text":" has ended their turn.","color":"#ffA0C0"}]
gamemode spectator @s
tag @s remove plays
tag @s add spectating
attribute @s entity_interaction_range base reset
attribute @s minecraft:gravity base reset
execute if score @s platform_use matches 1 run function kickmania:items/platform/cancel

execute if score @s used_jetpack matches 1 run clear @s heart_of_the_sea[minecraft:custom_data~{jetpack:true}] 1
execute if score @s boomstick_shots matches 0..1 run clear @s heart_of_the_sea[minecraft:custom_data~{boomstick:true}] 1

execute if score @s air_strike matches 1 run return run function kickmania:items/airplane/stop
execute at @s as @e[type=husk,tag=in_control,limit=1] run function kickmania:fighter/end_turn
execute if score @s[tag=ignited_grenade] timer matches 20.. at @s run function kickmania:items/classic/explode
clear @s iron_boots