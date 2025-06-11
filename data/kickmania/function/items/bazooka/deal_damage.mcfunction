execute store result score $dx temp run data get entity @s Pos[0] 10
execute store result score $dy temp run data get entity @s Pos[1] 10
execute store result score $dz temp run data get entity @s Pos[2] 10

scoreboard players operation $dx temp -= $x temp
scoreboard players operation $dy temp -= $y temp
scoreboard players operation $dz temp -= $z temp
execute store result storage temp transformation[0] float 0.1 run scoreboard players get $dx temp
execute store result storage temp transformation[4] float 0.1 run scoreboard players get $dy temp
execute store result storage temp transformation[8] float 0.1 run scoreboard players get $dz temp
data modify entity 0-0-D3-0-016300000000 transformation set from storage temp transformation
execute store result score $distance temp run data get entity 0-0-D3-0-016300000000 transformation.scale[0] 10



scoreboard players operation $dx temp *= $100 const
scoreboard players operation $dy temp *= $100 const
scoreboard players operation $dz temp *= $100 const

scoreboard players operation $dx temp /= $distance temp
scoreboard players operation $dy temp /= $distance temp
execute if score $dy temp matches ..-1 run scoreboard players operation $dy temp *= $-1 const
scoreboard players set $temp0 temp 82
scoreboard players operation $temp0 temp -= $dy temp


scoreboard players operation $dz temp /= $distance temp



execute store result entity @s Motion[0] double 0.022 run scoreboard players get $dx temp
execute store result entity @s Motion[1] double 0.012 run scoreboard players get $temp0 temp
execute store result entity @s Motion[2] double 0.022 run scoreboard players get $dz temp


scoreboard players set $damage temp 500
scoreboard players operation $distance temp *= $6 const
scoreboard players operation $damage temp -= $distance temp
scoreboard players operation $damage temp /= $10 const
execute if score $damage temp matches ..0 run scoreboard players set $damage temp 1

scoreboard players operation @s damage_taken += $damage temp
tag @s add damaged

function kickmania:game/schedule/damage_dealt

# execute if entity @s[type=!player] run function kickmania:fighter/get_damage
# execute if entity @s[type=player] run function kickmania:player/deal_damage
