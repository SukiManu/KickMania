function kickmania:explosion/large

scoreboard players set $rot temp 0

scoreboard players add $rot temp 7200
execute store result score $temp0 temp run random value -1500..1500
scoreboard players operation $rot temp += $temp0 temp
data modify storage temp motion.y set value 0.6d
function kickmania:get_sin
execute store result storage temp motion.x double 0.0002 run scoreboard players get $x temp
execute store result storage temp motion.z double 0.0002 run scoreboard players get $z temp
function kickmania:items/banana/spawn_small_item with storage temp motion
execute summon item_display run function kickmania:items/banana/spawn_small
ride @n[type=item_display,tag=small_banana,tag=new] mount @n[type=item,tag=small_banana,tag=new]
tag @e[type=item_display,tag=small_banana,tag=new,limit=1] remove new
tag @e[type=item,tag=small_banana,tag=new,limit=1] remove new



scoreboard players add $rot temp 7200
execute store result score $temp0 temp run random value -1500..1500
scoreboard players operation $rot temp += $temp0 temp
data modify storage temp motion.y set value 0.6d
function kickmania:get_sin
execute store result storage temp motion.x double 0.0002 run scoreboard players get $x temp
execute store result storage temp motion.z double 0.0002 run scoreboard players get $z temp
function kickmania:items/banana/spawn_small_item with storage temp motion
execute summon item_display run function kickmania:items/banana/spawn_small
ride @n[type=item_display,tag=small_banana,tag=new] mount @n[type=item,tag=small_banana,tag=new]
tag @e[type=item_display,tag=small_banana,tag=new] remove new
tag @e[type=item,tag=small_banana,tag=new] remove new



scoreboard players add $rot temp 7200
execute store result score $temp0 temp run random value -1500..1500
scoreboard players operation $rot temp += $temp0 temp
data modify storage temp motion.y set value 0.6d
function kickmania:get_sin
execute store result storage temp motion.x double 0.0002 run scoreboard players get $x temp
execute store result storage temp motion.z double 0.0002 run scoreboard players get $z temp
function kickmania:items/banana/spawn_small_item with storage temp motion
execute summon item_display run function kickmania:items/banana/spawn_small
ride @n[type=item_display,tag=small_banana,tag=new] mount @n[type=item,tag=small_banana,tag=new]
tag @e[type=item_display,tag=small_banana,tag=new] remove new
tag @e[type=item,tag=small_banana,tag=new] remove new



scoreboard players add $rot temp 7200
execute store result score $temp0 temp run random value -1500..1500
scoreboard players operation $rot temp += $temp0 temp
data modify storage temp motion.y set value 0.6d
function kickmania:get_sin
execute store result storage temp motion.x double 0.0002 run scoreboard players get $x temp
execute store result storage temp motion.z double 0.0002 run scoreboard players get $z temp
function kickmania:items/banana/spawn_small_item with storage temp motion
execute summon item_display run function kickmania:items/banana/spawn_small
ride @n[type=item_display,tag=small_banana,tag=new] mount @n[type=item,tag=small_banana,tag=new]
tag @e[type=item_display,tag=small_banana,tag=new] remove new
tag @e[type=item,tag=small_banana,tag=new] remove new



scoreboard players add $rot temp 7200
execute store result score $temp0 temp run random value -1500..1500
scoreboard players operation $rot temp += $temp0 temp
data modify storage temp motion.y set value 0.6d
function kickmania:get_sin
execute store result storage temp motion.x double 0.0002 run scoreboard players get $x temp
execute store result storage temp motion.z double 0.0002 run scoreboard players get $z temp
function kickmania:items/banana/spawn_small_item with storage temp motion
execute summon item_display run function kickmania:items/banana/spawn_small
ride @n[type=item_display,tag=small_banana,tag=new] mount @n[type=item,tag=small_banana,tag=new]
tag @e[type=item_display,tag=small_banana,tag=new] remove new
tag @e[type=item,tag=small_banana,tag=new] remove new


execute store result score $temp0 temp if entity @e[type=husk,distance=..8]
scoreboard players operation $entities_hit temp += $temp0 temp

execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10

execute as @e[distance=..8,type=husk] run function kickmania:items/banana/deal_damage
