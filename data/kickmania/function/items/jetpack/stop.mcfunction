effect clear @s minecraft:levitation
# tp @e[type=block_display,tag=collider,limit=1] 0 -100 0
# kill @e[type=slime,tag=collider,limit=1]
# kill @e[type=block_display,tag=collider,limit=1]
stopsound @a ambient minecraft:item.elytra.flying
bossbar set kickmania:jetpack_fuel players
clear @s iron_boots