execute if score @s go_to_timer matches 1 run function kickmania:tutorial/go_to1
scoreboard players remove @s[scores={go_to_timer=1..}] go_to_timer 1

scoreboard players set $tick_tutorial temp 1
scoreboard players operation $seconds temp = @s timer
scoreboard players operation $seconds temp /= $20 const
scoreboard players remove @s[scores={timer=20..}] timer 1
execute if score @s timer matches 20.. run title @s actionbar {"score":{"name": "$seconds","objective": "temp"},"color":"red","bold":true}

execute if score @s tutorial_death matches 1.. run return run function kickmania:tutorial/leave
execute store result score $y temp run data get entity @s Pos[1]
execute if score $y temp matches ..20 run return run function kickmania:tutorial/leave

advancement revoke @s only kickmania:tutorial_tick