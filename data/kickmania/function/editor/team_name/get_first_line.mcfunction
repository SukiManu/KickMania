scoreboard players set $string_start temp 0
scoreboard players set $string_end temp 99
scoreboard players set $i temp 1
scoreboard players set $j temp 3
scoreboard players set $escape temp 0
scoreboard players set $iter temp 0
scoreboard players set $escape_counter temp 0

execute store result storage temp book.i int 1.0 run scoreboard players get $i temp
execute store result storage temp book.j int 1.0 run scoreboard players get $j temp

function kickmania:editor/team_name/travel_book with storage temp book

