execute store result score $id weapon run data get entity @s SelectedItem.components.minecraft:custom_data.id
scoreboard players operation $connection player.id = @s player.id
tag @s add this
execute at @s as @e[type=husk,tag=look_at_target,predicate=!kickmania:connection] run function kickmania:find_looking/search
tag @s remove this


advancement revoke @s only kickmania:find_looking