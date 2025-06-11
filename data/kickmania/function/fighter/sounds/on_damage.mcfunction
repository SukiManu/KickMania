execute if score @s health matches ..5 if predicate kickmania:chance025 at @s run return run playsound kickmania:classic_relief neutral @a
execute if score @s damage_taken matches ..10 run function kickmania:fighter/sounds/damage_low
execute if score @s damage_taken matches 11..30 run function kickmania:fighter/sounds/damage_medium
execute if score @s damage_taken matches 31.. run function kickmania:fighter/sounds/damage_high