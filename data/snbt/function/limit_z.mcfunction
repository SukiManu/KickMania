execute if score $ytemp snbt matches ..47 run scoreboard players set $ytemp snbt 0
execute if score $ytemp snbt matches 48.. run scoreboard players remove $ytemp snbt 48

data modify storage snbt:data vars.current_pos_x set from storage snbt:data vars.origin[0]
data modify storage snbt:data vars.current_pos_z set from storage snbt:data vars.origin[2]

data modify storage snbt:data vars.clone_pos_x set from storage snbt:data vars.clone_origin[0]
data modify storage snbt:data vars.clone_pos_z set from storage snbt:data vars.clone_origin[2]

execute store result score $temp snbt run data get storage snbt:data vars.current_pos_y 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.current_pos_y double 0.1 run scoreboard players get $temp snbt

execute store result score $temp snbt run data get storage snbt:data vars.clone_pos_y 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.clone_pos_y double 0.1 run scoreboard players get $temp snbt

scoreboard players operation $ztemp snbt = $size.z snbt
scoreboard players operation $xtemp snbt = $size.x snbt
