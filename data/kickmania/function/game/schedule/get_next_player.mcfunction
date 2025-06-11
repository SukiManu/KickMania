execute as @a[tag=plays,limit=1] run function kickmania:game/end_turn

scoreboard players set $timer_type kickmania.global 3
scoreboard players set $timer kickmania.global 25
bossbar set kickmania:timer name [{"text":"Preparing to get next player","bold":false}]
scoreboard players operation $seconds temp = $timer kickmania.global
execute store result bossbar kickmania:timer max run scoreboard players operation $seconds temp /= $20 const
scoreboard players set $watchdog timer 0
