execute store result score $rot temp run random value 0..359
scoreboard players operation $rot temp *= $100 const
scoreboard players operation $wind_angle kickmania.global = $rot temp
function kickmania:get_sin
execute store result score $wind_power kickmania.global run random value 10..30

#execute store result storage temp spawn_point.x int 1.0 run scoreboard players get $z temp
#execute store result storage temp spawn_point.z int 1.0 run scoreboard players get $x temp
#function kickmania:game/set_wind_spawn_point with storage temp spawn_point

scoreboard players operation $wind_strength_x kickmania.global = $x temp
scoreboard players operation $wind_strength_z kickmania.global = $z temp
scoreboard players operation $wind_strength_x kickmania.global *= $wind_power kickmania.global
scoreboard players operation $wind_strength_z kickmania.global *= $wind_power kickmania.global
scoreboard players operation $wind_strength_x kickmania.global /= $500 const
scoreboard players operation $wind_strength_z kickmania.global /= $500 const
scoreboard players set $wind_strength_x kickmania.global 0
scoreboard players set $wind_strength_z kickmania.global 0