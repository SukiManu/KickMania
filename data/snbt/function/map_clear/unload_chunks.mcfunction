$execute in kickmania:kickmania run forceload remove $(fx0) $(fz0) $(fx1) $(fz1)
$execute if score $result temp matches 1.. run tellraw @a[tag=is_admin] [{"text":"Finished unloading chunks from $(fx0) $(fz0) $(fx1) $(fz1)! Count: ","color":"green"},{"score":{"name":"$result","objective": "temp"}}]
$execute if score $result temp matches ..0 run tellraw @a[tag=is_admin] [{"text":"Failed to unload chunks from $(fx0) $(fz0) $(fx1) $(fz1)!","color":"red"}]
forceload add 0 0