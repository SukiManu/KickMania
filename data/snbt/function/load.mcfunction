execute unless data storage snbt:data maps run data modify storage snbt:data maps set value []
scoreboard objectives add snbt dummy "snbt Data"
scoreboard objectives add snbt.copy_type dummy "snbt Copy Type[/clone,/place]"
scoreboard players set $48 snbt 48
scoreboard players set $-1 snbt -1
scoreboard objectives add snbt.use_wand minecraft.used:carrot_on_a_stick


bossbar add progress "Progress"