execute if items entity @s weapon.mainhand written_book[custom_data={team_name:true}] run function kickmania:editor/team_name/get_book_contents
scoreboard players add @s timer 1
execute if score @s timer matches 600.. run tag @s remove editing_book
execute if score @s timer matches 600.. run clear @s written_book[custom_data={team_name:true}]
execute if score @s timer matches 600.. run clear @s writable_book[custom_data={team_name:true}]
execute if score @s timer matches 600.. run scoreboard players reset @s timer
