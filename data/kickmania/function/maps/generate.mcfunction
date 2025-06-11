$data modify storage snbt:data current_map set from storage snbt:data maps[$(map)]
#function kickmania:maps/loop_start

data modify storage snbt:data current_map.id set value 0

execute store result score $x temp run data get storage snbt:data current_map.x 10
execute store result score $z temp run data get storage snbt:data current_map.z 10

scoreboard players operation $x temp /= $2 const
scoreboard players operation $z temp /= $2 const

scoreboard players reset $generate_after_clear snbt

execute store result score $clone snbt.copy_type run data get storage snbt:data current_map.clone
execute store result score $place snbt.copy_type run data get storage snbt:data current_map.place

execute if score $clone snbt.copy_type matches 1 run function kickmania:maps/clone/init
execute if score $place snbt.copy_type matches 1 positioned 50 50 50 run function snbt:paste_start with storage snbt:data current_map
