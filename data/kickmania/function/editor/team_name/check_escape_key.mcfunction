data modify storage minecraft:temp check set value "\\n"
execute store success score $is_escape_key temp run data modify storage minecraft:temp check set from storage minecraft:temp string

execute if score $is_escape_key temp matches 0 if score $escape temp matches 0 run scoreboard players add $escape_counter temp 1

execute if score $is_escape_key temp matches 1 if score $escape temp matches 0 run scoreboard players operation $string_start temp = $i temp
execute if score $is_escape_key temp matches 0 if score $escape temp matches 1 run scoreboard players operation $string_end temp = $j temp
execute if score $is_escape_key temp matches 0 if score $escape temp matches 1 run scoreboard players remove $string_end temp 2
execute if score $is_escape_key temp matches 0 run scoreboard players add $i temp 3
execute if score $is_escape_key temp matches 0 run scoreboard players add $j temp 3

execute if score $is_escape_key temp matches 1 if score $escape temp matches 0 run scoreboard players add $escape temp 1
execute if score $is_escape_key temp matches 0 if score $escape temp matches 1 run scoreboard players add $escape temp 1
