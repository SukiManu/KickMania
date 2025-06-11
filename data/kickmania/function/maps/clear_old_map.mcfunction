data modify storage snbt:data current_map.id set value 0

execute store result score $x temp run data get storage snbt:data current_map.x 10
execute store result score $y_temp temp run data get storage snbt:data current_map.y 10
execute store result score $z temp run data get storage snbt:data current_map.z 10

scoreboard players operation $x temp /= $2 const
scoreboard players operation $z temp /= $2 const
scoreboard players set $y temp -500
scoreboard players operation $y temp += $y_temp temp

#execute in kickmania:kickmania run teleport @a[tag=in_queue] 0.5 -20 0.5
execute in kickmania:kickmania run teleport 0-0-D7-0-016300000000 0.5 0 0.5
execute store result entity 0-0-D7-0-016300000000 Pos[1] double 0.1 run scoreboard players get $y temp

execute store result score $clone snbt.copy_type run data get storage snbt:data current_map.clone
execute store result score $place snbt.copy_type run data get storage snbt:data current_map.place

scoreboard players set $generate_after_clear snbt 1

function snbt:map_clear/load_chunks with storage snbt:data old_map_data
schedule function snbt:start_clear_map 5t