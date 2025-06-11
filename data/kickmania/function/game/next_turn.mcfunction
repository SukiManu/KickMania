scoreboard players set $instant_next_round kickmania.global 0
scoreboard players set $crate_spawned kickmania.global 0
scoreboard players set $watchdog timer 0
function kickmania:game/increase_water_level
execute as @a[tag=plays,limit=1] run function kickmania:game/end_turn
function kickmania:game/check_win
execute if score $game_running kickmania.global matches 0 run return 0


execute as @a[tag=alive] run function kickmania:game/get_fighter_count
execute unless entity @a[tag=alive] run return run function kickmania:game/end

execute as @e[type=husk,tag=has_poison,tag=!has_taken_poison_damage] run function kickmania:fighter/poison_damage
execute if entity @e[type=husk,tag=damaged,limit=1] run return run function kickmania:game/show_damage_dealt
tag @e[type=husk,tag=has_taken_poison_damage] remove has_taken_poison_damage
execute store result storage temp round.value int 1.0 run scoreboard players add $round kickmania.global 1
function kickmania:game/show_round with storage temp round


scoreboard players operation $round temp = $round kickmania.global
scoreboard players operation $round temp %= $4 const
execute if score $round temp matches 0 run function kickmania:game/wind

# execute if score $round temp matches 0 store result storage snbt:data map_data.water_level int 1.0 run scoreboard players add $water_level kickmania.global 1
# execute if score $round temp matches 0 run function kickmania:game/increase_water_level with storage snbt:data map_data
tag @e[type=husk,tag=hit_by_laser] remove hit_by_laser
execute as @e[type=husk,tag=fighter] run scoreboard players reset @s damage_taken
kill @e[type=block_display,tag=view_range]

#execute as @a[tag=plays,limit=1] run function kickmania:game/player_fix
execute positioned 0 3 0 store result score $result temp if entity @n[type=husk,tag=in_control]
scoreboard players set $iter temp 0

function kickmania:game/get_next_player

execute as @a[tag=next_player,limit=1] at @s run function kickmania:game/pan_to_fighter
scoreboard players operation $timer kickmania.global = $turn_time kickmania.global
scoreboard players set $timer_type kickmania.global 0
tellraw @a[tag=is_admin] {"text":"Next Turn","color":"green","bold":true}