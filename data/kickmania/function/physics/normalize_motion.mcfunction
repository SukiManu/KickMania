scoreboard players operation $ux temp = @s velocity.x
scoreboard players operation $uy temp = @s velocity.y
scoreboard players operation $uz temp = @s velocity.z


execute store result storage temp transformation[0] float 0.001 run scoreboard players get @s velocity.x
execute store result storage temp transformation[4] float 0.001 run scoreboard players get @s velocity.y
execute store result storage temp transformation[8] float 0.001 run scoreboard players get @s velocity.z

data modify entity 0-0-D3-0-016300000000 transformation set from storage temp transformation
execute store result score $u_norm temp run data get entity 0-0-D3-0-016300000000 transformation.scale[0] 10
scoreboard players operation $ux temp /= $u_norm temp
scoreboard players operation $uy temp /= $u_norm temp
scoreboard players operation $uz temp /= $u_norm temp

execute if score $ux temp matches 100.. run scoreboard players set $ux temp 100
execute if score $uy temp matches 100.. run scoreboard players set $uy temp 100
execute if score $uz temp matches 100.. run scoreboard players set $uz temp 100

execute if score $ux temp matches ..-100 run scoreboard players set $ux temp -100
execute if score $uy temp matches ..-100 run scoreboard players set $uy temp -100
execute if score $uz temp matches ..-100 run scoreboard players set $uz temp -100

execute if score $ux temp matches -1..1 run scoreboard players set $ux temp 0

execute if score $uz temp matches 1..1 run scoreboard players set $uz temp 0

#tellraw @a[tag=is_admin] ["[",{"score":{"name": "$ux","objective": "temp"}},",",{"score":{"name": "$uy","objective": "temp"}},",",{"score":{"name": "$uz","objective": "temp"}},"] ",{"score":{"name": "$u_norm","objective": "temp"}}]