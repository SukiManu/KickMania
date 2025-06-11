summon marker ~ ~ ~ {UUID:[I;9,0,0,5]}
tellraw @a {"nbt": "Pos","entity": "9-0-0-0-5"}
kill 9-0-0-0-5

setblock ~ ~ ~ minecraft:structure_block[mode=save]{posX:1,posY:1,posZ:1,sizeX:48,sizeY:48,sizeZ:48,mode:"SAVE"} destroy
execute if score $clear snbt matches 1 run setblock ~ ~ ~ air


execute if score $xtemp snbt matches ..47 store result block ~ ~ ~ sizeX int 1.0 run scoreboard players get $xtemp snbt
execute if score $ytemp snbt matches ..47 store result block ~ ~ ~ sizeY int 1.0 run scoreboard players get $ytemp snbt
execute if score $ztemp snbt matches ..47 store result block ~ ~ ~ sizeZ int 1.0 run scoreboard players get $ztemp snbt
$data modify block ~ ~ ~ name set value "$(structure_name)/$(id)"

execute store result storage snbt:data id int 1.0 run scoreboard players add $id snbt 1

execute store result bossbar progress value run scoreboard players add $progress snbt 1
bossbar set progress name [{"text":"Pasting map ","color":"gray"},{"score":{"name":"$progress","objective": "snbt"}},"/",{"score":{"name":"$max","objective": "temp"}}]