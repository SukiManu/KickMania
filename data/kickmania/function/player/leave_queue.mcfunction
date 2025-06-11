execute if entity @s[tag=!in_queue] run return run tellraw @s [{"text":"You are not in queue","color":"gray"}]
tag @s remove in_queue
tellraw @s [{"text":"You left queue","color":"green"}]

execute store result score $in_queue kickmania.global if entity @a[tag=in_queue]
data modify block -44 -55 -37 front_text.messages[3] set value '["In Queue: ",{"score":{"name":"$in_queue","objective":"kickmania.global"},"color":"yellow","bold":true}]'