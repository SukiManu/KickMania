stopsound @a ambient minecraft:item.elytra.flying
scoreboard players set $timer_type kickmania.global 2
scoreboard players set $timer kickmania.global 30
execute as @a[tag=plays,limit=1] run function kickmania:game/end_turn
execute if score $instant_next_round kickmania.global matches 1 run function kickmania:game/schedule/next_turn


