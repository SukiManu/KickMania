execute store result score $motion.z temp run data get entity @s Motion[0] 1000
scoreboard players operation $temp0 temp = $motion.z temp
scoreboard players operation $temp0 temp -= @s motion.z

execute unless score $temp0 temp matches -10..10 if score $motion.y temp matches 0 run function kickmania:items/grenade/reflectz
scoreboard players operation @s motion.z = $motion.z temp