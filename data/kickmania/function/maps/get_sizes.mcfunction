execute store result score $x temp run data get storage snbt:data current_map.x 10
execute store result score $z temp run data get storage snbt:data current_map.z 10

execute store result storage snbt:data map_data.x0 int -0.05 run data get storage snbt:data current_map.x 10
execute store result storage snbt:data map_data.z0 int -0.05 run data get storage snbt:data current_map.z 10
execute store result storage snbt:data map_data.x1 int 0.05 run data get storage snbt:data current_map.x 10
execute store result storage snbt:data map_data.z1 int 0.05 run data get storage snbt:data current_map.z 10

execute store result storage snbt:data map_data.fx0 int -0.04999 run data get storage snbt:data current_map.x 10
execute store result storage snbt:data map_data.fz0 int -0.04999 run data get storage snbt:data current_map.z 10
execute store result storage snbt:data map_data.fx1 int 0.04999 run data get storage snbt:data current_map.x 10
execute store result storage snbt:data map_data.fz1 int 0.04999 run data get storage snbt:data current_map.z 10