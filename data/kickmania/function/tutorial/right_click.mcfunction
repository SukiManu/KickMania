tag @s add using_item
advancement revoke @s only kickmania:right_click_tutorial
advancement revoke @s only kickmania:right_click_check_tutorial
execute if entity @s[tag=!holding] if predicate kickmania:item/bazooka run function kickmania:tutorial/items/charge
execute if predicate kickmania:item/grenade if entity @s[tag=can_throw] run function kickmania:tutorial/items/charge
execute if predicate kickmania:item/grenade if entity @s[tag=!ignited_grenade] if score $stop temp matches 0 run function kickmania:tutorial/items/classic_grenade/ignite


