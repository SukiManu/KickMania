#execute if score $ytemp snbt matches 0 run scoreboard players set $start snbt 0
execute if score $tick snbt matches 0 if score $run snbt matches 1 if score $ytemp snbt matches 1.. run function snbt:run with storage snbt:data vars

execute if score $ytemp snbt matches 1.. if score $save snbt matches 1 as @a if items entity @s weapon.offhand heart_of_the_sea[minecraft:custom_data={save:true}] run function snbt:save with storage snbt:data vars
scoreboard players add $tick snbt 1
execute if score $tick snbt matches 5.. run scoreboard players set $tick snbt 0

execute as @a[scores={snbt.use_wand=1..}] run function snbt:wand/use

