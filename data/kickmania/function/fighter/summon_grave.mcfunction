$data merge entity @s {item:{id:"heart_of_the_sea",count:1,components:{item_model:"kickmania:graveyard/$(skin)"}},transformation:{translation:[0.0f,0.5f,0.0f]},Tags:["grave"]}
#execute store result entity @s item.components."minecraft:custom_model_data" int 1.0 run scoreboard players get $grave_skin temp
