$data modify storage kickmania player_list[{id:$(id)}].team_name set from storage kickmania player_list[{id:$(id)}].name
tellraw @s "Failed to set name. Special characters as ' \\ \\n are not allowed"
