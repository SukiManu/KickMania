data merge entity @s {teleport_duration:0,Tags:["camera","go_to_fighter"]}
scoreboard players operation @s entity.id = $connection player.id
scoreboard players set @s timer 0
data modify entity @s Rotation set from storage temp Rotation
