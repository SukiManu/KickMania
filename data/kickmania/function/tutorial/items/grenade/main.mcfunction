execute at @s[tag=classic] run playsound minecraft:item.brush.brushing.generic ambient @a ~ ~ ~ 0.8 2
execute if score @s destroy_timer matches ..20 run return run function kickmania:tutorial/items/grenade/get_type
execute store result storage temp second int 0.05 run scoreboard players get @s destroy_timer

function kickmania:items/grenade/timer with storage temp

function kickmania:tutorial/items/grenade/wallx
function kickmania:tutorial/items/grenade/wally
function kickmania:tutorial/items/grenade/wallz

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
