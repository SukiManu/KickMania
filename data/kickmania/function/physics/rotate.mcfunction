$data modify storage temp rot.x set value $(x)
$data modify storage temp rot.y set value $(y)
$data modify storage temp rot.z set value $(z)

execute store result score $scale_x temp run scoreboard players get @s scale_x
execute store result score $scale_y temp run scoreboard players get @s scale_y
execute store result score $scale_z temp run scoreboard players get @s scale_z
# execute store result score $scale_x temp run data get entity @s transformation.scale[0] 1000
# execute store result score $scale_y temp run data get entity @s transformation.scale[1] 1000
# execute store result score $scale_z temp run data get entity @s transformation.scale[2] 1000

execute store result score $rot temp run data get storage temp rot.x 100
function kickmania:get_sin
#execute unless score $x temp matches -1100..1100 unless score $z temp matches -1100..1100 run return 0
scoreboard players operation $sin_x temp = $x temp
scoreboard players operation $cos_x temp = $z temp

execute store result score $rot temp run data get storage temp rot.y 100
function kickmania:get_sin
#execute unless score $x temp matches -1100..1100 unless score $z temp matches -1100..1100 run return 0

scoreboard players operation $sin_y temp = $x temp
scoreboard players operation $cos_y temp = $z temp

execute store result score $rot temp run data get storage temp rot.z 100
function kickmania:get_sin
#execute unless score $x temp matches -1100..1100 unless score $z temp matches -1100..1100 run return 0

scoreboard players operation $sin_z temp = $x temp
scoreboard players operation $cos_z temp = $z temp

#[                    cosy*cosz*sx,                    -cosy*sinz*sy,     -siny*sz, 0]
#[ sx*(cosx*sinz + cosz*sinx*siny),  sy*(cosx*cosz - sinx*siny*sinz), cosy*sinx*sz, 0]
#[-sx*(sinx*sinz - cosx*cosz*siny), -sy*(cosz*sinx + cosx*siny*sinz), cosx*cosy*sz, 0]
#[                               0,                                0,            0, 1]


scoreboard players operation $m0 temp = $cos_z temp
scoreboard players operation $m0 temp *= $cos_y temp
scoreboard players operation $m0 temp /= $1000 const
scoreboard players operation $m0 temp *= $scale_x temp


scoreboard players set $m1 temp 0
scoreboard players operation $m1 temp -= $cos_y temp
scoreboard players operation $m1 temp *= $sin_z temp
scoreboard players operation $m1 temp /= $1000 const
scoreboard players operation $m1 temp *= $scale_y temp


scoreboard players operation $m2 temp = $sin_y temp
scoreboard players operation $m2 temp *= $scale_z temp


scoreboard players operation $m4 temp = $cos_z temp
scoreboard players operation $m4 temp *= $sin_y temp
scoreboard players operation $m4 temp *= $sin_x temp
scoreboard players operation $m4 temp /= $1000 const
scoreboard players operation $temp0 temp = $sin_z temp
scoreboard players operation $temp0 temp *= $cos_x temp
scoreboard players operation $m4 temp += $temp0 temp
scoreboard players operation $m4 temp /= $1000 const
scoreboard players operation $m4 temp *= $scale_x temp





scoreboard players operation $temp0 temp = $sin_z temp
scoreboard players operation $temp0 temp *= $sin_y temp
scoreboard players operation $temp0 temp *= $sin_x temp
scoreboard players operation $temp0 temp /= $1000 const
scoreboard players operation $m5 temp = $cos_z temp
scoreboard players operation $m5 temp *= $cos_x temp
scoreboard players operation $m5 temp -= $temp0 temp
scoreboard players operation $m5 temp /= $1000 const
scoreboard players operation $m5 temp *= $scale_y temp



scoreboard players set $m6 temp 0
scoreboard players operation $m6 temp -= $cos_y temp
scoreboard players operation $m6 temp *= $sin_x temp
scoreboard players operation $m6 temp /= $1000 const
scoreboard players operation $m6 temp *= $scale_z temp


scoreboard players operation $temp0 temp = $cos_z temp
scoreboard players operation $temp0 temp *= $cos_x temp
scoreboard players operation $temp0 temp *= $sin_y temp
scoreboard players operation $temp0 temp /= $1000 const
scoreboard players operation $m8 temp = $sin_z temp
scoreboard players operation $m8 temp *= $sin_x temp
scoreboard players operation $m8 temp -= $temp0 temp
scoreboard players operation $m8 temp /= $1000 const
scoreboard players operation $m8 temp *= $scale_x temp


scoreboard players operation $m9 temp = $sin_z temp
scoreboard players operation $m9 temp *= $sin_y temp
scoreboard players operation $m9 temp *= $cos_x temp
scoreboard players operation $m9 temp /= $1000 const
scoreboard players operation $temp0 temp = $cos_z temp
scoreboard players operation $temp0 temp *= $sin_x temp
scoreboard players operation $m9 temp += $temp0 temp
scoreboard players operation $m9 temp /= $1000 const
scoreboard players operation $m9 temp *= $scale_y temp



scoreboard players operation $m10 temp = $cos_x temp
scoreboard players operation $m10 temp *= $cos_y temp
scoreboard players operation $m10 temp /= $1000 const
scoreboard players operation $m10 temp *= $scale_z temp





data modify storage temp transformation set value [1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]

execute store result storage temp transformation[0] float 0.000001 run scoreboard players get $m0 temp

execute store result storage temp transformation[1] float 0.000001 run scoreboard players get $m1 temp

execute store result storage temp transformation[2] float 0.000001 run scoreboard players get $m2 temp

execute store result storage temp transformation[4] float 0.000001 run scoreboard players get $m4 temp

execute store result storage temp transformation[5] float 0.000001 run scoreboard players get $m5 temp

execute store result storage temp transformation[6] float 0.000001 run scoreboard players get $m6 temp

execute store result storage temp transformation[8] float 0.000001 run scoreboard players get $m8 temp

execute store result storage temp transformation[9] float 0.000001 run scoreboard players get $m9 temp

execute store result storage temp transformation[10] float 0.000001 run scoreboard players get $m10 temp


data modify entity @s transformation set from storage temp transformation
data merge entity @s {start_interpolation:0,interpolation_duration:1}
