scoreboard players operation $connection player.id = @s player.id

execute store result score $result temp if entity @e[type=husk,predicate=kickmania:connection,limit=4]
scoreboard players operation @s data = $result temp

execute if score $result temp matches 1.. run return 0
tag @s remove alive
tag @s remove plays
gamemode spectator
scoreboard players reset @s in_game_player.id
tellraw @a [{"selector":"@s","bold":true},{"text":" lost all their fighters and got eliminated!","color":"green","bold":false}]
function kickmania:game/check_win