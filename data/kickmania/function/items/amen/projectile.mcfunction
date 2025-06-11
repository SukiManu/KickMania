execute unless block ^ ^ ^.5 #kickmania:partial_transparent run return run function kickmania:items/amen/hit
execute unless block ^ ^ ^1.5 #kickmania:partial_transparent run return run function kickmania:items/amen/hit

execute if entity @n[type=husk,distance=..1.5] run function kickmania:items/amen/hit
execute positioned ^ ^ ^-0.75 if entity @n[type=husk,distance=..1.5] run return run function kickmania:items/amen/hit
execute positioned ^ ^ ^0.75 if entity @n[type=husk,distance=..1.5] run return run function kickmania:items/amen/hit
execute positioned ^ ^ ^-1.5 if entity @n[type=husk,distance=..1.5] run return run function kickmania:items/amen/hit
execute positioned ^ ^ ^1.5 if entity @n[type=husk,distance=..1.5] run return run function kickmania:items/amen/hit
execute positioned ^ ^ ^-2.25 if entity @n[type=husk,distance=..1.5] run return run function kickmania:items/amen/hit
execute positioned ^ ^ ^2.25 if entity @n[type=husk,distance=..1.5] run return run function kickmania:items/amen/hit

function kickmania:physics/get_next_pos

execute run particle flame ~ ~ ~ 0.05 0.05 0.05 0.02 4


execute store result score y temp run data get entity @s Pos[1]
execute if score y temp matches ..0 run function kickmania:items/bazooka/out_of_world


#say me