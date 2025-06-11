scoreboard players add $iter temp 1
$execute store success score $success temp run data modify storage temp string set string storage minecraft:temp book_contents $(i) $(j)

execute if score $success temp matches 1 run function kickmania:editor/team_name/check_escape_key
data remove storage temp string
scoreboard players add $i temp 1
scoreboard players add $j temp 1
execute store result storage temp book.i int 1.0 run scoreboard players get $i temp
execute store result storage temp book.j int 1.0 run scoreboard players get $j temp
execute if score $escape temp matches ..1 if score $iter temp matches ..15 if score $success temp matches 1 run function kickmania:editor/team_name/travel_book with storage temp book