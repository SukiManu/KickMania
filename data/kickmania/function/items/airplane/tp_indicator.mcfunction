tp @n[type=text_display,tag=strike_indicator] ^ ^ ^-2 ~ -90
execute store result score $rot temp run data get entity @p[tag=plays] Rotation[0] 100
scoreboard players add $rot temp 18000
execute as @e[type=text_display,tag=indicator] store result entity @s Rotation[0] float 0.01 run scoreboard players get $rot temp
