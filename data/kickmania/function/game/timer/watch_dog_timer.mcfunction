scoreboard players add $watchdog timer 1

execute if score $watchdog timer matches 500.. run tellraw @a {"text":"[Warning!] Forced timer by Watchdog Timer!","color":"gold"}
execute if score $watchdog timer matches 500.. run scoreboard players set $turn_timer kickmania.global 21
execute if score $watchdog timer matches 500.. run function kickmania:game/show_damage_dealt
execute if score $watchdog timer matches 500.. run scoreboard players reset $watchdog timer
