execute unless block ~ ~ ~ #kickmania:pass_thru run return run function kickmania:items/airplane/tp_indicator
#execute if score $i temp matches 1 run return run function kickmania:items/airplane/tp_indicator
scoreboard players remove $i temp 1
execute if score $i temp matches 0.. positioned ^ ^ ^.5 run function kickmania:items/airplane/raycast
