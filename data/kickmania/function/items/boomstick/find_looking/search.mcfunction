tag @s add find_me
execute as @p[tag=this] if predicate kickmania:find_me as @e[type=husk,tag=find_me,limit=1] run return run function kickmania:items/boomstick/find_looking/success
tag @s remove find_me