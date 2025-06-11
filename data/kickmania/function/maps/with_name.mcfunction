data remove storage snbt:data random
execute store result score $in_game_player_count kickmania.global if entity @a[tag=in_queue]
#execute unless score $debug kickmania.global matches 1 if score $in_game_player_count kickmania.global matches ..1 run return run tellraw @s {"text":"This game requires 2+ players.","color":"red"}

execute if score $paste snbt matches 1 run return 0
execute if score $start snbt matches 1 run return 0
execute if score $clear_map snbt matches 1 run return 0
execute if score $clone_map snbt matches 1 run return 0

$execute unless data storage snbt:data maps[{name:"$(name)"}] run return run tellraw @s {"text":"There is no map called $(name).","color":"red"}
execute if score $game_running kickmania.global matches 1 run function kickmania:game/end
$data modify storage temp search set value "$(name)"

scoreboard players set $generate_after_clear snbt 1
function kickmania:maps/clear_old_map