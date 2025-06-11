scoreboard players set $wait_for_item kickmania.global 1
tag @s[gamemode=!creative] remove can_use_item
scoreboard players set $timer_type kickmania.global 3
scoreboard players set $timer kickmania.global 120
scoreboard players set $air_strike temp 1
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{airplane:1b}] 1
attribute @s minecraft:gravity base set 0.07

execute at @n[type=text_display,tag=strike_indicator] run tp 0-0-D8-0-016300000000 ~ ~ ~
data modify entity 0-0-D8-0-016300000000 Rotation[0] set from entity @p[tag=plays] Rotation[0]
execute at 0-0-D8-0-016300000000 run summon item_display ^ ^ ^-40 {Tags:["airplane"],item:{id:"heart_of_the_sea",count:1,components:{item_model:"kickmania:airplane"}},transformation:{left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.6f,30f,1.0f],scale:[10f,10f,10f]},teleport_duration:1}
scoreboard players set @n[type=item_display,tag=airplane] timer 80
data modify entity @n[type=item_display,tag=airplane] Rotation[0] set from entity @p[tag=plays] Rotation[0]
kill @e[type=text_display,tag=indicator,limit=4]
scoreboard players set @s air_strike 0
gamemode spectator @s
tag @s remove plays
tag @e[type=husk,tag=in_control] remove in_control
execute at @n[type=item_display,tag=airplane] run tp 0-0-D8-0-016300000000 ~ ~30 ~
execute as @a at @s facing entity 0-0-D8-0-016300000000 eyes run tp @s ~ ~ ~ ~ ~
scoreboard players set $generic timer 0