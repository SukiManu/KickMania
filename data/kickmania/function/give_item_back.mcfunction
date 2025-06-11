scoreboard players set @s just_dropped 0
data modify storage temp item set from entity @n[type=item] Item
kill @n[type=item]
function kickmania:spawn_item with storage temp
execute if data entity @n[type=item,tag=new] Item.components.minecraft:custom_data.airplane as @a[tag=plays,limit=1] if score @s air_strike matches 1.. run function kickmania:items/airplane/cancel
data remove storage temp item