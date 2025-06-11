execute store result score $sound temp run random value 0..3
scoreboard players set @s made_sound 1


execute if score $sound temp matches 0 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"..."'
execute if score $sound temp matches 1 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"*Sleepy*"'
execute if score $sound temp matches 2 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"*Sleepy*"'
execute if score $sound temp matches 3 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"*Coughing*"'

execute if score $sound temp matches 0 run playsound kickmania:classic_idle0 neutral @a
execute if score $sound temp matches 1 run playsound kickmania:classic_idle1 neutral @a
execute if score $sound temp matches 2 run playsound kickmania:classic_idle2 neutral @a
execute if score $sound temp matches 3 run playsound kickmania:classic_idle4 neutral @a