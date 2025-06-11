execute if score @s parkour_time > @s parkour_time_last run return 0
scoreboard players operation @s parkour_time_last = @s parkour_time
$execute store result storage kickmania player_list[{id:$(id)}].parkour_time int 1.0 run scoreboard players get @s parkour_time_last
$execute store result storage kickmania player_list[{id:$(id)}].parkour_time_s float 0.05 run scoreboard players get @s parkour_time_last
$tellraw @s [{"text":"You finished the map in"},{"nbt":"player_list[{id:$(id)}].parkour_time_s","storage": "kickmania"}]