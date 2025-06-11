scoreboard players set $below0 temp 1
function kickmania:game/end_turn
execute as @e[type=husk,tag=fighter] run function kickmania:fighter/check_water_level
schedule function kickmania:game/next_turn 3s