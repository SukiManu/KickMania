
scoreboard players add next_player kickmania.global 1
execute if score next_player kickmania.global > in_game_player_count kickmania.global run scoreboard players set next_player kickmania.global 1
scoreboard players operation turn_timer kickmania.global = turn_time kickmania.global

execute as @p[predicate=kickmania:next_player] run function kickmania:assign_fighter
execute unless entity @p[predicate=kickmania:next_player,tag=alive] run function kickmania:get_next_player
