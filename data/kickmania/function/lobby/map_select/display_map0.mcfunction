$execute store success score $success temp if data storage snbt:data maps[$(selected_map)].structure_name
$execute if score $success temp matches 1 run function kickmania:lobby/map_select/display_map1 with storage snbt:data maps[$(selected_map)]
$execute if score $success temp matches 0 run function kickmania:lobby/map_select/display_map2 with storage snbt:data maps[$(selected_map)]