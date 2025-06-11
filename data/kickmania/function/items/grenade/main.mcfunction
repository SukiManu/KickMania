execute store result score $y temp run data get entity @s Pos[1]
execute if score $y temp matches ..-64 run return run function kickmania:items/delete

execute at @s[tag=classic] run playsound minecraft:item.brush.brushing.generic ambient @a ~ ~ ~ 0.8 2
execute if score @s[tag=small_banana] walls_hit matches 1.. at @s run function kickmania:items/banana/small_explode
execute if score @s destroy_timer matches ..20 run return run function kickmania:items/grenade/get_type
execute store result storage temp second int 0.05 run scoreboard players get @s destroy_timer

execute if score @s destroy_timer matches 50 if entity @s[tag=amen] at @s run playsound kickmania:sfx_holygrenade ambient @a ~ ~ ~ 2
function kickmania:items/grenade/timer with storage temp


function kickmania:items/grenade/wallx
function kickmania:items/grenade/wally
function kickmania:items/grenade/wallz

execute store result score $temp0 temp run data get entity @s Motion[0] 1000
scoreboard players operation $temp0 temp /= $50 const

execute unless score $temp0 temp matches -1..1 run scoreboard players operation $bla0 temp += $temp0 temp


execute store result score $temp0 temp run data get entity @s Motion[2] 1000
scoreboard players operation $temp0 temp /= $50 const

execute unless score $temp0 temp matches -1..1 run scoreboard players operation $bla2 temp += $temp0 temp

execute unless score $bla0 temp matches -5590..5590 run scoreboard players set $bla0 temp 0
execute unless score $bla2 temp matches -5590..5590 run scoreboard players set $bla2 temp 0
execute store result storage temp rot.z float 0.06 run scoreboard players get $bla0 temp
execute store result storage temp rot.x float 0.06 run scoreboard players get $bla2 temp
data modify storage temp rot.y set value 0

execute on passengers run function kickmania:physics/rotate with storage temp rot

scoreboard players remove @s destroy_timer 1

execute if score @s motion.y matches -150..150 run return 0
execute store result score $mx temp run data get entity @s Motion[0] 10000
execute store result score $mz temp run data get entity @s Motion[2] 10000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation $mx temp += $wind_strength_x kickmania.global
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation $mz temp += $wind_strength_z kickmania.global
