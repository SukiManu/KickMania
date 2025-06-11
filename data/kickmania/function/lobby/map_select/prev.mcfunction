execute store result score $length temp run data get storage snbt:data maps
scoreboard players remove $length temp 1
scoreboard players remove $map_selector kickmania.global 1
execute if score $map_selector kickmania.global matches ..-1 run scoreboard players operation $map_selector kickmania.global = $length temp
execute store result storage kickmania data.selected_map int 1.0 run scoreboard players get $map_selector kickmania.global
function kickmania:lobby/map_select/display_map0 with storage kickmania data