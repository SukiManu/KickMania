scoreboard players operation $connection player.id = @s player.id
data modify storage temp names set value []
scoreboard players set $iter temp 0
execute as @e[type=husk,tag=fighter,predicate=kickmania:connection] run function kickmania:game/add_name_to_storage
tellraw @s [{"text":"Your team consists of: ","color":"aqua","bold":false},{"storage": "temp","nbt": "names","interpret": true}]
#data remove storage temp names
