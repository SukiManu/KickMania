scoreboard players add @s walls_hit 1
execute if entity @s[tag=small_banana] run return run scoreboard players set @s destroy_timer 30

scoreboard players operation @s motion.y *= $bounce_strength kickmania.global

execute store result entity @s Motion[1] double -0.00022 run scoreboard players get @s motion.y
scoreboard players operation @s motion.y *= $-1 const
scoreboard players operation $motion.y temp = @s motion.y

execute unless score $motion.y temp matches 0 at @s[tag=amen] run playsound kickmania:sfx_holygrenadeimpact ambient @a ~ ~ ~ 1
execute unless score $motion.y temp matches 0 at @s[tag=banana] run playsound kickmania:sfx_bananaimpact ambient @a ~ ~ ~ 1
#execute unless score $motion.y temp matches 0 at @s[tag=small_banana] run playsound kickmania:sfx_bananaimpact ambient @a ~ ~ ~ 1 1.5

#say reflect y