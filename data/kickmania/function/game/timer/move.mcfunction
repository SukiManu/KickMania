execute if score $timer kickmania.global matches 20.. run scoreboard players remove $timer kickmania.global 1
execute if score $timer kickmania.global matches ..20 run function kickmania:game/schedule/end_turn
scoreboard players operation $seconds temp = $timer kickmania.global
scoreboard players operation $temp0 temp = $timer kickmania.global
scoreboard players remove $temp0 temp 20
scoreboard players operation $seconds temp /= $20 const
execute store result bossbar kickmania:timer value run scoreboard players operation $temp0 temp /= $10 const

execute run title @a actionbar [{"text":"⌛","bold":false},{"score":{"name": "$seconds","objective": "temp"},"bold": true,"color":"gold"}]