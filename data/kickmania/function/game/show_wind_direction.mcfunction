execute store result score $rot temp run data get entity @s Rotation[0] 100
scoreboard players set $temp1 temp 36000
execute if score $rot temp matches ..-1 run scoreboard players operation $temp1 temp += $rot temp
execute if score $rot temp matches 0.. run scoreboard players operation $temp1 temp = $rot temp
scoreboard players set $temp0 temp 36000
scoreboard players operation $temp0 temp -= $wind_angle kickmania.global
scoreboard players operation $temp0 temp -= $temp1 temp
execute if score $temp0 temp matches ..-1 run scoreboard players add $temp0 temp 36000

execute unless score $temp0 temp matches 563..35439 run data modify storage minecraft:kickmania wind_direction set value '"\\uE010"'
execute if score $temp0 temp matches 563..1688 run data modify storage minecraft:kickmania wind_direction set value '"\\uE011"'
execute if score $temp0 temp matches 1688..2813 run data modify storage minecraft:kickmania wind_direction set value '"\\uE012"'
execute if score $temp0 temp matches 2813..3938 run data modify storage minecraft:kickmania wind_direction set value '"\\uE013"'
execute if score $temp0 temp matches 3938..5063 run data modify storage minecraft:kickmania wind_direction set value '"\\uE014"'
execute if score $temp0 temp matches 5063..6188 run data modify storage minecraft:kickmania wind_direction set value '"\\uE015"'
execute if score $temp0 temp matches 6188..7313 run data modify storage minecraft:kickmania wind_direction set value '"\\uE016"'
execute if score $temp0 temp matches 7313..8438 run data modify storage minecraft:kickmania wind_direction set value '"\\uE017"'
execute if score $temp0 temp matches 8438..9563 run data modify storage minecraft:kickmania wind_direction set value '"\\uE018"'
execute if score $temp0 temp matches 9563..10688 run data modify storage minecraft:kickmania wind_direction set value '"\\uE019"'
execute if score $temp0 temp matches 10688..11813 run data modify storage minecraft:kickmania wind_direction set value '"\\uE01A"'
execute if score $temp0 temp matches 11813..12938 run data modify storage minecraft:kickmania wind_direction set value '"\\uE01B"'
execute if score $temp0 temp matches 12938..14063 run data modify storage minecraft:kickmania wind_direction set value '"\\uE01C"'
execute if score $temp0 temp matches 14063..15188 run data modify storage minecraft:kickmania wind_direction set value '"\\uE01D"'
execute if score $temp0 temp matches 15188..16313 run data modify storage minecraft:kickmania wind_direction set value '"\\uE01E"'
execute if score $temp0 temp matches 16313..17438 run data modify storage minecraft:kickmania wind_direction set value '"\\uE01F"'
execute if score $temp0 temp matches 17438..18563 run data modify storage minecraft:kickmania wind_direction set value '"\\uE000"'
execute if score $temp0 temp matches 18563..19688 run data modify storage minecraft:kickmania wind_direction set value '"\\uE001"'
execute if score $temp0 temp matches 19688..20813 run data modify storage minecraft:kickmania wind_direction set value '"\\uE002"'
execute if score $temp0 temp matches 20813..21938 run data modify storage minecraft:kickmania wind_direction set value '"\\uE003"'
execute if score $temp0 temp matches 21938..23063 run data modify storage minecraft:kickmania wind_direction set value '"\\uE004"'
execute if score $temp0 temp matches 23063..24188 run data modify storage minecraft:kickmania wind_direction set value '"\\uE005"'
execute if score $temp0 temp matches 24188..25313 run data modify storage minecraft:kickmania wind_direction set value '"\\uE006"'
execute if score $temp0 temp matches 25313..26438 run data modify storage minecraft:kickmania wind_direction set value '"\\uE007"'
execute if score $temp0 temp matches 26438..27563 run data modify storage minecraft:kickmania wind_direction set value '"\\uE008"'
execute if score $temp0 temp matches 27563..28688 run data modify storage minecraft:kickmania wind_direction set value '"\\uE009"'
execute if score $temp0 temp matches 28688..29813 run data modify storage minecraft:kickmania wind_direction set value '"\\uE00A"'
execute if score $temp0 temp matches 29813..30938 run data modify storage minecraft:kickmania wind_direction set value '"\\uE00B"'
execute if score $temp0 temp matches 30938..32063 run data modify storage minecraft:kickmania wind_direction set value '"\\uE00C"'
execute if score $temp0 temp matches 32063..33188 run data modify storage minecraft:kickmania wind_direction set value '"\\uE00D"'
execute if score $temp0 temp matches 33188..34313 run data modify storage minecraft:kickmania wind_direction set value '"\\uE00E"'
execute if score $temp0 temp matches 34313..35438 run data modify storage minecraft:kickmania wind_direction set value '"\\uE00F"'
title @s actionbar [{"text":"⌛","bold":false},{"score":{"name": "$seconds","objective": "temp"},"bold": true,"color":"green"},{"nbt":"wind_direction","storage":"minecraft:kickmania","font":"kickmania:wind","interpret":true},{"text":"Wind Power: ","color":"yellow"},{"score":{"name": "$wind_power","objective": "kickmania.global"}}]
title @s[tag=plays,scores={using_item=1},predicate=kickmania:item/jetpack] actionbar [{"text":"⌛","bold":false},{"score":{"name": "$seconds","objective": "temp"},"bold": true,"color":"green"},{"text":" 🔥","color":"yellow"},{"score":{"name": "$jetpack_fuel_left_seconds","objective": "temp"}}]
