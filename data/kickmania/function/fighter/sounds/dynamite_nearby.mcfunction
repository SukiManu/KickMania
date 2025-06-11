execute store result score $sound temp run random value 0..1

scoreboard players set @s made_sound 2


execute if score $sound temp matches 0 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"*Praying for my life*"'
execute if score $sound temp matches 1 on passengers if entity @s[tag=action_display] run data modify entity @s text set value '"*I\'ll see about that*"'

execute if score $sound temp matches 0 run playsound kickmania:classic_pray neutral @a
execute if score $sound temp matches 1 run playsound kickmania:classic_youllregretthat neutral @a

scoreboard players set @s idle_timer 1