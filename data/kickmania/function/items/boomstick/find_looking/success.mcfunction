tag @s remove find_me
scoreboard players add @s damage_taken 12
scoreboard players operation @s damage_taken *= $damage_multiplier kickmania.global
scoreboard players operation @s damage_taken /= $100 const


function kickmania:get_sin_cos
function kickmania:get_sin_cos



execute store result entity @s Motion[0] double -0.001 run scoreboard players get $sin temp
execute store result entity @s Motion[2] double -0.001 run scoreboard players get $cos temp
execute store result entity @s Motion[1] double -0.001 run scoreboard players get $pitch temp




scoreboard players operation @s health -= @s damage_taken
scoreboard players operation $health temp = @s health
scoreboard players operation $damage_taken temp = @s damage_taken
scoreboard players set @s damage_taken 0
function kickmania:fighter/sounds/on_damage


execute if score $damage_taken temp matches 1.. at @s positioned ~0.3 ~2.3 ~ summon text_display run function kickmania:spawn_damage_display
execute if score $damage_taken temp matches ..-1 positioned ~0.3 ~1.6 ~ summon text_display run function kickmania:spawn_health_display
schedule function kickmania:damage_display_animate 3t

execute if score @s health matches 120.. on passengers run data modify entity @s[tag=hp_display] text set value '[{"score":{"name": "$health","objective": "temp"},"color":"green","bold":true},{"text":" HP"}]'
execute if score @s health matches 30..119 on passengers run data modify entity @s[tag=hp_display] text set value '[{"score":{"name": "$health","objective": "temp"},"color":"gold","bold":true},{"text":" HP"}]'
execute if score @s health matches ..29 on passengers run data modify entity @s[tag=hp_display] text set value '[{"score":{"name": "$health","objective": "temp"},"color":"red","bold":true},{"text":" HP"}]'

execute if score @s health matches ..0 at @s run function kickmania:fighter/on_death

