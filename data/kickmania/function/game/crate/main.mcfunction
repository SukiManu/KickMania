execute if score @s display matches 0 run data merge entity @s {transformation:[1.2f,0f,0f,-0.6f,0f,1.2f,0f,-0.7f,0f,0f,1.2f,-0.6f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
execute if score @s display matches 1 run data merge entity @s {transformation:[1.22f,0f,0f,-0.68f,0f,1.16f,0f,-0.7f,0f,0f,1.22f,-0.68f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
scoreboard players add @s display 1
execute if score @s display matches 2.. run scoreboard players set @s display 0