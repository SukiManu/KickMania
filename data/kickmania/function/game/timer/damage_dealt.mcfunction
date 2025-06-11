execute if score $timer kickmania.global matches 20.. run scoreboard players remove $timer kickmania.global 1
execute if score $timer kickmania.global matches 20 run function kickmania:game/show_damage_dealt
scoreboard players operation $seconds temp = $timer kickmania.global
scoreboard players operation $seconds temp /= $20 const
execute if score $game_running kickmania.global matches 1 run title @a actionbar [{"text":"Dealing Damage","bold":false,"color":"gold"}]