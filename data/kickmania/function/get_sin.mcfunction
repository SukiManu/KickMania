
execute if score $rot temp matches 9000 run return run function kickmania:set_sin_cos
scoreboard players operation $quadrant temp = $rot temp
scoreboard players operation $quadrant temp /= $9000 const
scoreboard players operation $quadrant temp %= $4 const
scoreboard players operation $rotation temp = $rot temp

execute if score $rotation temp matches ..-1 run scoreboard players add $rotation temp 36000

execute if score $rotation temp matches 9000.. run scoreboard players remove $rotation temp 9000
execute if score $rotation temp matches 9000.. run scoreboard players remove $rotation temp 9000
execute if score $rotation temp matches 9000.. run scoreboard players remove $rotation temp 9000
execute if score $rotation temp matches 9000.. run scoreboard players remove $rotation temp 9000
execute if score $rotation temp matches 9000.. run scoreboard players remove $rotation temp 9000
scoreboard players set $temp0 temp 9000
execute if score $quadrant temp matches 1 run scoreboard players operation $temp0 temp -= $rotation temp
execute if score $quadrant temp matches 1 run scoreboard players operation $rotation temp = $temp0 temp
scoreboard players set $temp0 temp 9000
execute if score $quadrant temp matches 3 run scoreboard players operation $temp0 temp -= $rotation temp
execute if score $quadrant temp matches 3 run scoreboard players operation $rotation temp = $temp0 temp

scoreboard players operation $rot_copy temp = $rotation temp

scoreboard players operation $x temp = $rot_copy temp
scoreboard players operation $x temp *= $4 const
scoreboard players set $temp1 temp 18000
scoreboard players operation $temp1 temp -= $rot_copy temp
scoreboard players operation $x temp *= $temp1 temp
scoreboard players set $temp2 temp 405000
scoreboard players operation $rot_copy temp *= $temp1 temp
scoreboard players operation $rot_copy temp /= $1000 const
scoreboard players operation $temp2 temp -= $rot_copy temp
scoreboard players operation $x temp /= $temp2 temp
#execute if score $negative temp matches 1 run scoreboard players operation $x temp *= $-1 const

scoreboard players operation $rot_copy temp = $rotation temp
scoreboard players set $z temp 9000
scoreboard players operation $z temp -= $rot_copy temp
scoreboard players operation $rot_copy temp = $z temp
scoreboard players operation $z temp *= $4 const
scoreboard players set $temp1 temp 18000
scoreboard players operation $temp1 temp -= $rot_copy temp
scoreboard players operation $z temp *= $temp1 temp
scoreboard players set $temp2 temp 405000
scoreboard players operation $rot_copy temp *= $temp1 temp
scoreboard players operation $rot_copy temp /= $1000 const
scoreboard players operation $temp2 temp -= $rot_copy temp
scoreboard players operation $z temp /= $temp2 temp


execute unless score $quadrant temp matches 0 unless score $quadrant temp matches 3 run scoreboard players operation $z temp *= $-1 const
execute unless score $quadrant temp matches 0 unless score $quadrant temp matches 1 run scoreboard players operation $x temp *= $-1 const


#execute unless score $x temp matches -1100..1100 unless score $z temp matches -1100..1100 run tellraw @a [{"score":{"name": "$bla0","objective": "temp"}}," ",{"score":{"name": "$bla2","objective": "temp"}}]

#execute unless score $x temp matches -1100..1100 unless score $z temp matches -1100..1100 run tellraw @a 
#tellraw @a ["COS= ",{"score":{"name": "$x","objective": "temp"}}," SIN= ",{"score":{"name": "$z","objective": "temp"}}," ROT=",{"score":{"name": "$rot","objective": "temp"}}," Quadrant=",{"score":{"name": "$quadrant","objective": "temp"}}]
#tellraw @a ["ROT=",{"score":{"name": "rotation","objective": "temp"}}," Quadrant=",{"score":{"name": "quadrant","objective": "temp"}}]





scoreboard players reset $negative temp