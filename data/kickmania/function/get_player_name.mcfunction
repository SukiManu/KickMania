$execute store success score $success temp run data modify storage temp args.name set from storage kickmania player_list[{id:$(id)}].team_name
$execute if score $success temp matches 0 run data modify storage temp args.name set from storage kickmania player_list[{id:$(id)}].name
