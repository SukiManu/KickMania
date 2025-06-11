execute at @e[type=husk,tag=in_control,limit=1] run tp @s ~ ~ ~ ~ ~
tp @n[type=husk,tag=in_control,limit=1] 0 300 0
gamemode adventure @p[tag=next_player,limit=1]

attribute @s minecraft:entity_interaction_range base set 0
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

tag @s add plays
tag @s add can_use_jetpack
tag @s add can_use_item

tag @s remove next_player
tag @s remove spectating
tag @s remove ignited_grenade

scoreboard players set @s used_jetpack 0
scoreboard players set @s jetpack_fuel 220
scoreboard players set @s boomstick_shots 2


bossbar set kickmania:timer name [{"selector":"@s","bold":false},{"text":"'s Turn","bold":false}]

execute store result bossbar kickmania:timer max run scoreboard players get $timer kickmania.global
execute store result bossbar kickmania:timer value run scoreboard players get $timer kickmania.global

bossbar set kickmania:timer players @a[tag=spectating]

bossbar set kickmania:current_fighter players @s

#execute as @a[tag=spectating] at @s run tp @s ~ ~ ~ facing entity @a[tag=plays,limit=1] eyes