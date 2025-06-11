execute if score @s timer matches 0 run data merge entity @s {transformation:{translation:[0.0f,10.0f,0.0f]},start_interpolation:0,interpolation_duration:20}
scoreboard players add @s timer 1
scoreboard players set @s[scores={timer=20..}] timer 0
