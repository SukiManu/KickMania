tp @s ^ ^ ^1
#execute if entity @e[type=marker,tag=strike_point,distance=...5] run scoreboard players set @s timer 120
#execute at @e[type=marker,tag=strike_point,distance=...5] run tp @s ~ ~ ~
#execute if entity @e[type=marker,tag=strike_point,distance=...5] run kill @e[type=marker,tag=strike_point]

execute if score $generic timer matches 0 as @a at @s run playsound kickmania:sfx_bomber ambient @s

scoreboard players add $generic timer 1
execute if score $generic timer matches 20.. run scoreboard players set $generic timer 0


execute if score @s timer matches 40 run summon item ~ ~28 ~ {Tags:["strike"],Item:{id:"stone",count:1,components:{max_stack_size:1}},PickupDelay:30000,Motion:[0.0d,-1.0d,0.0d],Passengers:[{id:"minecraft:block_display",Rotation:[0.0f,90.0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.2f,-0.35f],scale:[0.7f,0.8f,0.7f]},block_state:{Name:"minecraft:dragon_egg"}}]}
execute if score @s timer matches 38 as @a at @s run playsound kickmania:sfx_bombwhistle ambient
execute if score @s timer matches 35 run summon item ~ ~28 ~ {Tags:["strike"],Item:{id:"stone",count:1,components:{max_stack_size:1}},PickupDelay:30000,Motion:[0.0d,-1.0d,0.0d],Passengers:[{id:"minecraft:block_display",Rotation:[0.0f,90.0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.2f,-0.35f],scale:[0.7f,0.8f,0.7f]},block_state:{Name:"minecraft:dragon_egg"}}]}
execute if score @s timer matches 33 as @a at @s run playsound kickmania:sfx_bombwhistle ambient
execute if score @s timer matches 30 run summon item ~ ~28 ~ {Tags:["strike"],Item:{id:"stone",count:1,components:{max_stack_size:1}},PickupDelay:30000,Motion:[0.0d,-1.0d,0.0d],Passengers:[{id:"minecraft:block_display",Rotation:[0.0f,90.0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.2f,-0.35f],scale:[0.7f,0.8f,0.7f]},block_state:{Name:"minecraft:dragon_egg"}}]}
execute if score @s timer matches 28 as @a at @s run playsound kickmania:sfx_bombwhistle ambient
execute if score @s timer matches ..0 run kill @s
execute if score @s timer matches ..0 run scoreboard players reset @s timer
execute if score @s timer matches 0.. run scoreboard players remove @s timer 1