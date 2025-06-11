scoreboard players set $wait_for_item kickmania.global 0

execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10

execute as @a[tag=plays,limit=1] run function kickmania:game/end_turn

function kickmania:explosion/medium

scoreboard players set $damage temp 300
execute store result score $entities_hit temp if entity @e[type=husk,distance=..5]
execute if score $game_running kickmania.global matches 1 if score $entities_hit temp matches 0 run function kickmania:game/schedule/next_turn
execute as @e[distance=..5,type=husk] run function kickmania:items/bazooka/deal_damage
kill @s


tp @s ~ ~ ~