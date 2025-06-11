scoreboard players add @s air_strike 1
execute if score @s air_strike matches 2.. run return run function kickmania:items/airplane/deploy
execute at @s run tp @n[type=husk,tag=in_control] ~ ~ ~
attribute @s minecraft:gravity base set 0
tp @s ~ ~50 ~
execute summon text_display run function kickmania:items/airplane/spawn_indicator
