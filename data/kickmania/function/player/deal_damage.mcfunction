scoreboard players operation $connection player.id = @s player.id
scoreboard players operation @s health -= $damage temp
execute as @e[type=husk,tag=in_control,predicate=kickmania:connection,limit=1] run function kickmania:fighter/get_damage