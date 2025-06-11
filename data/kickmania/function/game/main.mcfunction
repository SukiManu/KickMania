execute as @a[tag=plays,limit=1] at @s run function kickmania:game/tick_player
execute if score $timer_type kickmania.global matches 0 run function kickmania:game/timer/round
execute if score $timer_type kickmania.global matches 1 run function kickmania:game/timer/move
execute if score $timer_type kickmania.global matches 2 run function kickmania:game/timer/next_turn
execute if score $timer_type kickmania.global matches 3 run function kickmania:game/timer/get_next_player
execute if score $timer_type kickmania.global matches 4 run function kickmania:game/timer/damage_dealt
execute unless score $timer_type kickmania.global matches 0 run function kickmania:game/timer/watch_dog_timer

execute if score $process_fighter timer matches 0 as @e[type=husk,tag=fighter] at @s run function kickmania:fighter/main
scoreboard players add $process_fighter timer 1
execute if score $process_fighter timer matches 30.. run scoreboard players set $process_fighter timer 0

execute if score $process_crates timer matches 0 as @e[type=block_display,tag=crate] at @s run function kickmania:game/crate/main
scoreboard players add $process_crates timer 1
execute if score $process_crates timer matches 5.. run scoreboard players set $process_crates timer 0

execute as @e[type=husk,tag=!in_control] run function kickmania:fighter/check_y_level
execute as @e[type=husk,tag=!in_control] at @s if block ~ ~ ~ water run function kickmania:fighter/on_water_death

execute as @e[type=item,tag=grenade] run function kickmania:items/grenade/main
execute as @e[type=cow,tag=crate] run function kickmania:game/crate/check_if_ground
execute as @e[type=block_display,tag=bazooka] at @s run function kickmania:items/bazooka/projectile
execute as @e[type=item_display,tag=airplane] at @s run function kickmania:items/airplane/main
execute as 00000000-0000-89f4-0000-000000000000 at @s run function kickmania:items/fusion_laser/raycast
execute as 00000000-0000-89f4-0000-000000000000 at @s run function kickmania:items/fusion_laser/raycast
execute if score $air_strike temp matches 1 as @e[type=item,tag=strike] at @s run function kickmania:items/airplane/check_if_on_ground

execute as @a[scores={just_dropped=1..}] at @s run function kickmania:give_item_back

execute if score $handle_dead_minions temp matches 1 as @e[type=husk,tag=fighter,tag=dead,nbt={OnGround:1b},limit=8] run function kickmania:fighter/dead_for_real
function kickmania:game/handle/to_be_destroyed


execute as @e[type=block_display,tag=camera,tag=go_to_fighter,limit=1] at @s run function kickmania:game/camera/main
execute as @e[type=item_display,tag=dynamite] at @s run function kickmania:items/dynamite/main

execute at 0-0-D5-0-016300000000 run particle witch ~ ~ ~ 50 0.2 50 0.01 1000