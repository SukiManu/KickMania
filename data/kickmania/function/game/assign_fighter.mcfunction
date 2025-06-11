scoreboard players operation $connection player.id = @s player.id
execute store result score $result temp if entity @e[type=husk,predicate=kickmania:connection,limit=4,tag=!blocked]
execute if score $result temp matches 0 run tag @e[type=husk,predicate=kickmania:connection,limit=4] remove blocked
execute as @e[type=husk,predicate=kickmania:connection,limit=1,sort=random,tag=!blocked] run function kickmania:fighter/init
