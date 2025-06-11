data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},Tags:["damage_display","new","to_be_destroyed"]}
data modify entity @s text set value '[{"text":"-","color":"red","bold":true},{"score":{"name": "$damage_taken","objective": "temp"},"color":"red","bold":true}]'
data modify entity @s billboard set value "center"
