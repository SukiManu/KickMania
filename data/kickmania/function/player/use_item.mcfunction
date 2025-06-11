stopsound @s ambient kickmania:sfx_rocketpowerup
execute if predicate kickmania:item/bazooka at @s anchored eyes positioned ^ ^ ^0.5 run function kickmania:items/bazooka/shoot
execute if predicate kickmania:item/amen at @s anchored eyes positioned ^ ^ ^0.5 run function kickmania:items/amen/shoot
execute if predicate kickmania:item/banana at @s anchored eyes positioned ^ ^ ^0.5 run function kickmania:items/banana/shoot
execute if entity @s[tag=ignited_grenade] if predicate kickmania:item/grenade at @s anchored eyes positioned ^ ^ ^0.5 run function kickmania:items/classic/shoot
execute if entity @s[tag=!ignited_grenade,tag=can_use_item] if predicate kickmania:item/grenade run tag @s add ignited_grenade
execute if predicate kickmania:item/jetpack at @s anchored eyes positioned ^ ^ ^0.5 run function kickmania:items/jetpack/stop
attribute @s[tag=!ignited_grenade] minecraft:movement_speed base set 0.1
attribute @s[tag=!ignited_grenade] minecraft:jump_strength base set 0.42

#execute unless items entity @s weapon.mainhand minecraft:heart_of_the_sea[minecraft:custom_data~{grenade:1b}] run tag @s[gamemode=!creative] remove can_use_item
execute unless score @s boomstick_shots matches 1.. run tag @s[tag=!ignited_grenade] remove can_use_item

