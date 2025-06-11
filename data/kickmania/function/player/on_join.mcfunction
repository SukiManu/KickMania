scoreboard players operation $connection player.id = @s player.id
execute if entity @s[tag=plays] at @s run tp @e[type=husk,tag=in_control,predicate=kickmania:connection,limit=1] ~ ~ ~
tag @e[type=husk,tag=in_control,predicate=kickmania:connection,limit=1] remove in_control
execute if entity @s[tag=plays] run gamemode spectator
execute if entity @s[tag=plays] run tag @s add spectating
tag @s remove plays

execute if entity @s[team=tutorial] run function kickmania:tutorial/leave
scoreboard players enable @s player_input
scoreboard players enable @s spawn
scoreboard players enable @s flag
scoreboard players set @s flag -1

attribute @s entity_interaction_range base set 5

execute unless score $game_running kickmania.global matches 1 if dimension kickmania:kickmania run function kickmania:game/player_leave
execute unless entity @e[type=husk,predicate=kickmania:connection] run function kickmania:game/player_leave

scoreboard players set @s joined 0
scoreboard players reset @s joined
tellraw @s "Welcome Back. :D"
