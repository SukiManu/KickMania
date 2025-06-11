scoreboard players operation @s fall_time /= $20 const
scoreboard players remove @s fall_time 25
scoreboard players operation @s fall_time *= @s fall_time
scoreboard players operation @s fall_time /= $1000 const
scoreboard players operation @s fall_time *= $damage_multiplier kickmania.global
scoreboard players operation @s fall_time /= $100 const
scoreboard players operation @n[type=husk,tag=in_control,limit=1] damage_taken = @s fall_time
tag @n[type=husk,tag=in_control,limit=1] add damaged
execute as @a[tag=plays,limit=1] run function kickmania:game/end_turn
function kickmania:game/schedule/damage_dealt
