execute if score $run snbt matches 1 run return 0
execute if score $paste snbt matches 1 run return 0
execute if score $start snbt matches 1 run return 0
execute if score $save snbt matches 1 run return 0
execute if score $clone_map snbt matches 1 run return 0
execute if score $clear_map snbt matches 1 run return 0
item replace entity @s weapon.mainhand with minecraft:heart_of_the_sea[custom_data={save:true}]
scoreboard players set $save snbt 1
scoreboard players set $id snbt 0
$scoreboard players set $size.x snbt $(x) 
$scoreboard players set $size.y snbt $(y) 
$scoreboard players set $size.z snbt $(z)

scoreboard players set $max temp 1
scoreboard players operation $temp0 temp = $size.x snbt
scoreboard players operation $temp1 temp = $size.x snbt
scoreboard players operation $temp0 temp %= $48 snbt
execute unless score $temp0 temp matches 0 run scoreboard players add $temp1 temp 48
scoreboard players operation $temp1 temp /= $48 snbt
scoreboard players operation $max temp *= $temp1 temp
scoreboard players operation $temp0 temp = $size.y snbt
scoreboard players operation $temp1 temp = $size.y snbt
scoreboard players operation $temp0 temp %= $48 snbt
execute unless score $temp0 temp matches 0 run scoreboard players add $temp1 temp 48
scoreboard players operation $temp1 temp /= $48 snbt
scoreboard players operation $max temp *= $temp1 temp
scoreboard players operation $temp0 temp = $size.z snbt
scoreboard players operation $temp1 temp = $size.z snbt
scoreboard players operation $temp0 temp %= $48 snbt
execute unless score $temp0 temp matches 0 run scoreboard players add $temp1 temp 48
scoreboard players operation $temp1 temp /= $48 snbt
scoreboard players operation $max temp *= $temp1 temp
execute store result bossbar progress max run scoreboard players get $max temp

scoreboard players operation $xtemp snbt = $size.x snbt
scoreboard players operation $ytemp snbt = $size.y snbt
scoreboard players operation $ztemp snbt = $size.z snbt

execute store result bossbar progress max run scoreboard players get $max temp
bossbar set progress players @a
bossbar set progress name {"text":"Saving Structures","color":"gray"}
scoreboard players set $progress snbt 0

$scoreboard players set $clear snbt $(mode)
$data modify storage snbt:data structure_name set value "$(structure_name)"
data modify storage snbt:data id set value 0
scoreboard players set $id snbt 0
$function snbt:save_to_storage {x:$(x),y:$(y),z:$(z),name:"$(name)","structure_name":"$(structure_name)"}
execute store result storage snbt:data length int 1.0 run data get storage snbt:data maps
scoreboard players operation $xtemp snbt = $size.x snbt
scoreboard players operation $ytemp snbt = $size.y snbt
scoreboard players operation $ztemp snbt = $size.z snbt


data remove storage snbt:data vars
data modify storage snbt:data vars.origin set value [0,0,0]

say @s
execute store result score $x temp run data get entity @s Pos[0]
execute store result score $y temp run data get entity @s Pos[1]
execute store result score $z temp run data get entity @s Pos[2]

execute store result storage snbt:data vars.origin[0] int 1.0 run scoreboard players remove $x temp 1
execute store result storage snbt:data vars.origin[1] int 1.0 run scoreboard players remove $y temp 1
execute store result storage snbt:data vars.origin[2] int 1.0 run scoreboard players remove $z temp 1

execute store result storage snbt:data vars.current_pos_x int 1.0 run scoreboard players get $x temp
execute store result storage snbt:data vars.current_pos_y int 1.0 run scoreboard players get $y temp
execute store result storage snbt:data vars.current_pos_z int 1.0 run scoreboard players get $z temp
tellraw @a {"nbt":"vars","storage":"snbt:data"}