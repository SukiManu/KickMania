gamerule commandModificationBlockLimit 120592
$tellraw @a[tag=is_admin] {"text":"Currently working on $(current_pos_x) $(current_pos_y) $(current_pos_z)","color":"yellow"}

$execute store success score $success snbt positioned $(current_pos_x) $(current_pos_y) $(current_pos_z) run fill ~ ~ ~ ~47 ~47 ~47 air
$execute if score $success temp matches 0 run tellraw @a[] {"text":"Failed to clear at $(current_pos_x) $(current_pos_y) $(current_pos_z)"}

$execute store success score $success snbt positioned $(current_pos_x) $(current_pos_y) $(current_pos_z) run fill ~ -64 ~ ~47 -64 ~47 bedrock
$execute if score $success temp matches 0 run tellraw @a[] {"text":"Failed to regen bedrock at $(current_pos_x) $(current_pos_y) $(current_pos_z)"}


$execute store success score $success snbt positioned $(current_pos_x) $(current_pos_y) $(current_pos_z) run fill ~ -63 ~ ~47 -62 ~47 sand
$execute if score $success temp matches 0 run tellraw @a[] {"text":"Failed to regen sand at $(current_pos_x) $(current_pos_y) $(current_pos_z)"}

$execute store success score $success snbt positioned $(current_pos_x) $(current_pos_y) $(current_pos_z) run fill ~ -61 ~ ~47 -61 ~47 water
$execute if score $success temp matches 0 run tellraw @a[] {"text":"Failed to regen water at $(current_pos_x) $(current_pos_y) $(current_pos_z)"}


bossbar set progress name [{"text":"Clearing old map ","color":"gray"},{"score":{"name":"$progress","objective": "snbt"}},"/",{"score":{"name":"$max","objective": "temp"}}]

execute store result bossbar progress value run scoreboard players add $progress snbt 1