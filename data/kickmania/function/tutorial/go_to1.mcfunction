tp @s 250 70 250
gamemode adventure
team join tutorial
scoreboard players reset @s go_to_timer
function kickmania:tutorial/load
advancement revoke @s only kickmania:tutorial_tick
