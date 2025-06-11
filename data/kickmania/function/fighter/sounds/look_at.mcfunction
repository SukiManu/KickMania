scoreboard players set @s timid_timer 12
execute store result score $sound temp run random value 0..3

scoreboard players set @s made_sound 2


execute if score $sound temp matches 0 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"💪💪💪"'
execute if score $sound temp matches 1 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"*Really Mad*"'
execute if score $sound temp matches 2 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"*🙏*"'
execute if score $sound temp matches 3 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"Problem?"'

execute if score $sound temp matches 0 run playsound kickmania:classic_comeonthen neutral @a
execute if score $sound temp matches 1 run playsound kickmania:classic_angry neutral @a
execute if score $sound temp matches 2 run playsound kickmania:classic_leavemealone neutral @a
execute if score $sound temp matches 3 run playsound kickmania:classic_stupid neutral @a

scoreboard players set @s idle_timer 1