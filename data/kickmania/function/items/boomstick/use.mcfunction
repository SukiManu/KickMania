
scoreboard players set $instant_next_round kickmania.global 1

scoreboard players remove @s boomstick_shots 1
execute if score @s boomstick_shots matches 0 run clear @s heart_of_the_sea[minecraft:custom_data~{boomstick:true}] 1
execute if score @s boomstick_shots matches ..0 run function kickmania:game/set_move_timer
playsound minecraft:entity.firework_rocket.large_blast ambient @s ~ ~ ~ 1 0.8
particle smoke ^-1 ^1.2 ^2 0.1 0.1 0.1 0.01 5

tag @e[type=husk,tag=fighter,distance=..30] add look_at_target
function kickmania:items/boomstick/find_looking/init
tag @e[type=husk,tag=fighter,tag=look_at_target] remove look_at_target