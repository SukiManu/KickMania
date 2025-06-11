# place template kickmania:explosion/small ~-1 ~-1 ~-1
# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:chiseled_bookshelf[slot_0_occupied=true,slot_3_occupied=false,slot_5_occupied=true]



##GENERATED USING sphere.py
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

particle explosion ~ ~ ~ 0.3 0.3 0.3 0.01 3
execute as @a at @s run playsound minecraft:entity.generic.explode ambient @s ~ ~ ~ 0.6