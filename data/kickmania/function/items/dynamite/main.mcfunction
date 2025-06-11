execute at @s if block ~ ~ ~ water on passengers run kill @s
execute at @s if block ~ ~ ~ water run function kickmania:game/schedule/end_turn
execute at @s if block ~ ~ ~ water run playsound block.fire.extinguish ambient @a
execute at @s if block ~ ~ ~ water run kill @s

execute if score @s timer matches ..20 at @s run function kickmania:items/dynamite/explode
execute at @s run particle minecraft:flame ~ ~1.15 ~ 0 0.1 0 0.005 1
scoreboard players operation $timer temp = @s timer
scoreboard players operation $timer temp /= $20 const
execute on passengers run data modify entity @s text set value '{"score":{"name": "$timer","objective": "temp"},"bold":true}'

scoreboard players operation $temp0 temp = @s timer
scoreboard players operation $temp0 temp %= $3 const

execute if score $temp0 temp matches 0 if score @s timer matches 30.. at @s run playsound kickmania:sfx_fuse ambient @a
scoreboard players remove @s timer 1