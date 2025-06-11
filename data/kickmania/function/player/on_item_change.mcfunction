execute store result score $id weapon run data get entity @s SelectedItem.components."minecraft:custom_data".id
execute if score $id weapon matches 0 run playsound kickmania:sfx_drawitem player @a
execute if score $id weapon matches 1 run playsound kickmania:sfx_drawbazooka player @a
execute if score $id weapon matches 2 run playsound kickmania:sfx_drawgrenade player @a

execute if predicate kickmania:chance01 run function kickmania:find_looking/scared
stopsound @a ambient minecraft:item.elytra.flying
effect clear @s levitation
