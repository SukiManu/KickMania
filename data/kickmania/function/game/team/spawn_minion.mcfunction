scoreboard players operation @s entity.id = $connection player.id
tag @s add fighter
tag @s add look_at_target

scoreboard players operation @s health = $health kickmania.global
scoreboard players operation @s grave_skin = $grave_skin temp
execute store result score @s idle_timer run random value 0..14

item replace entity @s armor.head with player_head
data modify entity @s ArmorItems[3].components.minecraft:profile.id set from storage temp args.uuid
$data modify entity @s ArmorItems[3].components.minecraft:custom_data.name set value '{"text":$(alias),"color":$(color)}' 
$data modify entity @s ArmorItems[3].components.minecraft:custom_data.text.name set value "$(alias)"
$data modify entity @s ArmorItems[3].components.minecraft:custom_data.text.color set value "$(color)"
$data modify entity @s ArmorItems[3].components.minecraft:custom_data.text.team_name set value "$(team_name)"
$data modify entity @s ArmorItems[3].components.minecraft:custom_data.text_component set value {"text":"$(alias)","color":$(color)}
$data modify entity @s CustomName set value '{"text":"$(team_name): $(alias)","color":$(color)}'

$item replace entity @s armor.chest with leather_chestplate[dyed_color=$(armor_color)]
$item replace entity @s armor.legs with leather_leggings[dyed_color=$(armor_color)]
$item replace entity @s armor.feet with leather_boots[dyed_color=$(armor_color)]

attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:follow_range base set 0
attribute @s minecraft:attack_damage base set 0
attribute @s minecraft:scale base set 0.87

data modify entity @s PersistenceRequired set value true
data modify entity @s CustomNameVisible set value true
data modify entity @s IsBaby set value false
data modify entity @s Silent set value true
#data modify entity @s Invulnerable set value true
effect give @s resistance infinite 255 true
effect give @s glowing infinite 0 true

summon text_display ~ ~ ~ {alignment:"center",billboard:"center",text:'[{"score":{"name": "@n[type=husk]","objective": "health"},"color":"green","bold":true},{"text":" HP"}]',Tags:["hp_display"],transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.38f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:2}
summon text_display ~ ~ ~ {alignment:"center",billboard:"center",text:'"👀"',Tags:["action_display"],transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.8f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},background:0,default_background:false,view_range:2}
ride @n[type=text_display,tag=hp_display] mount @s
ride @n[type=text_display,tag=action_display] mount @s
execute on vehicle run kill @s
tp @n[type=chicken] ~ -100 ~
spreadplayers ~ ~ 25 128 under 200 true @s
$team join $(color)