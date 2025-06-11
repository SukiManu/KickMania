function kickmania:physics/get_next_pos
execute run particle smoke ~ ~ ~ 0.07 0.05 0.07 0.02 5
execute run particle flame ~ ~ ~ 0.05 0.05 0.05 0.02 1


execute store result score $y temp run data get entity @s Pos[1]
execute if score $y temp matches ..-65 run function kickmania:items/bazooka/out_of_world