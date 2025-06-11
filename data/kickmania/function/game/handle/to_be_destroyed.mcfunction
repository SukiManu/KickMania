scoreboard players add @e[tag=to_be_destroyed] destroy_timer 1
kill @e[type=text_display,tag=to_be_destroyed,scores={destroy_timer=30..}]
kill @e[type=block_display,tag=to_be_destroyed,scores={destroy_timer=120..}]
#execute unless entity @e[tag=to_be_destroyed,limit=1] run scoreboard players set $handle_to_be_destroyed temp 0