execute if score $length snbt matches ..0 run return run tellraw @a {"text":"There are no maps available to play check snbt datapack.","color":"red"}
execute unless entity @a[tag=in_queue] run return run tellraw @a {"text":"There are no players in queue","color":"red"}
execute if score $game_running kickmania.global matches 1 run return run tellraw @a[tag=!in_game] {"text":"A game is already running, please wait","color":"gray"}
execute store result score $in_game_player_count kickmania.global if entity @a[tag=in_queue]
execute unless score $debug kickmania.global matches 1 if score $in_game_player_count kickmania.global matches ..1 run tellraw @s {"text":"[Warning]This is an PvP game, yet you started the game solo.","color":"yellow"}

execute if score $paste snbt matches 1 run return run tellraw @a[tag=is_admin] {"text":"Wait for the map to finish pasting.","color":"yellow"}
execute if score $clear_map snbt matches 1 run return run tellraw @a[tag=is_admin] {"text":"Wait to clear the old map.","color":"yellow"}
execute if score $run snbt matches 1 run return run tellraw @a[tag=is_admin] {"text":"$run snbt = 1. Fix","color":"yellow"}

execute if score $game_running kickmania.global matches 1 run function kickmania:game/end

execute store result score $map_id temp run data get storage kickmania data.selected_map
data modify storage kickmania data.map set from storage kickmania data.selected_map

data modify storage snbt:data old_map set from storage snbt:data current_map
data modify storage snbt:data old_map_data set from storage snbt:data map_data
function kickmania:maps/get with storage kickmania data
function kickmania:maps/get_sizes

tellraw @a {"nbt":"current_map.name","storage": "snbt:data"}

execute if score $map_id temp = $old_map_id temp run function kickmania:maps/clone/no_clear
execute unless score $map_id temp = $old_map_id temp run function kickmania:maps/clear_old_map

execute store result score $old_map_id temp run data get storage snbt:data random.map
scoreboard players operation $old_map_id temp = $map_id temp