scoreboard players set $crate_spawned kickmania.global 1
scoreboard players set $timer kickmania.global 80
scoreboard players set $watchdog timer 0

execute as @a at @s run playsound kickmania:sfx_cratespawn ambient

execute store result score $result temp if predicate kickmania:chance025
execute if score $result temp matches 0 run tellraw @a {"text":"A new health crate has spawned!","color":"green"}
execute if score $result temp matches 1 run tellraw @a {"text":"A new weapon crate has spawned!","color":"gold"}

execute if score $result temp matches 0 run summon cow ~ ~ ~ {active_effects:[{id:"slow_falling",duration:5555,show_particles:false}],Tags:["crate"],PickupDelay:99999,Passengers:[{id:"minecraft:block_display",Tags:["crate","health"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-0.4f,-1f],scale:[1.2f,1.2f,1.2f]},block_state:{Name:"minecraft:slime_block"}},{id:"minecraft:item_display",Tags:["parachute"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-3f],scale:[7f,7f,1f]},Rotation:[0f,90f],item:{id:"paper"}}]}
execute if score $result temp matches 1 run summon cow ~ ~ ~ {active_effects:[{id:"slow_falling",duration:5555,show_particles:false}],Tags:["crate"],PickupDelay:99999,Passengers:[{id:"minecraft:block_display",Tags:["crate","weapon"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-0.4f,-1f],scale:[1.2f,1.2f,1.2f]},block_state:{Name:"minecraft:dried_kelp_block"}}],cow:{id:"minecraft:oak_button",count:1}}


execute at 0-0-D7-0-016300000000 run spreadplayers ~ ~ 5 128 false @n[type=cow,tag=crate]

execute store result score $x temp run data get entity @n[type=cow,tag=crate] Pos[0] 1
execute store result score $z temp run data get entity @n[type=cow,tag=crate] Pos[2] 1
execute store result score $temp0 temp run random value -5..5
scoreboard players operation $x temp += $temp0 temp
execute store result score $temp0 temp run random value -5..5
scoreboard players operation $z temp += $temp0 temp

execute store result entity @n[type=cow,tag=crate] Pos[0] double 1.0 run scoreboard players get $x temp
execute store result entity @n[type=cow,tag=crate] Pos[2] double 1.0 run scoreboard players get $z temp

execute store result score $x temp run data get entity @n[type=cow,tag=crate] Pos[0] 10
execute store result score $z temp run data get entity @n[type=cow,tag=crate] Pos[2] 10
execute store result score $temp0 temp run random value -9..9
scoreboard players operation $x temp += $temp0 temp
execute store result score $temp0 temp run random value -9..9
scoreboard players operation $z temp += $temp0 temp

execute store result entity @n[type=cow,tag=crate] Pos[0] double .1 run scoreboard players get $x temp
execute store result entity @n[type=cow,tag=crate] Pos[2] double .1 run scoreboard players get $z temp

data modify entity @n[type=cow,tag=crate] Pos[1] set value 0d
