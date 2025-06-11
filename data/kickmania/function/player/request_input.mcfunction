
scoreboard players operation $player_input temp = @s player_input
scoreboard players reset @a player_input
scoreboard players enable @a player_input
execute if score $player_input temp matches 2 run return run function kickmania:player/join_queue
execute if score $player_input temp matches 3 run return run function kickmania:player/leave_queue
execute if score $player_input temp matches 4 run return run function kickmania:maps/with_id
execute if score $player_input temp matches 5 run return run function kickmania:player/spectate
execute if score $player_input temp matches 6 run return run function kickmania:tutorial/go_to

execute if score $player_input temp matches 8 run return run function kickmania:lobby/map_select/next
execute if score $player_input temp matches 9 run return run function kickmania:lobby/map_select/prev

execute if score $player_input temp matches 7 run return run function kickmania:info/world_description



