
execute if entity @s[tag=plays] run function kickmania:game/next_turn
scoreboard players operation $connection player.id = @s player.id
execute as @e[type=husk,tag=fighter,predicate=kickmania:connection] run tp @s 0 -100 0
execute as @e[type=husk,tag=fighter,predicate=kickmania:connection] run function kickmania:fighter/on_death
tag @s remove plays
tag @s remove alive
tag @s remove can_throw
tag @s[gamemode=!creative] remove can_use_item
tag @s remove can_use_jetpack
tag @s remove spectator
tag @s remove editing_book
tag @s remove dead
scoreboard players reset @s spawn
scoreboard players enable @s spawn
execute in overworld run tp @s -44 -57 -34 -90 0
gamemode adventure