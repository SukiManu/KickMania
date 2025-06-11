execute if score $ztemp snbt matches ..47 run scoreboard players set $ztemp snbt 0
execute if score $ztemp snbt matches 48.. run scoreboard players remove $ztemp snbt 48

data modify storage snbt:data vars.current_pos_x set from storage snbt:data vars.origin[0]
data modify storage snbt:data vars.clone_pos_x set from storage snbt:data vars.clone_origin[0]

execute store result score $temp snbt run data get storage snbt:data vars.current_pos_z 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.current_pos_z double 0.1 run scoreboard players get $temp snbt

execute store result score $temp snbt run data get storage snbt:data vars.clone_pos_z 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.clone_pos_z double 0.1 run scoreboard players get $temp snbt

execute run scoreboard players operation $xtemp snbt = $size.x snbt