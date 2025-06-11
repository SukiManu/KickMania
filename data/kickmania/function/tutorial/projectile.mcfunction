function kickmania:physics/get_drag

scoreboard players operation @s velocity.y -= $drag_y object
scoreboard players operation @s velocity.y -= $g const

function kickmania:physics/normalize_motion
# scoreboard players operation $x temp = $uz temp
# scoreboard players operation $x temp *= $1000 const
# scoreboard players operation $x temp /= $ux temp
function kickmania:trig/atan
execute if score $ux temp matches ..-1 run scoreboard players add $result temp 1570
execute if score $ux temp matches 0.. run scoreboard players remove $result temp 1570
execute if score $ux temp matches 0.. store result entity @s Rotation[0] float .05729 run scoreboard players get $result temp
execute if score $ux temp matches ..-1 store result entity @s Rotation[0] float .05729 run scoreboard players get $result temp

execute if score $uy temp matches 101.. run scoreboard players set $uy temp 100
execute if score $uy temp matches ..-101 run scoreboard players set $uy temp -100

execute store result entity @s Rotation[1] float 0.01 run scoreboard players operation $uy temp *= $-90 const
function kickmania:tutorial/collision_raycast_start


# scoreboard players operation @s velocity.x += $wind_strength_x kickmania.global
# scoreboard players operation @s velocity.z += $wind_strength_z kickmania.global
scoreboard players operation dx object = @s velocity.x
scoreboard players operation dy object = @s velocity.y
scoreboard players operation dz object = @s velocity.z

execute store result score x object run data get entity @s Pos[0] 10000
execute store result score y object run data get entity @s Pos[1] 10000
execute if score y object matches ..-640000 run return run kill @s
execute store result score z object run data get entity @s Pos[2] 10000
scoreboard players operation x object += dx object
scoreboard players operation y object += dy object
scoreboard players operation z object += dz object
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get x object
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get y object
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get z object




