tag @s add this
execute unless entity @e[type=item,tag=small_banana,tag=!this,limit=1] run scoreboard players set $wait_for_item kickmania.global 0
tag @s remove this
execute store result score $x temp run data get entity @s Pos[0] 10
execute store result score $y temp run data get entity @s Pos[1] 10
execute store result score $z temp run data get entity @s Pos[2] 10

function kickmania:explosion/small
scoreboard players set $damage temp 300
execute store result score $temp0 temp if entity @e[type=husk,distance=..3.5]
scoreboard players operation $entities_hit temp += $temp0 temp
execute if score $entities_hit temp matches 0 run function kickmania:game/schedule/get_next_player
execute as @e[distance=..3.5,type=husk] run function kickmania:items/banana/small_deal_damage

execute if score $entities_hit temp matches 1.. run function kickmania:game/schedule/damage_dealt


execute on passengers run kill @s
kill @s