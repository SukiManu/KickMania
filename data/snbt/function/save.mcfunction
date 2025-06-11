item replace entity @p weapon.mainhand with heart_of_the_sea[custom_data={save:true}]
item replace entity @p weapon.offhand with air

$execute positioned $(current_pos_x) $(current_pos_y) $(current_pos_z) run tp @s ~ ~-2 ~

execute if score $xtemp snbt matches ..47 run scoreboard players operation $xtemp snbt -= $xtemp snbt
execute if score $xtemp snbt matches 48.. run scoreboard players remove $xtemp snbt 48
execute store result score $temp snbt run data get storage snbt:data vars.current_pos_x 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.current_pos_x double 0.1 run scoreboard players get $temp snbt

execute store result score $temp snbt run data get storage snbt:data vars.clone_pos_x 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.clone_pos_x double 0.1 run scoreboard players get $temp snbt


execute unless score $xtemp snbt matches 1.. run function snbt:limit_x

execute unless score $ztemp snbt matches 1.. run function snbt:limit_z

execute unless score $ytemp snbt matches 1.. run function snbt:limit_y


execute if score $ytemp snbt matches ..0 run scoreboard players set $run snbt 0

execute store result bossbar progress value run scoreboard players add $progress snbt 1
bossbar set progress name [{"text":"Pasting map ","color":"gray"},{"score":{"name":"$progress","objective": "snbt"}},"/",{"score":{"name":"$max","objective": "temp"}}]