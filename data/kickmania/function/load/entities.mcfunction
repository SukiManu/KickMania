forceload add 0 0
summon item_display 0 -65 0 {UUID:[I;0,211,355,0],Tags:["player_head"]}
execute in kickmania:kickmania run summon item_display 0 -40 0 {UUID:[I;0,215,355,0],Tags:["mount"]}

kill 0-0-D5-0-016300000000

kill 0-0-D9-0-016300000001
kill 0-0-D9-0-016300000002
kill 0-0-D9-0-016300000003
kill 0-0-D9-0-016300000004
execute in kickmania:kickmania run summon block_display 0 -61.05 0 {brightness:{sky:10,block:15},UUID:[I;0,217,355,1],Tags:["water_level"],block_state:{Name:"blue_stained_glass"},view_range:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[100f,1f,100f]}}
execute in kickmania:kickmania run summon block_display 0 -61.05 0 {brightness:{sky:10,block:15},UUID:[I;0,217,355,2],Tags:["water_level"],block_state:{Name:"blue_stained_glass"},view_range:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-100f,0f,0f],scale:[100f,1f,100f]}}
execute in kickmania:kickmania run summon block_display 0 -61.05 0 {brightness:{sky:10,block:15},UUID:[I;0,217,355,3],Tags:["water_level"],block_state:{Name:"blue_stained_glass"},view_range:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-100f,0f,-100f],scale:[100f,1f,100f]}}
execute in kickmania:kickmania run summon block_display 0 -61.05 0 {brightness:{sky:10,block:15},UUID:[I;0,217,355,4],Tags:["water_level"],block_state:{Name:"blue_stained_glass"},view_range:100,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-100f],scale:[100f,1f,100f]}}
summon marker 0 0 0 {UUID:[I;0,212,355,0]}
summon marker 0 0 0 {UUID:[I;0,213,355,0]}
summon marker 0 0 0 {UUID:[I;0,214,355,0]}
summon marker 0 0 0 {UUID:[I;0,216,355,0]}




kill @e[type=interaction]
kill 7-0-0-0-4
kill @e[type=interaction,tag=world_description]
kill @e[type=text_display,tag=world_description]
#summon interaction -43 -55.8 -30.2 {Tags:["world_description"],height:0.6,width:0.8}
#summon text_display -43 -55.2 -30.05 {Tags:["world_description"],text:'"World\\ninfo"',Rotation:[180f,0f]}
summon text_display -45 -55.2 -30.05 {UUID:[I;7,0,0,3],Tags:["uptime"],text:'"World Uptime\\n"',Rotation:[180f,0f]}
summon minecraft:item_frame -47 -55 -34 {UUID:[I;7,0,0,4],Invisible: 1b, OnGround: 0b, Air: 300s, Invulnerable: 1b, FallDistance: 0.0f, Fixed: 1b, Motion: [0.0d, 0.0d, 0.0d], Rotation: [0.0f, 0.0f], TileZ: -37, Facing: 5b, Fire: -1s, PortalCooldown: 0, TileY: -55, TileX: -44,Item:{id:"minecraft:paper"}}
execute if data storage kickmania data.selected_map run function kickmania:lobby/map_select/display_map0 with storage kickmania data
execute unless data storage kickmania data.selected_map run function kickmania:lobby/map_select/next
# summon interaction -37 -56 -36 {UUID:[I;0,0,0,1],CustomName:'{"text":"Tutorial/Customize","color":"gold"}',CustomNameVisible:true}
# summon interaction -45.0 -56 -37 {UUID:[I;0,0,0,2],CustomName:'{"text":"Join Queue","color":"green"}',CustomNameVisible:true}
# summon interaction -44 -56 -37 {UUID:[I;0,0,0,3],CustomName:'{"text":"Start Game","color":"yellow"}',CustomNameVisible:true}
# summon interaction -42.0 -56 -37 {UUID:[I;0,0,0,4],CustomName:'{"text":"Leave Queue","color":"red"}',CustomNameVisible:true}
# summon interaction -39 -56 -38 {UUID:[I;0,0,0,5],CustomName:'{"text":"Spectate","color":"gold"}',CustomNameVisible:true}
