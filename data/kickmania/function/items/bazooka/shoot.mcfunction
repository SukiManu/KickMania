scoreboard players set $wait_for_item kickmania.global 1

function kickmania:get_sin_cos
function kickmania:get_sin_cos

function kickmania:game/set_move_timer
scoreboard players set $timer kickmania.global 50

execute summon block_display run function kickmania:items/bazooka/spawn_projectile

tag @s[gamemode=!creative] remove can_use_item
scoreboard players set $charge weapon 0
