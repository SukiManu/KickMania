execute store result score $y temp run data get entity @s Pos[1] 10
execute if score $y temp < $water_level temp run function kickmania:fighter/on_water_death
