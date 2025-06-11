tag @s add blocked
tag @s add in_control
scoreboard players operation $health temp = @s health
data modify storage temp fighter_name set from entity @s ArmorItems[3].components.minecraft:custom_data.name
#data modify storage temp text set from entity @s ArmorItems[3].components.minecraft:custom_data.text
execute store result bossbar kickmania:current_fighter value run scoreboard players get @s health

bossbar set kickmania:current_fighter name [{"text":"Playing as "},{"nbt":"fighter_name","storage":"temp","interpret": true},{"text":" [","color":"green"},{"score":{"name": "$health","objective": "temp"},"color":"green"},{"text":" HP]","color":"green"}]
execute if score $health temp matches 70.. run bossbar set kickmania:current_fighter color green
execute if score $health temp matches 25..69 run bossbar set kickmania:current_fighter color yellow
execute if score $health temp matches ..24 run bossbar set kickmania:current_fighter color red
data remove storage temp fighter_name