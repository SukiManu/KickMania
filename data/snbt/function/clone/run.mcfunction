gamerule commandModificationBlockLimit 120592

execute unless score $xtemp snbt matches 47.. unless score $ytemp snbt matches 47.. unless score $ztemp snbt matches 47.. run return run function snbt:clone/partial
$execute positioned $(clone_pos_x) $(clone_pos_y) $(clone_pos_z) store success score $success temp run clone ~ ~ ~ ~47 ~47 ~47 $(current_pos_x) $(current_pos_y) $(current_pos_z)

$execute if score $success temp matches 0 run tellraw @a[] {"text":"Failed to clone at $(current_pos_x) $(current_pos_y) $(current_pos_z)"}
bossbar set progress name [{"text":"Cloning map ","color":"gray"},{"score":{"name":"$progress","objective": "snbt"}},"/",{"score":{"name":"$max","objective": "temp"}}]

execute store result bossbar progress value run scoreboard players add $progress snbt 1
