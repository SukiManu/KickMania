kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{team_name:1b}}}}]
execute as @e[type=block_display,tag=tutorial_bazooka] run function kickmania:tutorial/projectile
scoreboard players add @e[tag=to_be_destroyed] destroy_timer 1
kill @e[type=text_display,tag=to_be_destroyed,scores={destroy_timer=33..}]
scoreboard players set $tick_tutorial temp 0
execute as @e[type=item,tag=tutorial_grenade] run function kickmania:tutorial/items/grenade/main
execute positioned 250.5 73 279.5 unless entity @e[type=husk,tag=tutorial,distance=..10] run summon husk ~ ~ ~ {Tags:["tutorial","0"],Rotation:[180f,0f],active_effects:[{id:"slowness",amplifier:255,duration:-1}]}
execute positioned 220.5 80 280.5 unless entity @e[type=husk,tag=tutorial,distance=..10] run summon husk ~ ~ ~ {Tags:["tutorial","1"],Rotation:[180f,0f],active_effects:[{id:"slowness",amplifier:255,duration:-1}]}

effect give @a[team=tutorial] saturation infinite 0 true