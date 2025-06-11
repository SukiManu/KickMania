execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10

playsound minecraft:entity.generic.explode ambient @a
particle explosion ~ ~ ~ 1.5 1.5 1.5 0.02 9
playsound kickmania:sfx_explosion3 ambient @s ~ ~ ~ 0.8

execute as @e[distance=..5,type=husk] run function kickmania:tutorial/items/bazooka/deal_damage

summon creeper ^ ^ ^-.2 {ExplosionRadius:-2,Fuse:0,Silent:1b}
stopsound @a * minecraft:entity.generic.explode

kill @s