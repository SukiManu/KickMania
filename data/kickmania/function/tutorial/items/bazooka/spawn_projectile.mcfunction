scoreboard players operation @s velocity.x = $sin temp
scoreboard players operation @s velocity.z = $cos temp
scoreboard players operation @s velocity.y = $pitch temp
scoreboard players operation @s velocity.x *= $charge weapon
scoreboard players operation @s velocity.z *= $charge weapon
scoreboard players operation @s velocity.y *= $charge weapon
scoreboard players operation @s velocity.x /= $12 const
scoreboard players operation @s velocity.y /= $12 const
scoreboard players operation @s velocity.z /= $12 const
data modify storage temp transformation set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute store result storage temp transformation[0] float 0.00001 run scoreboard players get @s velocity.x
execute store result storage temp transformation[8] float 0.00001 run scoreboard players get @s velocity.z

data merge entity @s {block_state:{Name:"tnt"},Tags:["tutorial_bazooka","tutorial"],teleport_duration:1,view_range:99,transformation:{scale:[0.3f,0.3f,0.8f],translation:[-0.15f,-0.15f,-0.2f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get $rot0 temp
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get $rot1 temp