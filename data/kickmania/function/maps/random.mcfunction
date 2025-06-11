execute store result score $length snbt run data get storage snbt:data maps
execute if score $length snbt matches ..0 run return run tellraw @a {"text":"There are no maps available to play check snbt datapack.","color":"red"}
execute unless entity @a[tag=in_queue] run return run tellraw @a {"text":"There are no players in queue","color":"red"}
execute if score $game_running kickmania.global matches 1 run return run tellraw @a[tag=!in_game] {"text":"A game is already running, please wait","color":"gray"}
execute store result score $in_game_player_count kickmania.global if entity @a[tag=in_queue]
execute unless score $debug kickmania.global matches 1 if score $in_game_player_count kickmania.global matches ..1 run tellraw @s {"text":"[Warning]This is an PvP game, yet you started the game solo.","color":"yellow"}

execute if score $paste snbt matches 1 run return 0
execute if score $start snbt matches 1 run return 0
execute if score $clear_map snbt matches 1 run return 0
execute if score $run snbt matches 1 run return 0
execute store result storage snbt:data length int 1.0 run scoreboard players remove $length snbt 1

execute if score $game_running kickmania.global matches 1 run function kickmania:game/end
function kickmania:maps/get_random_id with storage snbt:data
execute store result score $map_id temp run data get storage snbt:data random.map

data modify storage snbt:data old_map set from storage snbt:data current_map
data modify storage snbt:data old_map_data set from storage snbt:data map_data
function kickmania:maps/get with storage snbt:data random
function kickmania:maps/get_sizes
execute if score $map_id temp = $old_map_id temp run function kickmania:maps/clone/no_clear
execute unless score $map_id temp = $old_map_id temp run function kickmania:maps/clear_old_map

execute store result score $old_map_id temp run data get storage snbt:data random.map