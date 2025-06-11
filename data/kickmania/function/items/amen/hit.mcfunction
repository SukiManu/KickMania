execute store result score x temp run data get entity @s Pos[0] 10
execute store result score y temp run data get entity @s Pos[1] 10
execute store result score z temp run data get entity @s Pos[2] 10

function kickmania:explosion/medium


scoreboard players set $damage temp 600
execute store result score entities_hit temp if entity @e[type=husk,distance=..10]
execute if score entities_hit temp matches 0 run schedule function kickmania:get_next_player 3t
execute as @e[distance=..10,type=husk] run function kickmania:items/amen/deal_damage

kill @s

tp @s ~ ~ ~