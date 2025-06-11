execute store result score @s player.id run scoreboard players add id player.id 1
data modify storage kickmania player_list append from storage kickmania player_template
execute if score id player.id matches 1 run tag @s add is_admin
execute if score id player.id matches 1 run tellraw @s [{"text":"You have been granted is_admin tag.\n","color":"green"},\
                                                        {"text":"You can now see logs from the datapack such as errors and success data.","color":"gray"}] 
scoreboard players enable @s flag
scoreboard players set @s flag -1

loot replace entity 0-0-D3-0-016300000000 container.0 loot kickmania:player_head
gamemode adventure
execute store result storage temp player.id int 1.0 run scoreboard players get @s player.id
function kickmania:check_player_list_duplicates with storage temp player
execute store result storage kickmania player_list[-1].id int 1 run scoreboard players get @s player.id
data modify storage kickmania player_list[-1].name set from entity 0-0-D3-0-016300000000 item.components.minecraft:profile.name
data modify storage kickmania player_list[-1].uuid set from entity @s UUID

scoreboard players enable @s spawn
scoreboard players enable @s player_input

attribute @s minecraft:gravity base set 0.07
attribute @s minecraft:step_height base set 1
tag @s add has_id

tp @s -44 -57 -34 -90 0
spawnpoint @s -44 -57 -34 -90