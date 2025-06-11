scoreboard players reset @s air_strike
attribute @s minecraft:gravity base set 0.07

kill @e[type=text_display,tag=indicator,limit=4]
ride @s dismount
execute at @n[type=husk,tag=in_control] run tp @s ~ ~ ~ ~ ~
tp @n[type=item,tag=new] @s

tp @n[type=husk,tag=in_control] 0 3.1 0