execute if entity @s[tag=amen] at @s run function kickmania:items/amen/explode
execute if entity @s[tag=banana] at @s run function kickmania:items/banana/explode
execute if entity @s[tag=small_banana] at @s run function kickmania:items/banana/small_explode
execute if entity @s[tag=classic] at @s run function kickmania:tutorial/items/classic_grenade/explode

#tellraw @a {"score":{"name": "@s","objective": "destroy_timer"}}
execute on passengers run kill @s
kill @s