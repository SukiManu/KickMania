scoreboard players operation $connection player.id = @s player.id
tag @s add this
execute at @s as @e[type=husk,tag=look_at_target] run function kickmania:items/boomstick/find_looking/search
tag @s remove this


advancement revoke @s only kickmania:find_looking