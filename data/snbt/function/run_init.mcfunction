

$scoreboard players set $size.x snbt $(x) 
$scoreboard players set $size.y snbt $(y)
$scoreboard players set $size.z snbt $(z)

scoreboard players set $max temp 1
scoreboard players operation $temp0 temp = $size.x snbt
scoreboard players operation $temp1 temp = $size.x snbt
scoreboard players operation $temp0 temp %= $48 snbt
execute unless score $temp0 temp matches 0 run scoreboard players add $temp1 temp 48
scoreboard players operation $temp1 temp /= $48 snbt
scoreboard players operation $max temp *= $temp1 temp
scoreboard players operation $temp0 temp = $size.y snbt
scoreboard players operation $temp1 temp = $size.y snbt
scoreboard players operation $temp0 temp %= $48 snbt
execute unless score $temp0 temp matches 0 run scoreboard players add $temp1 temp 48
scoreboard players operation $temp1 temp /= $48 snbt
scoreboard players operation $max temp *= $temp1 temp
scoreboard players operation $temp0 temp = $size.z snbt
scoreboard players operation $temp1 temp = $size.z snbt
scoreboard players operation $temp0 temp %= $48 snbt
execute unless score $temp0 temp matches 0 run scoreboard players add $temp1 temp 48
scoreboard players operation $temp1 temp /= $48 snbt
scoreboard players operation $max temp *= $temp1 temp
execute store result bossbar progress max run scoreboard players get $max temp


scoreboard players operation $xtemp snbt = $size.x snbt
scoreboard players operation $ytemp snbt = $size.y snbt
scoreboard players operation $ztemp snbt = $size.z snbt

data modify storage snbt:data vars.origin set value [0,-64,0]
execute store result storage snbt:data vars.origin[0] int -0.1 run scoreboard players get $x temp 
execute store result storage snbt:data vars.origin[2] int -0.1 run scoreboard players get $z temp
data modify storage snbt:data vars.current_pos_x set from storage snbt:data vars.origin[0]
data modify storage snbt:data vars.current_pos_y set from storage snbt:data vars.origin[1]
data modify storage snbt:data vars.current_pos_z set from storage snbt:data vars.origin[2]

data modify storage snbt:data vars.clone_pos_x set from storage snbt:data current_map.posx
data modify storage snbt:data vars.clone_pos_y set from storage snbt:data current_map.posy
data modify storage snbt:data vars.clone_pos_z set from storage snbt:data current_map.posz

data modify storage snbt:data vars.clone_origin set value [0,0,0]
data modify storage snbt:data vars.clone_origin[0] set from storage snbt:data current_map.posx
data modify storage snbt:data vars.clone_origin[1] set from storage snbt:data current_map.posy
data modify storage snbt:data vars.clone_origin[2] set from storage snbt:data current_map.posz


scoreboard players set $run snbt 1