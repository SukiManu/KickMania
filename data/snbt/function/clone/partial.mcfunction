
data modify storage snbt:data clone.size_x set value 47
data modify storage snbt:data clone.size_y set value 47
data modify storage snbt:data clone.size_z set value 47

execute if score $xtemp snbt matches ..46 store result storage snbt:data clone.size_x int 1.0 run scoreboard players get $xtemp snbt
execute if score $ytemp snbt matches ..46 store result storage snbt:data clone.size_y int 1.0 run scoreboard players get $ytemp snbt
execute if score $ztemp snbt matches ..46 store result storage snbt:data clone.size_z int 1.0 run scoreboard players get $ztemp snbt

function snbt:clone/partial_run with storage snbt:data clone