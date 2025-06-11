$execute store result score $next_player kickmania.global run random value 1..$(in_game_player_count)
scoreboard players set $id in_game_player.id 0
scoreboard players operation $colors temp = $colors const
scoreboard players operation $aliases temp = $aliases const
execute store result storage temp length.colors int 1.0 run scoreboard players get $colors temp
execute store result storage temp args.aliases int 1.0 run scoreboard players get $aliases temp

data modify storage temp color_pool set from storage kickmania color_pool
data modify storage temp aliases set from storage kickmania aliases
execute as @a[tag=in_queue] run function kickmania:game/team/make with storage minecraft:temp length