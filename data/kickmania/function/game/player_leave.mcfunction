tag @s remove plays
tag @s remove next_player
tag @s remove can_use_item
tag @s remove spectating
scoreboard players reset @s in_game_player.id
gamemode adventure @s
execute in overworld run tp @s -44 -57 -34 -90 0

attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:generic.step_height base reset

execute in overworld run spawnpoint @s -44 -57 -34 -90
tag @s remove in_game
tellraw @s {"text":"You got removed from the game","color":"yellow"}