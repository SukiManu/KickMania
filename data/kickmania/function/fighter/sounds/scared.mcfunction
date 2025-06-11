execute on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"Pls no!"'
playsound kickmania:classic_scared1 ambient @a
execute if score $result temp matches 0 run return run scoreboard players set @s timid_timer 10
scoreboard players set @s made_sound 2
scoreboard players set @s idle_timer 1
