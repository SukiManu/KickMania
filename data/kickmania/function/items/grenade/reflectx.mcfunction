scoreboard players add @s walls_hit 1
execute if entity @s[tag=small_banana] run return run scoreboard players set @s destroy_timer 30

scoreboard players operation @s motion.x /= $2 const
execute store result entity @s Motion[0] double -0.0014 run scoreboard players get @s motion.x
scoreboard players operation @s motion.x *= $-1 const

scoreboard players operation $motion.x temp = @s motion.x

execute unless score $motion.x temp matches 0 at @s[tag=amen] run playsound kickmania:sfx_holygrenadeimpact ambient @a ~ ~ ~ 1
execute unless score $motion.x temp matches 0 at @s[tag=banana] run playsound kickmania:sfx_bananaimpact ambient @a ~ ~ ~ 1
#execute unless score $motion.x temp matches 0 at @s[tag=small_banana] run playsound kickmania:sfx_bananaimpact ambient @a ~ ~ ~ 1 1.5


#say reflect x