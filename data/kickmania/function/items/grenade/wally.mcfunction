execute store result score $motion.y temp run data get entity @s Motion[1] 1000

scoreboard players operation $temp0 temp = $motion.y temp
scoreboard players operation $temp0 temp -= @s motion.y

execute unless score $temp0 temp matches -120..120 if score $motion.y temp matches 0 run function kickmania:items/grenade/reflecty
scoreboard players operation @s motion.y = $motion.y temp
