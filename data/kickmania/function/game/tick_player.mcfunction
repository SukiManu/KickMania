execute if score @s air_strike matches 1 run function kickmania:items/airplane/start_raycast
execute if score @s air_strike matches 1 as @e[type=text_display,tag=indicator,tag=arrow] run function kickmania:items/airplane/animate

execute at @s[tag=ignited_grenade] run playsound minecraft:item.brush.brushing.generic ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={platform_use=1}] run function kickmania:items/platform/start_raycast

execute positioned ~ ~.7 ~ as @n[type=block_display,tag=crate,limit=1,distance=..0.8] run function kickmania:game/crate/get_type


execute store result score $y temp run data get entity @s Pos[1]
execute if score $y temp matches ..-64 run function kickmania:player/low_level
execute at @s if block ~ ~ ~ water run function kickmania:player/low_level

execute store result score $y temp run data get entity @s Pos[1] 10
execute if score $y temp < $water_level temp run function kickmania:player/low_level

execute store result score $current slot run data get entity @s SelectedItemSlot
execute unless score @s slot = $current slot run function kickmania:player/on_item_change
scoreboard players operation @s slot = $current slot
execute if score @s platform_use matches 1 unless items entity @s weapon.mainhand heart_of_the_sea[custom_data~{platform:true}] run function kickmania:items/platform/cancel


execute if score @s fall_time matches 1200.. run function kickmania:game/on_fall_damage
scoreboard players set @s fall_time 0

effect give @s jump_boost 10 1 true
effect give @s glowing 10 1 true
effect give @s saturation infinite 0 true


execute as @e[type=husk,tag=fighter,tag=!view_range,distance=65.5..] run function kickmania:game/fighter_out_of_view_range
execute as @e[type=husk,tag=fighter,tag=view_range,distance=..65.49] run function kickmania:game/fighter_back_in_view_range