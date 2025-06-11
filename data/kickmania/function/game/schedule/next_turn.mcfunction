tag @a remove can_use_item
scoreboard players set $timer_type kickmania.global 2
scoreboard players set $timer kickmania.global 30
execute if score $round kickmania.global matches 4.. if score $crate_spawned kickmania.global matches 0 if predicate kickmania:chance05 run function kickmania:game/crate/spawn