execute store result score $temp0 temp if entity @e[type=#kickmania:item,tag=item,limit=2]
tellraw @a [{"score":{"name": "$temp0","objective": "temp"}}]
execute if score $temp0 temp matches ..2 run scoreboard players set $wait_for_item kickmania.global 0 
execute if score $temp0 temp matches ..2 run scoreboard players set $timer_type kickmania.global 2

execute on passengers run kill @s
kill @s
