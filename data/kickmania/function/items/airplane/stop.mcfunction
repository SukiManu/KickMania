scoreboard players reset @s air_strike
kill @e[type=text_display,tag=indicator]
attribute @s minecraft:gravity base set 0.07
execute at @n[type=husk,tag=in_control] run tp @s ~ ~ ~
tag @n[type=husk,tag=in_control] remove in_control
