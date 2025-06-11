#tellraw @a [{"nbt":"vars.current_pos_x","storage": "snbt:data"},", ",{"nbt":"vars.current_pos_x","storage": "snbt:data"},", ",{"nbt":"vars.current_pos_x","storage": "snbt:data"}]
bossbar set progress players @a


execute if score $paste snbt matches 1 in kickmania:kickmania run function snbt:paste with storage snbt:data vars
execute if score $start snbt matches 1 in minecraft:overworld run function snbt:set_block with storage snbt:data vars
execute if score $clone_map snbt matches 1 in kickmania:kickmania run function snbt:clone/run with storage snbt:data vars
execute if score $clear_map snbt matches 1 in kickmania:kickmania run function snbt:clear_map with storage snbt:data vars



execute if score $xtemp snbt matches ..47 run scoreboard players operation $xtemp snbt -= $xtemp snbt
execute if score $xtemp snbt matches 48.. run scoreboard players remove $xtemp snbt 48
execute store result score $temp snbt run data get storage snbt:data vars.current_pos_x 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.current_pos_x double 0.1 run scoreboard players get $temp snbt

execute store result score $temp snbt run data get storage snbt:data vars.clone_pos_x 10
scoreboard players add $temp snbt 480
execute store result storage snbt:data vars.clone_pos_x double 0.1 run scoreboard players get $temp snbt


execute unless score $xtemp snbt matches 1.. run function snbt:limit_x

execute unless score $ztemp snbt matches 1.. run function snbt:limit_z

execute unless score $ytemp snbt matches 1.. run function snbt:limit_y


execute if score $ytemp snbt matches ..0 run scoreboard players set $run snbt 0