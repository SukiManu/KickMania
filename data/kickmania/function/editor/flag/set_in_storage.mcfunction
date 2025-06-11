$data modify storage minecraft:kickmania player_list[{id:$(id)}].flag.name set from storage temp flag.name
$data modify storage minecraft:kickmania player_list[{id:$(id)}].flag.bitmap set from storage temp flag.bitmap
#$tellraw @a {"nbt":"player_list[{id:$(id)}]","storage":"kickmania"} 