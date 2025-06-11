bossbar set kickmania:timer name {"text":"Transporting player","color":"gray"}

scoreboard players operation $connection player.id = @s player.id
function kickmania:game/assign_fighter
data modify storage temp Rotation set from entity @s Rotation
execute summon block_display run function kickmania:game/camera/spawn
#execute as @a run spectate @n[type=block_display,tag=camera,tag=go_to_fighter]
