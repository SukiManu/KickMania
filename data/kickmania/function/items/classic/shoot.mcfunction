clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{grenade:1b}] 1

tag @s[gamemode=!creative] remove can_use_item
tag @s remove ignited_grenade

function kickmania:get_sin_cos
function kickmania:get_sin_cos

summon item_display ~ ~ ~ {item:{id:"heart_of_the_sea",count:1,components:{item_model:"kickmania:grenade"}},Tags:["grenade","item"],teleport_duration:1,view_range:99,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0.0f,0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @n[type=item_display] store result score @s scale_x run data get entity @s transformation.scale[0] 700
execute as @n[type=item_display] store result score @s scale_y run data get entity @s transformation.scale[1] 700
execute as @n[type=item_display] store result score @s scale_z run data get entity @s transformation.scale[2] 700

scoreboard players operation $x temp = $sin temp
scoreboard players operation $z temp = $cos temp
scoreboard players operation $y temp = $pitch temp

scoreboard players operation $x temp *= $charge weapon
scoreboard players operation $z temp *= $charge weapon
scoreboard players operation $y temp *= $charge weapon
scoreboard players operation $x temp /= $150 const
scoreboard players operation $y temp /= $100 const
scoreboard players operation $z temp /= $150 const


execute store result storage temp motion.x double 0.001 run scoreboard players get $x temp
execute store result storage temp motion.y double 0.001 run scoreboard players get $y temp
execute store result storage temp motion.z double 0.001 run scoreboard players get $z temp


scoreboard players set $bla0 temp 0
scoreboard players set $bla1 temp 0
scoreboard players set $bla2 temp 0

function kickmania:items/classic/spawn_item with storage temp motion
ride @n[type=item_display,tag=grenade] mount @n[type=item,tag=classic]

scoreboard players set $charge weapon 0
scoreboard players set $timer kickmania.global 40
