scoreboard players set $wait_for_item kickmania.global 0
scoreboard players remove @s raycast 1
execute if entity @s[scores={raycast=..0}] run return run kill @s
execute store result score $y temp run data get entity @s Pos[0]
execute if score $y temp matches ..-61 run return run kill @s
execute positioned 0 -40 0 if entity @s[distance=120..] run return run kill @s

execute positioned ~-1 ~-1 ~-1 as @e[type=husk,dx=1,dy=1,dz=1,tag=!hit_by_laser] run function kickmania:items/fusion_laser/deal_damage

playsound minecraft:item.trident.return ambient @a ~ ~ ~ 1 2
execute positioned ~-1 ~-1 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~-1 ~0 ~-1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~-1 ~0 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~-1 ~0 ~1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~-1 ~1 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~-1 ~-1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~-1 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~-1 ~1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~0 ~-1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~0 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~0 ~1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~1 ~-1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~1 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~0 ~1 ~1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~1 ~-1 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~1 ~0 ~-1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~1 ~0 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~1 ~0 ~1 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace
execute positioned ~1 ~1 ~0 unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace

particle witch ~ ~ ~ 0.3 0.3 0.3 0.01 5
scoreboard players set $wait_for_item kickmania.global 1
tp @s ^ ^ ^.8
