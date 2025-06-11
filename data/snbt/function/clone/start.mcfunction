execute if score $run snbt matches 1 run return 0
execute if score $paste snbt matches 1 run return 0
execute if score $start snbt matches 1 run return 0
execute if score $clear_map snbt matches 1 run return 0
execute if score $clone_map snbt matches 1 run return 0

bossbar set progress players @a

scoreboard players set $run snbt 1
scoreboard players set $clone_map snbt 1

execute store result score $x temp run data get storage snbt:data current_map.x 10
execute store result score $z temp run data get storage snbt:data current_map.z 10

scoreboard players operation $x temp /= $2 const
scoreboard players operation $z temp /= $2 const

function snbt:run_init with storage snbt:data current_map

bossbar set progress name {"text":"Cloning map","color":"gray"}
scoreboard players set $progress snbt 0
