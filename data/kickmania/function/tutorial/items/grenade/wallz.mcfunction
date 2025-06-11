execute store result score $motion.z temp run data get entity @s Motion[2] 100
scoreboard players operation $temp0 temp = $motion.z temp
scoreboard players operation $temp0 temp -= @s motion.z

execute unless score $temp0 temp matches -10..10 if score $motion.z temp matches 0 run function kickmania:tutorial/items/grenade/reflectz
scoreboard players operation @s motion.z = $motion.z temp
