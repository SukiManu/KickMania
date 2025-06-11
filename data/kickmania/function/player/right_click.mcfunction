advancement revoke @s only kickmania:right_click
#execute if predicate kickmania:below_-15 run return run tellraw @s [{"text":"You can't use that here","color":"gray"}]
advancement revoke @s only kickmania:right_click_check
execute if predicate kickmania:item/bazooka run function kickmania:items/charge
execute if predicate kickmania:item/amen run function kickmania:items/charge
execute if predicate kickmania:item/banana run function kickmania:items/charge
execute if entity @s[tag=ignited_grenade] if predicate kickmania:item/grenade run function kickmania:items/charge
execute if predicate kickmania:item/jetpack run function kickmania:items/jetpack/use

execute unless score @s using_item matches 0.. if predicate kickmania:item/dynamite run function kickmania:items/dynamite/use
execute unless score @s using_item matches 0.. if predicate kickmania:item/fusion_laser run function kickmania:items/fusion_laser/shoot
execute unless score @s using_item matches 0.. if predicate kickmania:item/platform run function kickmania:items/platform/use
execute unless score @s using_item matches 0.. if predicate kickmania:item/airplane run function kickmania:items/airplane/on_use
execute unless score @s using_item matches 0.. if predicate kickmania:item/boomstick run function kickmania:items/boomstick/use
execute if score @s[tag=!ignited_grenade] using_item matches -1 if predicate kickmania:item/grenade run function kickmania:items/classic/use
scoreboard players set @s using_item 1

