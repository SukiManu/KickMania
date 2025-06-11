scoreboard players set $timer_type kickmania.global 1
scoreboard players set $timer kickmania.global 90
scoreboard players set $watchdog timer 0

bossbar set kickmania:timer name {"text":"Move timer","color":"gray"}
bossbar set kickmania:timer players @a
bossbar set kickmania:timer color yellow
bossbar set kickmania:current_fighter players
scoreboard players operation $seconds temp = $timer kickmania.global
execute store result bossbar kickmania:timer max run scoreboard players operation $seconds temp /= $10 const
execute store result bossbar kickmania:timer value run scoreboard players get $seconds temp