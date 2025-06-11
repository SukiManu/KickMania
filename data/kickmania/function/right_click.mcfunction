advancement revoke @s only kickmania:right_click
attribute @s minecraft:generic.movement_speed base set 0
attribute @s minecraft:generic.jump_strength base set 0
execute if predicate kickmania:item/bazooka run function kickmania:items/charge
execute if predicate kickmania:item/amen run function kickmania:items/charge
