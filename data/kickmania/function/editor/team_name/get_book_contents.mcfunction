data modify storage temp book_contents set from entity @s SelectedItem.components.minecraft:written_book_content.pages[0].raw
function kickmania:editor/team_name/get_first_line
scoreboard players operation $escape_counter temp %= $2 const
execute if score $escape_counter temp matches 1 run scoreboard players remove $string_start temp 2 
execute store result storage temp book.i int 1.0 run scoreboard players get $string_start temp
execute if score $escape temp matches ..1 run scoreboard players operation $string_end temp = $i temp
execute if score $escape temp matches ..1 run scoreboard players remove $string_end temp 1
execute store result storage temp book.j int 1.0 run scoreboard players get $string_end temp

execute store result storage temp book.id int 1.0 run scoreboard players get @s player.id

function kickmania:editor/team_name/copy with storage temp book
scoreboard players set $result temp 0
execute store result score $result temp run function kickmania:editor/team_name/set with storage temp book
execute if score $result temp matches 0 run function kickmania:editor/team_name/set_default with storage temp book
scoreboard players reset @s timer
data remove storage temp book
data remove storage temp book_contents
data remove storage temp string
data remove storage temp check

scoreboard players reset @s timer
tag @s remove editing_book
clear @s written_book[custom_data={team_name:true}]