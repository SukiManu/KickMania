scoreboard players operation $charge weapon = @s charge
stopsound @s ambient kickmania:sfx_rocketpowerup
execute if entity @s[tag=!holding] if predicate kickmania:item/bazooka run function kickmania:tutorial/items/bazooka/shoot
execute if predicate kickmania:item/grenade if entity @s[tag=can_throw] anchored eyes positioned ^ ^ ^.3 run function kickmania:tutorial/items/classic_grenade/shoot
execute if entity @s[tag=ignited_grenade,tag=!can_throw] run tag @s add can_throw
execute if score @s charge matches ..299 run scoreboard players set $stop temp 0
scoreboard players set @s charge 0
tag @s[tag=using_item] add holding
tag @s[tag=!using_item] remove holding