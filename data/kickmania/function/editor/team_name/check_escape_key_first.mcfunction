data modify storage minecraft:temp check set value "\\n"
execute store success score $is_escape_key temp run data modify storage minecraft:temp check set from storage minecraft:temp string

execute if score $is_escape_key temp matches 1 if score $escape temp matches 0 run scoreboard players operation $string_start temp = $i temp
execute if score $is_escape_key temp matches 1 run scoreboard players remove $string_start temp 1


execute if score $is_escape_key temp matches 1 run scoreboard players add $escape temp 1
