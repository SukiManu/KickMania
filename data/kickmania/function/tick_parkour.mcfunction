scoreboard players add @s parkour_time 1
execute positioned -34.5 -57 -27 if entity @s[distance=..3] run scoreboard players reset @s parkour_time
execute positioned -34.5 -57 -27 if entity @s[distance=..3] unless entity @a[scores={parkour_time=1..}] run scoreboard players reset * parkour_time_seconds
execute positioned -34.5 -57 -27 if entity @s[distance=..3] run scoreboard players reset @s parkour_time_seconds
execute positioned -34.5 -57 -27 if entity @s[distance=..3] run team leave @p
execute positioned -43 -57 -33 if entity @s[distance=..2] run scoreboard players reset @s parkour_time
execute positioned -43 -57 -33 if entity @s[distance=..2] unless entity @a[scores={parkour_time=1..}] run scoreboard players reset * parkour_time_seconds
execute positioned -43 -57 -33 if entity @s[distance=..2] run scoreboard players reset @s parkour_time_seconds

scoreboard players operation $temp0 temp = @s parkour_time
scoreboard players operation $temp1 temp = @s parkour_time
scoreboard players operation $temp1 temp *= $10 const
scoreboard players operation $temp1 temp /= $20 const
scoreboard players operation $temp0 temp /= $20 const
scoreboard players operation $temp2 temp = $temp0 temp
execute store result storage parkour sec int 1.0 run scoreboard players operation $temp0 temp %= $60 const
execute store result storage parkour min int 1.0 run scoreboard players operation $temp2 temp /= $60 const
execute store result storage parkour mili int 1.0 run scoreboard players operation $temp1 temp %= $10 const

execute if score @s chest_open matches 1 run function kickmania:parkour/finish
function kickmania:parkour/show_time with storage parkour

execute if score @s reset_parkour matches 1.. run tp @s -35 -57 -25
execute if score @s reset_parkour matches 1.. run scoreboard players reset @s reset_parkour

scoreboard players enable @s reset_parkour

