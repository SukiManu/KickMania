$data modify storage kickmania player_list[{id:$(id)}].team_name set value '$(content)'
$tellraw @s ["Your new team name is ",{"nbt":"player_list[{id:$(id)}].team_name","storage":"kickmania","color":"green"}]
return 1