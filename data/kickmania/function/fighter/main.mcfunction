execute if score @s made_sound matches 0 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '""'
execute if score @s made_sound matches 0.. run scoreboard players remove @s made_sound 1

execute if score @s idle_timer matches 0 at @s run function kickmania:fighter/sounds/try_idle
scoreboard players add @s idle_timer 1
execute if score @s idle_timer matches 15.. run scoreboard players set @s idle_timer 0 

execute if score @s timid_timer matches 0 run tag @s add look_at_target
scoreboard players remove @s[scores={timid_timer=0..}] timid_timer 1
