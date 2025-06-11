execute store result score $player_count kickmania.global if entity @a
execute if score $player_count kickmania.global matches 2.. store result score $result temp if entity @a[tag=alive]
execute if score $player_count kickmania.global matches 2.. if score $result temp matches 1 as @a[tag=alive,limit=1] run function kickmania:player/win_game