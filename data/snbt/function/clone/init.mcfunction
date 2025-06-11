execute store result score $x_start temp run data get storage snbt:data current_map.posx
scoreboard players operation $x_finish temp = $x_start temp
execute store result score $temp0 temp run data get storage snbt:data current_map.x
scoreboard players operation $x_finish temp += $temp0 temp
execute store result storage temp forceload.x_start int 1.0 run scoreboard players get $x_start temp
execute store result storage temp forceload.x_finish int 1.0 run scoreboard players get $x_finish temp


execute store result score $z_start temp run data get storage snbt:data current_map.posz
scoreboard players operation $z_finish temp = $z_start temp
execute store result score $temp0 temp run data get storage snbt:data current_map.z
scoreboard players operation $z_finish temp += $temp0 temp
execute store result storage temp forceload.z_start int 1.0 run scoreboard players get $z_start temp
execute store result storage temp forceload.z_finish int 1.0 run scoreboard players get $z_finish temp

execute store result score $x_start temp run data get storage snbt:data current_map.posx
scoreboard players operation $x_finish temp = $x_start temp
execute store result score $temp0 temp run data get storage snbt:data current_map.x
scoreboard players operation $x_finish temp += $temp0 temp
execute store result storage temp forceload.x_start int 1.0 run scoreboard players get $x_start temp
execute store result storage temp forceload.x_finish int 1.0 run scoreboard players get $x_finish temp


scoreboard players set $x_clone temp 50
execute store result score $temp0 temp run data get storage snbt:data current_map.x
scoreboard players operation $x_clone temp += $temp0 temp
execute store result storage temp forceload.x_clone int 1.0 run scoreboard players get $x_clone temp

scoreboard players set $z_clone temp 50
execute store result score $temp0 temp run data get storage snbt:data current_map.z
scoreboard players operation $z_clone temp += $temp0 temp
execute store result storage temp forceload.z_clone int 1.0 run scoreboard players get $z_clone temp

function snbt:clone/forceload_chunks with storage temp forceload
schedule function snbt:clone/start 5t