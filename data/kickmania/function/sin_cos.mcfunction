execute store result entity @s Rotation[0] float 0.1 run scoreboard players get $rot0 temp
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get $rot1 temp
tp @s ^ ^ ^5
execute store result score $sin temp run data get entity @s Pos[0] 200.0
execute store result score $cos temp run data get entity @s Pos[2] 200.0
execute store result score $pitch temp run data get entity @s Pos[1] 200.0

data modify entity @s Pos set value [0d,0d,0d]