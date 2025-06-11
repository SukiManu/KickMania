data modify storage temp names append from entity @s ArmorItems[3].components.minecraft:custom_data.text_component
scoreboard players add $iter temp 1

execute if score $iter temp < $minions kickmania.global run data modify storage temp names append value {"text":", "}
execute if score $iter temp >= $minions kickmania.global run data modify storage temp names append value {"text":"."}