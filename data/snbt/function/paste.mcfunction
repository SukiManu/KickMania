fill ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 air replace structure_block
fill ~ ~ ~ ~ 300 ~ air
$execute store success score $success snbt run place template kickmania:$(structure_name)/$(id) $(current_pos_x) $(current_pos_y) $(current_pos_z) none none
$execute positioned $(current_pos_x) $(current_pos_y) $(current_pos_z) run fill ~ ~ ~ ~-1 ~-1 ~-1 air replace structure_block
$execute if score $success snbt matches 0 run tellraw @a [{"text":"Failed to paste template kickmania:$(structure_name)/$(id) at ","color":"red"},{"text":"[$(current_pos_x), $(current_pos_y), $(current_pos_z)]","color":"white"}]
# execute if score $success snbt matches 0 run return run scoreboard players set $paste snbt 0
# execute if score $success snbt matches 0 run return run scoreboard players set $run snbt 0

execute store result bossbar progress value run scoreboard players add $progress snbt 1
bossbar set progress name [{"text":"Pasting map ","color":"gray"},{"score":{"name":"$progress","objective": "snbt"}},"/",{"score":{"name":"$max","objective": "temp"}}]


execute store result storage snbt:data vars.id int 1.0 run scoreboard players add $id snbt 1
