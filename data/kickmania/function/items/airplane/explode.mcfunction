scoreboard players set $wait_for_item kickmania.global 0
execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10

function kickmania:explosion/large
execute store result score $entities_hit temp if entity @e[type=husk,distance=..7]
execute if score $game_running kickmania.global matches 1 if score $entities_hit temp matches 0 run function kickmania:game/schedule/get_next_player
execute as @e[distance=..7,type=husk] run function kickmania:items/airplane/deal_damage
execute unless entity @e[type=item,tag=strike] run scoreboard players set $air_strike temp 0
execute on passengers run kill @s
kill @s
