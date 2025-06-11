scoreboard players set $wait_for_item kickmania.global 0
execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10


function kickmania:explosion/extra_large
scoreboard players set $damage temp 600
execute store result score $entities_hit temp if entity @e[type=husk,distance=..10]
execute if score $game_running kickmania.global matches 1 if score $entities_hit temp matches 0 run function kickmania:game/schedule/next_turn
execute as @e[distance=..10,type=husk] run function kickmania:items/amen/deal_damage
