tag @s add to_be_destroyed
tag @s add damage_display
scoreboard players operation $damage_taken temp *= $-1 const
data modify entity @s text set value '[{"text":"+","color":"green","bold":true},{"score":{"name": "$damage_taken","objective": "temp"},"color":"green","bold":true}]'
data modify entity @s billboard set value "center"
data modify entity @s transformation.scale set value [1.5f,1.5f,1.5f]
