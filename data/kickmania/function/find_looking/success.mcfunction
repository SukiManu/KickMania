execute store result score $result temp run random value 0..2
tag @s remove look_at_target
tag @s remove find_me
execute if score $result temp matches 0 run return run scoreboard players set @s timid_timer 2
execute if score $changed slot matches 1..2 at @s run return run function kickmania:fighter/sounds/scared
execute at @s run function kickmania:fighter/sounds/look_at
