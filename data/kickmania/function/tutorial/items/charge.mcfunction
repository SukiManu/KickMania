playsound kickmania:sfx_rocketpowerup ambient
execute unless score @s charge matches 300.. run scoreboard players add @s charge 10
execute if score @s charge matches ..10 run title @s actionbar [{"text":"▌"}]
execute if score @s charge matches 11..20 run title @s actionbar [{"text":"█"}]
execute if score @s charge matches 21..30 run title @s actionbar [{"text":"█▌"}]
execute if score @s charge matches 31..40 run title @s actionbar [{"text":"██"}]
execute if score @s charge matches 41..50 run title @s actionbar [{"text":"██▌"}]
execute if score @s charge matches 51..60 run title @s actionbar [{"text":"███"}]
execute if score @s charge matches 61..70 run title @s actionbar [{"text":"███▌"}]
execute if score @s charge matches 71..80 run title @s actionbar [{"text":"███▌"}]
execute if score @s charge matches 81..90 run title @s actionbar [{"text":"████"}]
execute if score @s charge matches 91..100 run title @s actionbar [{"text":"████▌","color":"yellow"}]
execute if score @s charge matches 101..110 run title @s actionbar [{"text":"█████","color":"yellow"}]
execute if score @s charge matches 111..120 run title @s actionbar [{"text":"█████▌","color":"yellow"}]
execute if score @s charge matches 121..130 run title @s actionbar [{"text":"██████","color":"yellow"}]
execute if score @s charge matches 131..140 run title @s actionbar [{"text":"██████▌","color":"yellow"}]
execute if score @s charge matches 141..150 run title @s actionbar [{"text":"███████","color":"yellow"}]
execute if score @s charge matches 151..160 run title @s actionbar [{"text":"███████▌","color":"yellow"}]
execute if score @s charge matches 161..170 run title @s actionbar [{"text":"████████","color":"yellow"}]
execute if score @s charge matches 171..180 run title @s actionbar [{"text":"████████▌","color":"yellow"}]
execute if score @s charge matches 181..190 run title @s actionbar [{"text":"█████████","color":"yellow"}]
execute if score @s charge matches 191..200 run title @s actionbar [{"text":"█████████▌","color":"yellow"}]
execute if score @s charge matches 201..210 run title @s actionbar [{"text":"██████████","color":"gold"}]
execute if score @s charge matches 211..220 run title @s actionbar [{"text":"██████████▌","color":"gold"}]
execute if score @s charge matches 221..230 run title @s actionbar [{"text":"███████████","color":"gold"}]
execute if score @s charge matches 231..240 run title @s actionbar [{"text":"███████████▌","color":"gold"}]
execute if score @s charge matches 241..250 run title @s actionbar [{"text":"████████████","color":"gold"}]
execute if score @s charge matches 251..260 run title @s actionbar [{"text":"████████████▌","color":"gold"}]
execute if score @s charge matches 261..270 run title @s actionbar [{"text":"█████████████","color":"red"}]
execute if score @s charge matches 271..280 run title @s actionbar [{"text":"█████████████▌","color":"red"}]
execute if score @s charge matches 281..290 run title @s actionbar [{"text":"██████████████","color":"red"}]
execute if score @s charge matches 291..300 run title @s actionbar [{"text":"██████████████▌","color":"dark_red"}]
execute if score @s charge matches 300.. run scoreboard players set $stop temp 1
execute if score @s charge matches 300.. run function kickmania:tutorial/use_item
