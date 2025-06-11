particle dust_color_transition{from_color:[0.196,1.000,0.141],scale:4,to_color:[0.243,0.839,0.482]} ~ ~ ~ 2 1 2 1 500 normal

execute as @a[tag=plays,limit=1] run function kickmania:game/end_turn

tag @e[type=husk,tag=fighter,distance=..3.5] add has_poison
effect give @e[type=husk,tag=has_poison] luck infinite 0 true

scoreboard players set $damage temp 23
execute as @s[type=husk,tag=fighter] run function kickmania:fighter/deal_damage_simple

playsound block.soul_sand.fall ambient @a ~ ~ ~ 2.0 1.6
playsound minecraft:item.brush.brushing.sand.complete ambient @a ~ ~ ~ 2.0 0.2

execute if entity @s[type=arrow] run kill @s

scoreboard players set $wait_for_item kickmania.global 0