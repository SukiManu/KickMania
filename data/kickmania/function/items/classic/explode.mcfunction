scoreboard players set $wait_for_item kickmania.global 0
execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10

tag @s remove ignited_grenade

function kickmania:explosion/medium
execute store result score $entities_hit temp if entity @e[type=husk,distance=..6]
execute if score $game_running kickmania.global matches 1 if score $entities_hit temp matches 0 run function kickmania:game/schedule/next_turn
execute as @e[distance=..6,type=husk] run function kickmania:items/classic/deal_damage
