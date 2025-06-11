# tag @s add this
# execute if score @s damage_taken matches 1.. as @a at @n[type=husk,tag=this] facing entity @s eyes positioned ^ ^ ^5 run tp @s ~ ~ ~ facing entity @n[type=husk,tag=this] feet
# tag @s remove this
tag @s remove damaged

scoreboard players operation @s damage_taken *= $damage_multiplier kickmania.global
scoreboard players operation @s damage_taken /= $100 const
scoreboard players operation @s health -= @s damage_taken
scoreboard players operation $health temp = @s health
scoreboard players operation $damage_taken temp = @s damage_taken
scoreboard players set @s damage_taken 0
function kickmania:fighter/sounds/on_damage


execute if score $damage_taken temp matches 1.. at @s positioned ~0.3 ~2.3 ~ summon text_display run function kickmania:spawn_damage_display
execute if score $damage_taken temp matches ..-1 at @s positioned ~0.3 ~1.6 ~ summon text_display run function kickmania:spawn_health_display
schedule function kickmania:damage_display_animate 3t

execute if score @s health matches 120.. on passengers run data modify entity @s[tag=hp_display] text set value '[{"score":{"name": "$health","objective": "temp"},"color":"green","bold":true},{"text":" HP"}]'
execute if score @s health matches 30..119 on passengers run data modify entity @s[tag=hp_display] text set value '[{"score":{"name": "$health","objective": "temp"},"color":"gold","bold":true},{"text":" HP"}]'
execute if score @s health matches ..29 on passengers run data modify entity @s[tag=hp_display] text set value '[{"score":{"name": "$health","objective": "temp"},"color":"red","bold":true},{"text":" HP"}]'



execute if score @s health matches ..0 at @s run function kickmania:fighter/on_death

