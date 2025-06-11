
scoreboard players add @s platform_use 1
execute if score @s platform_use matches 2.. run scoreboard players set @s platform_use 0

execute if score @s platform_use matches 1 run function kickmania:items/platform/spawn
execute if score @s platform_use matches 0 run function kickmania:items/platform/place

