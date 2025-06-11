execute store result score $corner1_x snbt run data get entity @s Pos[0]
execute store result score $corner1_y snbt run data get entity @s Pos[1]
execute store result score $corner1_z snbt run data get entity @s Pos[2]

scoreboard players operation $corner1_x snbt -= $corner0_x snbt
scoreboard players operation $corner1_y snbt -= $corner0_y snbt
scoreboard players operation $corner1_z snbt -= $corner0_z snbt

execute if score $corner1_x snbt matches ..-1 run scoreboard players operation $corner1_x snbt *= $-1 snbt
execute if score $corner1_y snbt matches ..-1 run scoreboard players operation $corner1_y snbt *= $-1 snbt
execute if score $corner1_z snbt matches ..-1 run scoreboard players operation $corner1_z snbt *= $-1 snbt

tellraw @a ["Map selection size:[",{"score":{"name": "$corner1_x","objective": "snbt"}},", ",{"score":{"name": "$corner1_y","objective": "snbt"}},", ",{"score":{"name": "$corner1_z","objective": "snbt"}},"] With Origin at: [",{"score":{"name": "$corner0_x","objective": "snbt"}},", ",{"score":{"name": "$corner0_y","objective": "snbt"}},", ",{"score":{"name": "$corner0_z","objective": "snbt"}},"]\nType /function snbt:save_map {name:\"<name>\"} to save it"]
scoreboard players set $can_save snbt 1
