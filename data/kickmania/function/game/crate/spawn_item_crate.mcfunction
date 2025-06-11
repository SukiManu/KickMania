summon item ~ ~ ~ {Tags:["crate"],PickupDelay:99999,Passengers:[{id:"minecraft:block_display",Tags:["crate","weapon"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-0.2f,-1f],scale:[1.2f,1.2f,1.2f]},block_state:{Name:"minecraft:barrel"}}],Item:{id:"minecraft:oak_button",count:1}}
spreadplayers 0 0 5 100 false @n[type=item,tag=crate]
data modify entity @n[type=item,tag=crate] Pos[1] set value 105d
tellraw @a {"text":"A new weapon crate has spawned!","color":"gold"}