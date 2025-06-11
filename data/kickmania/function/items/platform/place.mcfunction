#tag @s remove can_use_item

clear @s heart_of_the_sea[custom_data~{platform:true}] 1

execute at 7A7C-0-0-0-0 run fill ~-1 ~ ~-1 ~ ~ ~ deepslate_brick_slab[type=top]

data modify storage kickmania game_data.platforms append value {x:0,y:-65,z:0}

execute store result storage kickmania game_data.platforms[-1].x int 1.0 run data get entity 7A7C-0-0-0-0 Pos[0]
execute store result storage kickmania game_data.platforms[-1].y int 1.0 run data get entity 7A7C-0-0-0-0 Pos[1]
execute store result storage kickmania game_data.platforms[-1].z int 1.0 run data get entity 7A7C-0-0-0-0 Pos[2]

execute as 7A7C-0-0-0-0 on passengers run kill @s
kill 7A7C-0-0-0-0