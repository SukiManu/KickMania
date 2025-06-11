
#execute if score @s using_item matches -1 run summon block_display ~ ~-2 ~ {Tags:["collider"],Passengers:[{id:"minecraft:slime",Tags:["collider"],Size:0,NoAI:true,Invulnerable:true,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}]}
execute if score @s using_item matches -1 run scoreboard players set @s used_jetpack 1
#execute if score @s using_item matches 0 at @s run tp @e[type=block_display,tag=collider] ^ ^ ^-.05
scoreboard players remove @s jetpack_fuel 1
scoreboard players operation $jetpack_fuel_left_seconds temp = @s jetpack_fuel
scoreboard players operation $jetpack_fuel_left_seconds temp /= $20 const
bossbar set kickmania:jetpack_fuel players @s
scoreboard players operation $temp0 temp = @s jetpack_fuel
scoreboard players remove $temp0 temp 20
execute store result bossbar kickmania:jetpack_fuel value run scoreboard players get $temp0 temp
item replace entity @s armor.feet with iron_boots
stopsound @s * item.armor.equip_iron
execute positioned ^.2 ^ ^ run particle flame ~ ~ ~ 0 0 0 0.01 1
execute positioned ^-.2 ^ ^ run particle flame ~ ~ ~ 0 0 0 0.01 1
execute positioned ^.2 ^ ^ run particle electric_spark ~ ~ ~ 0.02 0.1 0.02 0.8 1
execute positioned ^-.2 ^ ^ run particle electric_spark ~ ~ ~ 0.02 0.1 0.02 0.08 1
execute if score @s jetpack_fuel matches ..20 run return run function kickmania:items/jetpack/out_of_fuel
execute at @s run playsound minecraft:item.elytra.flying ambient @a ~ ~ ~ 0.4 0.1
effect give @s minecraft:levitation 1 5 true