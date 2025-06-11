scoreboard players add $i raycast 1
execute unless block ~ ~ ~ #minecraft:air positioned ^ ^ ^-1.5 align xyz run return run tp 7A7C-0-0-0-0 ~ ~ ~
execute if score $i raycast matches ..60 positioned ^ ^ ^-1 align xyz run tp 7A7C-0-0-0-0 ~ ~ ~
execute if score $i raycast matches ..60 positioned ^ ^ ^.1 run function kickmania:items/platform/raycast