execute if score $run snbt matches 1 run return 0
execute if score $paste snbt matches 1 run return 0
execute if score $start snbt matches 1 run return 0
execute if score $clone_map snbt matches 1 run return 0
execute if score $clear_map snbt matches 1 run return 0

bossbar set progress players @a

scoreboard players set $paste snbt 1

$data modify storage snbt:data vars.structure_name set value "$(structure_name)"
scoreboard players set $id snbt 0
data modify storage snbt:data vars.id set value 0

execute store result score $x temp run data get storage snbt:data current_map.x 10
execute store result score $z temp run data get storage snbt:data current_map.z 10

scoreboard players operation $x temp /= $2 const
scoreboard players operation $z temp /= $2 const


function snbt:map_clear/load_chunks with storage snbt:data map_data
function snbt:run_init with storage snbt:data current_map

execute store result bossbar progress max run scoreboard players get $max temp
bossbar set progress players @a
bossbar set progress name {"text":"Pasting map","color":"gray"}
scoreboard players set $progress snbt 0