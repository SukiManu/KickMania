execute unless entity @s[type=text_display] run return run tellraw @s {"text":"This is an execute summon function for text_display","color":"red"}
kill @e[type=text_display,tag=indicator]
tag @s add strike_indicator
tag @s add indicator
summon text_display ~ ~ ~ {Tags:["arrow","indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1f,0.0f],scale:[18f,5f,1f]},Rotation:[0f,-90f],text:'{"text":"︽","bold":false,"color":"aqua"}',alignment:"center",default_background: 0b, background: 0,teleport_duration:1}
summon text_display ~ ~ ~ {Tags:["left","indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[3.0f,0f,0.0f],scale:[2f,50f,1f]},Rotation:[0f,-90f],text:'"█"',alignment:"center",default_background: 0b, background: 0,teleport_duration:1}
summon text_display ~ ~ ~ {Tags:["right","indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.7f,0f,0.0f],scale:[2f,50f,1f]},Rotation:[0f,-90f],text:'"█"',alignment:"center",default_background: 0b, background: 0,teleport_duration:1}
ride @n[type=text_display,tag=arrow] mount @s
ride @n[type=text_display,tag=left] mount @s
ride @n[type=text_display,tag=right] mount @s