$execute store success score $success temp if data storage minecraft:kickmania player_list[{id:$(id)}].team_name
$execute if score $success temp matches 0 run data modify storage temp args.team_name set from storage kickmania player_list[{id:$(id)}].name
$execute if score $success temp matches 1 run data modify storage temp args.team_name set from storage kickmania player_list[{id:$(id)}].team_name
