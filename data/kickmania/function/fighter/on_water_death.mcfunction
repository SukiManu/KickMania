scoreboard players operation $connection entity.id = @s entity.id

scoreboard players operation $grave_skin temp = @s grave_skin

data modify storage kickmania skin set value "0"
execute if score $grave_skin temp matches 20001 run data modify storage kickmania skin set value "christmas_tree"
execute if score $grave_skin temp matches 20002 run data modify storage kickmania skin set value "cross"

execute at @s summon item_display run function kickmania:fighter/summon_grave with storage kickmania

tellraw @a [{"selector": "@s","color":"red"},{"text":" Got too close to da water"}]

execute unless predicate kickmania:below_0 run function kickmania:explosion/small

execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10
execute as @e[distance=..4,type=husk] run function kickmania:fighter/deal_damage


execute on passengers run kill @s
kill @s

scoreboard players reset @s health
scoreboard players reset @s entity.id

scoreboard players set $below0 temp 0
execute as @a[predicate=kickmania:entity_player,limit=1] run function kickmania:game/check_remaining_fighters
