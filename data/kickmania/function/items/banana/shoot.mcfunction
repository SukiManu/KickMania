scoreboard players set $wait_for_item kickmania.global 1

clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{banana:1b}] 1
scoreboard players set $timer_type kickmania.global 1
scoreboard players set $timer kickmania.global 70
scoreboard players set $entities_hit temp 0
tag @s[gamemode=!creative] remove can_use_item

function kickmania:get_sin_cos
function kickmania:get_sin_cos

execute summon item_display run function kickmania:items/banana/spawn
scoreboard players operation $x temp = $sin temp
scoreboard players operation $z temp = $cos temp
scoreboard players operation $y temp = $pitch temp

scoreboard players operation $x temp *= $charge weapon
scoreboard players operation $z temp *= $charge weapon
scoreboard players operation $y temp *= $charge weapon
# scoreboard players operation $x temp /= $150 const
# scoreboard players operation $y temp /= $100 const
# scoreboard players operation $z temp /= $150 const


execute store result storage temp motion.x double 0.000006666667 run scoreboard players get $x temp
execute store result storage temp motion.y double 0.00001 run scoreboard players get $y temp
execute store result storage temp motion.z double 0.000006666667 run scoreboard players get $z temp


scoreboard players set $bla0 temp 0
scoreboard players set $bla1 temp 0
scoreboard players set $bla2 temp 0

function kickmania:items/banana/spawn_item with storage temp motion
ride @n[type=item_display,tag=banana] mount @n[type=item,tag=banana]


scoreboard players set $charge weapon 0
