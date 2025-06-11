playsound ui.button.click
scoreboard players set @s timer 0
tag @s add editing_book
clear @s writable_book
item replace entity @s weapon.mainhand with writable_book[custom_data={team_name:true}]
tellraw @s {"text":"Write the desired team name inside the book then sign it to apply changes!","color":"green"}
tellraw @s {"text":"Drop it to discard","color":"gray","italic": true}