execute unless entity @s[tag=using_item] at @s run return run function kickmania:tutorial/use_item

execute if entity @s[tag=using_item] run advancement revoke @s only kickmania:right_click_check_tutorial

tag @s remove using_item