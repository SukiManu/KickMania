execute as @a run function kickmania:tick_player
execute if score $tick_tutorial temp matches 1 run function kickmania:tutorial/tick
execute if score $game_running kickmania.global matches 1 run function kickmania:game/main

execute as @e[tag=damage_display] run data modify entity @s transformation.scale set value [1.5f,1.5f,1.5f]

#execute as @a run function kickmania:test


execute if score $tick timer matches 0 run function kickmania:all_time


scoreboard players add $tick timer 1
execute if score $tick timer matches 20.. run scoreboard players set $tick timer 0