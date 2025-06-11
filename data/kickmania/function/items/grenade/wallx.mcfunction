execute store result score $motion.x temp run data get entity @s Motion[0] 1000
scoreboard players operation $temp0 temp = $motion.x temp
scoreboard players operation $temp0 temp -= @s motion.x

execute unless score $temp0 temp matches -10..10 if score $motion.x temp matches 0 run function kickmania:items/grenade/reflectx
scoreboard players operation @s motion.x = $motion.x temp
