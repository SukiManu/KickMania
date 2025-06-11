data modify storage temp pos set from storage kickmania game_data.platforms[-1]
function kickmania:items/platform/clear/run_at_pos with storage temp pos

data remove storage kickmania game_data.platforms[-1]
execute if data storage kickmania game_data.platforms[-1] run function kickmania:items/platform/clear/pass_thru