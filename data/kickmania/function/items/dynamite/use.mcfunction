scoreboard players set $wait_for_item kickmania.global 1

#execute if entity @s[nbt={OnGround:0b}] run return run tellraw @s {"text":"You can't use it while jumping","color":"red"}
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{dynamite:1b}] 1
tag @s[gamemode=!creative] remove can_use_item

function kickmania:game/set_move_timer

execute at @s as @e[type=husk,limit=1,sort=random,distance=..7] run function kickmania:fighter/sounds/dynamite_nearby

execute at @s summon item_display run function kickmania:items/dynamite/spawn

attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42