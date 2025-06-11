tag @s[gamemode=!creative] remove can_use_item
scoreboard players set $instant_next_round kickmania.global 1
function kickmania:game/set_move_timer
attribute @s[tag=plays] entity_interaction_range base set -3
clear @s stick 1