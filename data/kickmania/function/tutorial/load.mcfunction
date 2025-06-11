forceload add 15 15
kill 5-0-0-0-0
kill 5-0-0-0-1
kill 5-0-0-0-2
kill 5-0-0-0-3
kill 5-0-0-0-4
kill 5-0-0-0-5
kill 5-0-0-0-6
kill 5-0-0-0-7
kill @e[tag=tutorial]

#Tutorial Items
execute positioned 248 71 253 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,0],Passengers:[{UUID:[I;0,3,0,0],id:"text_display",Tags:["tutorial"],text:'"Right Click\\nTo Get A bazooka"',billboard:"vertical",see_through:true,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]},background:-1827340175},{id:"item",Tags:["tutorial"],Age:-32767,PickupDelay:32767,Item:{id:"heart_of_the_sea",components:{item_model:"kickmania:bazooka"}}}]}
execute positioned 252 71 253 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,1],Passengers:[{UUID:[I;0,3,0,1],id:"text_display",Tags:["tutorial"],text:'"Right Click\\nTo Get A Grenade"',billboard:"vertical",see_through:true,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]},background:-1827340175},{id:"item",Tags:["tutorial"],Age:-32767,PickupDelay:32767,Item:{id:"heart_of_the_sea",components:{item_model:"kickmania:grenade"}}}]}

#Grave Skins
summon text_display 245 72 250 {UUID:[I;0,3,2,1],Tags:["tutorial"],text:'"Right Click\\n To choose your minions grave skin"',Rotation:[-90f,0f]}
execute positioned 245 71 250 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,2],Passengers:[{UUID:[I;0,3,0,2],id:"item",Tags:["tutorial","grave_skin"],Age:-32767,PickupDelay:32767,Item:{id:"heart_of_the_sea",components:{item_model:"kickmania:graveyard/0"}}}]}
execute positioned 245 71 251 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,3],Passengers:[{UUID:[I;0,3,0,3],id:"item",Tags:["tutorial","grave_skin"],Age:-32767,PickupDelay:32767,Item:{id:"heart_of_the_sea",components:{item_model:"kickmania:graveyard/christmas_tree"}}}]}
execute positioned 245 71 249 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,4],Passengers:[{UUID:[I;0,3,0,4],id:"item",Tags:["tutorial","grave_skin"],Age:-32767,PickupDelay:32767,Item:{id:"heart_of_the_sea",components:{item_model:"kickmania:graveyard/cross"}}}]}

execute positioned 248 71 244 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,5],CustomName:'{"text":"Change Team Name","color":"green"}',CustomNameVisible:true}
execute positioned 252 71 244 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,6],CustomName:'{"text":"Change Flag","color":"green"}',CustomNameVisible:true}
execute positioned 250 71 243 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,7],CustomName:'{"text":"Leave","color":"red"}',CustomNameVisible:true}

execute positioned 256 70 246 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,8],CustomName:'{"text":"[-]","color":"red","bold":true}',CustomNameVisible:true,Tags:["tutorial"]}
execute positioned 256 71.25 246 run summon text_display ~ ~ ~ {UUID:[I;5,0,0,9],Rotation:[90f,0f],text:'[{"text":"Damage\\n","color":"white","bold":true},{"score":{"name": "$damage_multiplier","objective": "kickmania.global"},"color":"green"},{"text":"%"}]',Tags:["tutorial"]}
execute positioned 256 72 246 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,16],CustomName:'{"text":"[+]","color":"green","bold":true}',CustomNameVisible:true,Tags:["tutorial"]}

execute positioned 256 70 247 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,17],CustomName:'{"text":"[-]","color":"red","bold":true}',CustomNameVisible:true,Tags:["tutorial"]}
execute positioned 256 71.25 247 run summon text_display ~ ~ ~ {UUID:[I;5,0,0,18],Rotation:[90f,0f],text:'[{"text":"Health\\n","color":"white","bold":true},{"score":{"name": "$health","objective": "kickmania.global"},"color":"green"},{"text":"HP"}]',Tags:["tutorial"]}
execute positioned 256 72 247 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,19],CustomName:'{"text":"[+]","color":"green","bold":true}',CustomNameVisible:true,Tags:["tutorial"]}


#execute positioned 250 70 230 run summon interaction ~ ~ ~ {UUID:[I;5,0,0,1]}

team add tutorial
team modify tutorial collisionRule never
team modify tutorial friendlyFire false
team modify tutorial color yellow
team modify tutorial prefix {"text":"[Tutorial] ","color":"blue"}

scoreboard objectives add tutorial_death deathCount
scoreboard objectives add tutorial_hit_dummy0 deathCount
scoreboard objectives add tutorial_hit_dummy1 deathCount
scoreboard objectives add go_to_timer dummy

fill 240 69 240 260 69 260 red_terracotta
fill 249 72 278 251 72 281 white_terracotta
fill 249 72 281 251 75 281 white_terracotta
fill 258 69 275 242 69 261 air

execute positioned 220 80 280 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 white_stained_glass