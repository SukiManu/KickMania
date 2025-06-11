execute if score $wait_for_item kickmania.global matches 1 run return 0
execute if score $timer kickmania.global matches 21.. run scoreboard players remove $timer kickmania.global 1
execute if score $timer kickmania.global matches ..20 run return run function kickmania:game/next_turn
scoreboard players operation $seconds temp = $timer kickmania.global
execute store result bossbar kickmania:timer value run scoreboard players operation $seconds temp /= $20 const
execute if score $game_running kickmania.global matches 1 run title @a actionbar [{"text":"⌛","bold":false},{"score":{"name": "$seconds","objective": "temp"},"bold": true,"color":"green"}]

#execute if score $game_running kickmania.global matches 1 as @a[tag=plays] run title @s actionbar [{"text":"⌛","bold":false},{"score":{"name": "$seconds","objective": "temp"},"bold": true,"color":"green"},{"text":" As "},{"storage": "temp","nbt":"fighter_name","interpret": true},{"text":" "},{"score":{"name": "@s","objective": "health"}},{"text":" HP"}]