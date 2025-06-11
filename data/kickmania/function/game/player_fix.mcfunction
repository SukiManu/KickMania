gamemode spectator @s
tag @s remove plays
tag @s add spectating
scoreboard players operation $connection player.id = @s player.id
execute at @s as @e[type=husk,tag=in_control,limit=1] run function kickmania:fighter/end_turn
execute if score @s air_strike matches 1 run return run function kickmania:items/airplane/stop

