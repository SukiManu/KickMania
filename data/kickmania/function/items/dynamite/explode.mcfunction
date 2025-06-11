scoreboard players set $wait_for_item kickmania.global 0
execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10

function kickmania:explosion/medium
execute store result score $entities_hit temp if entity @e[type=husk,distance=..5.5]
execute if score $game_running kickmania.global matches 1 if score $entities_hit temp matches 0 run function kickmania:game/schedule/get_next_player
execute as @e[distance=..5.5,type=husk] run function kickmania:items/dynamite/deal_damage

execute on passengers run kill @s
kill @n[type=text_display,tag=jibberish]
kill @s
