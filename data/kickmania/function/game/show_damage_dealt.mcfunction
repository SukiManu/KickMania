scoreboard players set $wait_for_item kickmania.global 0
execute as @e[type=husk,tag=damaged,limit=1] run function kickmania:fighter/get_damage
execute store success score $success temp if entity @n[type=husk,tag=damaged,limit=1]
execute if score $success temp matches 0 run function kickmania:game/schedule/get_next_player
execute if score $success temp matches 1 run function kickmania:game/schedule/damage_dealt
