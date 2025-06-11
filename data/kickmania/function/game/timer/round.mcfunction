execute if score $timer kickmania.global matches 20.. run scoreboard players remove $timer kickmania.global 1
execute if score $timer kickmania.global matches ..20 run function kickmania:game/schedule/next_turn
execute if score $timer kickmania.global matches ..20 run gamemode spectator @p[tag=plays]
scoreboard players operation $seconds temp = $timer kickmania.global
scoreboard players operation $seconds temp /= $20 const
execute store result bossbar kickmania:timer value run scoreboard players get $timer kickmania.global
execute as @a run function kickmania:game/timer
#execute if score $game_running kickmania.global matches 1 as @a[tag=plays] run title @s actionbar [{"text":"⌛","bold":false},{"score":{"name": "$seconds","objective": "temp"},"bold": true,"color":"green"},{"text":" As "},{"storage": "temp","nbt":"fighter_name","interpret": true},{"text":" "},{"score":{"name": "@s","objective": "health"}},{"text":" HP"}]