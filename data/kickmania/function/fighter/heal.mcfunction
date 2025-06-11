scoreboard players set @n[type=husk,tag=in_control] damage_taken -20
execute as @n[type=husk,tag=in_control] run function kickmania:fighter/get_damage
execute as @n[type=husk,tag=in_control] run function kickmania:fighter/init
particle happy_villager ~ ~1 ~ 1 0.7 1 0.02 15
playsound kickmania:classic_collect ambient @a ~ ~ ~