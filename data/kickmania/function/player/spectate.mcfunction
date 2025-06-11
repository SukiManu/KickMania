execute if score $game_running kickmania.global matches 0 run return run tellraw @s {"text":"No active game at the moment.","color":"gold"}
execute in kickmania:kickmania positioned 0 -30 0 run tp @s ~ ~ ~
gamemode spectator @s
tellraw @s {"text":"/trigger spawn if you want to stop spectating!","color":"greeen"}
title @s subtitle {"text":"/trigger spawn if you want to stop spectating!","color":"green"}