execute unless block ~ ~ ~ #minecraft:air align xyz positioned ~.5 ~.5 ~.5 run return run execute summon marker run function snbt:get_corner_cords
scoreboard players add $raycast snbt 1

execute if score $raycast snbt matches ..60 positioned ^ ^ ^.1 run function snbt:wand/raycast