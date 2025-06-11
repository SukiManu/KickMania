execute as @e[type=interaction,tag=world_description] on target run function kickmania:info/world_description
execute as @e[type=interaction,tag=download] on target run tellraw @s {"text":"https://drive.google.com/file/d/1WdQuKH992yzL-HtItjYE7PUfgPo060da/view?usp=sharing","clickEvent": {"action": "open_url","value": "https://drive.google.com/file/d/1WdQuKH992yzL-HtItjYE7PUfgPo060da/view?usp=sharing"}}
execute as @e[type=interaction,tag=team_name] on target run function kickmania:editor/team_name/init
execute as 0-0-0-0-1 on target run function kickmania:tutorial/go_to
execute as 0-0-0-0-2 on target run function kickmania:player/join_queue
execute as 0-0-0-0-3 on target run function kickmania:maps/random
execute as 0-0-0-0-4 on target run function kickmania:player/leave_queue
execute as 0-0-0-0-5 on target run function kickmania:player/spectate
execute as 5-0-0-0-0 on target run function kickmania:tutorial/give_bazooka
execute as 5-0-0-0-1 on target run function kickmania:tutorial/give_grenade
execute as 5-0-0-0-5 on target run function kickmania:editor/team_name/init
execute as 5-0-0-0-6 on target run function kickmania:editor/flag/init
execute as 5-0-0-0-7 on target run function kickmania:tutorial/leave

execute as 5-0-0-0-8 on target run function kickmania:game/gameplay/damage_down
execute as 5-0-0-0-10 on target run function kickmania:game/gameplay/damage_up
execute as 5-0-0-0-11 on target run function kickmania:game/gameplay/health_down
execute as 5-0-0-0-13 on target run function kickmania:game/gameplay/health_up


#Grave Skins
execute as 5-0-0-0-2 on target store result storage temp player.id int 1.0 run scoreboard players get @s player.id
execute as 5-0-0-0-3 on target store result storage temp player.id int 1.0 run scoreboard players get @s player.id
execute as 5-0-0-0-4 on target store result storage temp player.id int 1.0 run scoreboard players get @s player.id

execute as 5-0-0-0-2 on target run function kickmania:tutorial/customization/graves/set0 with storage temp player
execute as 5-0-0-0-3 on target run function kickmania:tutorial/customization/graves/set1 with storage temp player
execute as 5-0-0-0-4 on target run function kickmania:tutorial/customization/graves/set2 with storage temp player

execute as @e[type=interaction] run data remove entity @s interaction

advancement revoke @s only kickmania:interaction