execute unless data storage snbt:data old_map run return run function kickmania:maps/clone/no_clear
execute if score $run snbt matches 1 run return 0
execute if score $paste snbt matches 1 run return 0
execute if score $start snbt matches 1 run return 0
execute if score $clone_map snbt matches 1 run return 0
execute if score $clear_map snbt matches 1 run return 0

bossbar set progress players @a
# execute in kickmania:kickmania run tp @a[tag=in_queue] 0 -30 0
# gamemode spectator @a[tag=in_queue]
scoreboard players set $clear_map snbt 1
execute store result score $x temp run data get storage snbt:data old_map.x 10
execute store result score $z temp run data get storage snbt:data old_map.z 10
scoreboard players operation $x temp /= $2 const
scoreboard players operation $z temp /= $2 const

function snbt:run_init with storage snbt:data old_map

bossbar set progress players @a
bossbar set progress name {"text":"Clearing map","color":"gray"}
scoreboard players set $progress snbt 0



