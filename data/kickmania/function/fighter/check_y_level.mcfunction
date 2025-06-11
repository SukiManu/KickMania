execute store result score $y temp run data get entity @s Pos[1]
execute if score $y temp matches ..-64 run scoreboard players set $below0 temp 1

execute if score $y temp matches ..-64 run function kickmania:fighter/on_death