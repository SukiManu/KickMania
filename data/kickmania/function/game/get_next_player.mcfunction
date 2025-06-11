scoreboard players add $iter temp 1
scoreboard players add $next_player kickmania.global 1
execute if score $next_player kickmania.global > $in_game_player_count kickmania.global run scoreboard players set $next_player kickmania.global 1
scoreboard players operation $turn_timer kickmania.global = $turn_time kickmania.global
tag @a remove next_player
tag @a[tag=alive,predicate=kickmania:next_player,limit=1] add next_player

execute if score $iter temp matches ..16 unless entity @p[predicate=kickmania:next_player,tag=alive] run function kickmania:game/get_next_player