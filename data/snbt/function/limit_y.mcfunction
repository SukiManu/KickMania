scoreboard players set $run snbt 0


execute if score $start snbt matches 1 run tellraw @a[tag=is_admin] {"text":"Finished placing structure blocks!","color":"green"}
execute if score $paste snbt matches 1 run tellraw @a[tag=is_admin] {"text":"Finished pasting!","color":"green"}
execute if score $paste snbt matches 1 in kickmania:kickmania positioned 0 -30 0 run function kickmania:game/start
execute if score $paste snbt matches 1 run function snbt:map_clear/unload_chunks with storage snbt:data map_data

execute if score $clear_map snbt matches 1 run tellraw @a[tag=is_admin] {"text":"Finished clearing!","color":"green"}
execute if score $clear_map snbt matches 1 run function snbt:map_clear/unload_chunks with storage snbt:data old_map_data
execute if score $clone_map snbt matches 1 run tellraw @a[tag=is_admin] {"text":"Finished cloning!","color":"green"}
execute if score $clone_map snbt matches 1 in kickmania:kickmania positioned 0 -30 0 run function kickmania:game/start
execute if score $clone_map snbt matches 1 run function snbt:clone/remove_forceload with storage temp forceload


scoreboard players set $start snbt 0
scoreboard players set $save snbt 0
scoreboard players set $paste snbt 0
scoreboard players set $clear_map snbt 0
scoreboard players set $clone_map snbt 0
execute if score $generate_after_clear snbt matches 1 if score $clone snbt.copy_type matches 1 in overworld run function snbt:clone/init
execute if score $generate_after_clear snbt matches 1 if score $place snbt.copy_type matches 1 run function snbt:paste_start with storage snbt:data current_map
scoreboard players reset $generate_after_clear

bossbar set progress players