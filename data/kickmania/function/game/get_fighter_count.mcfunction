scoreboard players operation $connection player.id = @s player.id
execute store result score $result temp if entity @e[type=husk,predicate=kickmania:connection,limit=20]
scoreboard players operation @s data = $result temp
execute if score $result temp matches 0 run tag @s remove alive
