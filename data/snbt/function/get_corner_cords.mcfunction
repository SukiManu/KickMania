kill @e[type=block_display,tag=corner_display]
summon block_display ~-.5 ~-.5 ~-.5 {block_state:{Name:"glass"},Glowing:1b,glow_color_override:504592,Tags:["corner_display"],transformation:{scale:[0.99,0.99,0.99],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}

scoreboard players add $corner snbt 1
execute if score $corner snbt matches 2.. run scoreboard players set $corner snbt 0

execute if score $corner snbt matches 0 run function snbt:corner_0
execute if score $corner snbt matches 1 run function snbt:corner_1

kill @s