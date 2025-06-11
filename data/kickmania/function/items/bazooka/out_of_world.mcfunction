scoreboard players set $wait_for_item kickmania.global 0
kill @s
execute if score $game_running kickmania.global matches 1 run function kickmania:game/schedule/end_turn
