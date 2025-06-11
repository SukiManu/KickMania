execute store result score $seconds timer run data get storage kickmania uptime.s
execute store result score $minutes timer run data get storage kickmania uptime.m
execute store result score $hours timer run data get storage kickmania uptime.h
execute store result score $days timer run data get storage kickmania uptime.d

scoreboard players add $seconds timer 1


execute if score $seconds timer matches 60.. run scoreboard players add $minutes timer 1
execute if score $seconds timer matches 60.. run scoreboard players set $seconds timer 0

execute if score $minutes timer matches 60.. run scoreboard players add $hours timer 1
execute if score $minutes timer matches 60.. run scoreboard players set $minutes timer 0

execute if score $hours timer matches 24.. run scoreboard players add $days timer 1
execute if score $hours timer matches 24.. run scoreboard players set $hours timer 0
execute store result storage kickmania uptime.s int 1.0 run scoreboard players get $seconds timer 
execute store result storage kickmania uptime.m int 1.0 run scoreboard players get $minutes timer 
execute store result storage kickmania uptime.h int 1.0 run scoreboard players get $hours timer 
execute store result storage kickmania uptime.d int 1.0 run scoreboard players get $days timer
data modify entity 7-0-0-0-3 text set value '[{"text":"","color":"green","bold":true},{"text":"Up Time\\n"},{"nbt": "uptime.d","storage": "kickmania"},":",{"nbt": "uptime.h","storage": "kickmania"},":",{"nbt": "uptime.m","storage": "kickmania"},":",{"nbt": "uptime.s","storage": "kickmania"}]'