
execute unless entity @s[type=item_display] run return run tellraw @p {"text":"Failed to run command > try /execute summon item_display","color":"red"}
tag @s add dynamite
data merge entity @s {item:{id:"minecraft:heart_of_the_sea",count:1,components:{item_model:"kickmania:dynamite"}},transformation:{translation:[0.0f,0.7f,0.0f],scale:[2.0f,2.0f,2.0f]}}
#data merge entity @s {transformation:{scale:[0.3f,0.8f,0.3f],translation:[-0.15f,0.0f,-0.15f]},block_state:{Name:"tnt"},Tags:["dynamite"]}
summon text_display ~ ~ ~ {alignment:"center",Tags:["jibberish"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,2f,0.0f],scale:[1f,1f,1f]}}
ride @n[type=text_display,tag=jibberish] mount @s
scoreboard players set @s timer 120
playsound minecraft:entity.tnt.primed ambient @a
summon item ~ ~ ~ {Item:{"id":"stone_button"},PickupDelay:9999,Age:5900,Invulnerable:true,Tags:["item","dynamite"]}
ride @s mount @n[type=item,tag=dynamite]
