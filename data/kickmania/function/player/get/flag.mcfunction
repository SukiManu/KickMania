$data modify storage temp args.bitmap set from storage kickmania player_list[{id:$(id)}].flag.bitmap
$data modify storage temp args.flag_name set from storage kickmania player_list[{id:$(id)}].flag.name
$execute unless data storage kickmania player_list[{id:$(id)}].flag.bitmap run data modify storage kickmania player_list[{id:$(id)}].flag.bitmap set value '""'
$execute unless data storage kickmania player_list[{id:$(id)}].flag.name run data modify storage kickmania player_list[{id:$(id)}].flag.name set value '""'
