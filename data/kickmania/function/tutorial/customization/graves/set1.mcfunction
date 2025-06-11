$execute store result score $result temp run data modify storage minecraft:kickmania player_list[{id:$(id)}].grave_model set value 20001
scoreboard players set @s grave_skin 20001
execute if score $result temp matches 1.. run tellraw @s {"text":"Skin Changed Successfully","color":"green"}
execute if score $result temp matches 0 run tellraw @s {"text":"Failed to change skin","color":"red"}