scoreboard players add $water_level kickmania.global 5
execute store result entity 0-0-D9-0-016300000001 transformation.scale[1] float 0.1 run scoreboard players get $water_level kickmania.global
execute store result entity 0-0-D9-0-016300000002 transformation.scale[1] float 0.1 run scoreboard players get $water_level kickmania.global
execute store result entity 0-0-D9-0-016300000003 transformation.scale[1] float 0.1 run scoreboard players get $water_level kickmania.global
execute store result entity 0-0-D9-0-016300000004 transformation.scale[1] float 0.1 run scoreboard players get $water_level kickmania.global
data merge entity 0-0-D9-0-016300000001 {start_interpolation:0,interpolation_duration:15}
data merge entity 0-0-D9-0-016300000002 {start_interpolation:0,interpolation_duration:15}
data merge entity 0-0-D9-0-016300000003 {start_interpolation:0,interpolation_duration:15}
data merge entity 0-0-D9-0-016300000004 {start_interpolation:0,interpolation_duration:15}

scoreboard players set $water_level temp -610
scoreboard players operation $water_level temp += $water_level kickmania.global
execute as @e[type=husk,tag=fighter] run function kickmania:fighter/check_water_level