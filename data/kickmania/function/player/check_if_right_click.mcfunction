#execute if predicate kickmania:below_-15 run return run tellraw @s [{"text":"You can't use that here","color":"gray"}]
#execute unless score $timer_type kickmania.global matches 0 run return run scoreboard players set @s using_item -1
scoreboard players remove @s using_item 1
execute if score @s using_item matches 0.. run return run advancement revoke @s only kickmania:right_click_check
execute if entity @s[tag=!can_use_item] run return 0
function kickmania:player/use_item