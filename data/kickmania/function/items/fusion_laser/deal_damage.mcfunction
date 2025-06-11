tag @s add hit_by_laser
scoreboard players set $damage temp 35
function kickmania:fighter/deal_damage_simple

execute store result entity @s Motion[0] double 0.01 run random value -50..50
execute store result entity @s Motion[2] double 0.01 run random value -50..50
execute store result entity @s Motion[1] double 0.01 run random value 5..50