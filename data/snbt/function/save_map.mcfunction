execute unless score $can_save snbt matches 1 run return run tellraw @a {"text":"There is no selection to save the map.","color":"yellow"} 
$data modify storage snbt:data save_map set value {name:"$(name)",x:0,y:0,z:0,posx:0,posy:0,posz:0}
execute store result storage snbt:data save_map.x int 1.0 run scoreboard players get $corner1_x snbt
execute store result storage snbt:data save_map.y int 1.0 run scoreboard players get $corner1_y snbt
execute store result storage snbt:data save_map.z int 1.0 run scoreboard players get $corner1_z snbt

execute store result storage snbt:data save_map.posx int 1.0 run scoreboard players get $corner0_x snbt
execute store result storage snbt:data save_map.posy int 1.0 run scoreboard players get $corner0_y snbt
execute store result storage snbt:data save_map.posz int 1.0 run scoreboard players get $corner0_z snbt
execute store result storage snbt:data save_map.id int 1.0 run scoreboard players add $map_id snbt 1
data modify storage snbt:data maps append from storage snbt:data save_map
tellraw @a ["Saved map: ",{"nbt":"save_map","storage": "snbt:data","color":"green"}]
data remove storage snbt:data save_map
scoreboard players set $can_save snbt 0