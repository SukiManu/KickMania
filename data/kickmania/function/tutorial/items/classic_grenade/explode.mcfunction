execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10
scoreboard players operation $connection entity.id = @s entity.id
execute as @e[type=husk,tag=tutorial,distance=..5] run function kickmania:tutorial/items/classic_grenade/deal_damage
playsound kickmania:sfx_explosion1 ambient @a
particle explosion
summon creeper ~ ~.1 ~ {ExplosionRadius:-2,Fuse:0,Silent:1b}
