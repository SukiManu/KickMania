scoreboard players add @s walls_hit 1
execute if entity @s[tag=small_banana] run return run scoreboard players set @s destroy_timer 30

scoreboard players operation @s motion.z *= $bounce_strength kickmania.global

execute store result entity @s Motion[2] double -0.0001 run scoreboard players get @s motion.z
scoreboard players operation @s motion.z *= $-1 const
scoreboard players operation $motion.z temp = @s motion.z
#tellraw @a [{"nbt":"Motion","entity": "@s"}," <> ", {"score":{"name": "@s","objective": "motion.z"}}]

execute unless score $motion.z temp matches 0 at @s[tag=amen] run playsound kickmania:sfx_holygrenadeimpact ambient @a ~ ~ ~ 1
execute unless score $motion.z temp matches 0 at @s[tag=banana] run playsound kickmania:sfx_bananaimpact ambient @a ~ ~ ~ 1
#execute unless score $motion.z temp matches 0 at @s[tag=small_banana] run playsound kickmania:sfx_bananaimpact ambient @a ~ ~ ~ 1 1.5


