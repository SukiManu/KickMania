#MARKER ENTITY: UUID = 00000000-0000-89f4-0000-000000000000
clear @s heart_of_the_sea[custom_data~{fusion_laser:true}] 1
execute anchored eyes positioned ^ ^ ^.5 run summon marker ~ ~ ~ {Tags:["fusion_laser"],UUID:[I;0,35316,0,0]}
data modify entity 00000000-0000-89f4-0000-000000000000 Rotation set from entity @s Rotation
scoreboard players set 00000000-0000-89f4-0000-000000000000 raycast 70
playsound kickmania:sfx_fusion_laser ambient @s ~ ~ ~ 1 1.5
tag @s remove can_use_item
scoreboard players set $wait_for_item kickmania.global 1
function kickmania:game/set_move_timer