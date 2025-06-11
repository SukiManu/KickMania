tag @s remove in_control
tp @s ~ ~ ~ ~ ~
execute at @s if block ~ ~ ~ water run function kickmania:fighter/on_water_death
