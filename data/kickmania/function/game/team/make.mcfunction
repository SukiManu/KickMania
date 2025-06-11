tellraw @a[tag=is_admin] ["Creating a team for: ",{"selector": "@s"}]

tag @s remove in_queue
tag @s add spectator
tag @s add alive
execute store result score @s in_game_player.id run scoreboard players add $id in_game_player.id 1
execute store result storage temp player.id int 1.0 run scoreboard players get @s player.id
data modify storage temp args.uuid set from entity @s UUID

function kickmania:player/get/name with storage temp player
function kickmania:player/get/team_name with storage temp player
function kickmania:player/get/flag with storage temp player
execute unless score @s grave_skin matches 20000..20099 run function kickmania:player/get/grave_skin with storage temp player
execute if score @s grave_skin matches 20000..20099 run scoreboard players operation $grave_skin temp = @s grave_skin
#function kickmania:player/get/head_skin with storage temp player
$execute store result storage temp index.i int 1.0 run random value 0..$(colors)
function kickmania:game/team/get_color with storage temp index

data modify storage temp args.armor_color set value 691342

# White
execute if data storage minecraft:temp args{color:"white"} run data modify storage temp args.armor_color set value 16383998
# Black
execute if data storage minecraft:temp args{color:"black"} run data modify storage temp args.armor_color set value 1908001
# Dark Gray
execute if data storage minecraft:temp args{color:"dark_gray"} run data modify storage temp args.armor_color set value 4673362
# Gray
execute if data storage minecraft:temp args{color:"gray"} run data modify storage temp args.armor_color set value 10526880
# Light Gray
execute if data storage minecraft:temp args{color:"light_gray"} run data modify storage temp args.armor_color set value 12632256
# Red
execute if data storage minecraft:temp args{color:"red"} run data modify storage temp args.armor_color set value 11743532
# Dark Red
execute if data storage minecraft:temp args{color:"dark_red"} run data modify storage temp args.armor_color set value 11141120
# Blue
execute if data storage minecraft:temp args{color:"blue"} run data modify storage temp args.armor_color set value 3361970
# Dark Blue
execute if data storage minecraft:temp args{color:"dark_blue"} run data modify storage temp args.armor_color set value 170
# Green
execute if data storage minecraft:temp args{color:"green"} run data modify storage temp args.armor_color set value 5635925
# Dark Green
execute if data storage minecraft:temp args{color:"dark_green"} run data modify storage temp args.armor_color set value 43520
# Yellow
execute if data storage minecraft:temp args{color:"yellow"} run data modify storage temp args.armor_color set value 16776960
# Gold
execute if data storage minecraft:temp args{color:"gold"} run data modify storage temp args.armor_color set value 16755200
# Aqua
execute if data storage minecraft:temp args{color:"aqua"} run data modify storage temp args.armor_color set value 5636095
# Dark Aqua
execute if data storage minecraft:temp args{color:"dark_aqua"} run data modify storage temp args.armor_color set value 43690
# Purple
execute if data storage minecraft:temp args{color:"purple"} run data modify storage temp args.armor_color set value 11141290
# Dark Purple
execute if data storage minecraft:temp args{color:"dark_purple"} run data modify storage temp args.armor_color set value 6710937

execute if data storage minecraft:temp args{color:"light_purple"} run data modify storage temp args.armor_color set value 99710937



function kickmania:game/team/set_flag with storage temp args


scoreboard players set $minions_spawned temp 0

scoreboard players operation $connection player.id = @s player.id

scoreboard players set $result temp -1
execute store result score $result temp run function kickmania:game/team/init_spawn_minions with storage temp args
execute unless score $result temp matches -2461311 run tellraw @a[tag=is_admin] ["Error initiating minion spawning for: ",{"selector": "@s"},"\nargs:",{"nbt":"args","storage":"temp","color":"green"}]
function kickmania:game/give_items

execute as @r[tag=in_queue] run function kickmania:game/team/make with storage minecraft:temp length

