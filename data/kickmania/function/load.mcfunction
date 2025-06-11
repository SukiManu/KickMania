
scoreboard objectives add display dummy
say Reload

scoreboard objectives add joined custom:leave_game
scoreboard objectives add just_dropped minecraft.custom:minecraft.drop

scoreboard objectives add grave_skin dummy
scoreboard objectives add head_skin dummy

scoreboard objectives add parkour_time dummy
scoreboard objectives add parkour_time_seconds dummy

scoreboard objectives add temp dummy

scoreboard objectives add timer dummy

#Minion related
scoreboard objectives add idle_timer dummy
scoreboard objectives add timid_timer dummy
scoreboard objectives add made_sound dummy
scoreboard objectives add fighter.id dummy


scoreboard objectives add slot dummy


scoreboard objectives add walls_hit dummy


#display entities related
scoreboard objectives add scale_x dummy
scoreboard objectives add scale_y dummy
scoreboard objectives add scale_z dummy

#projectile related
scoreboard objectives add motion.x dummy
scoreboard objectives add motion.y dummy
scoreboard objectives add motion.z dummy
scoreboard objectives add object dummy
scoreboard objectives add velocity.x dummy
scoreboard objectives add velocity.y dummy
scoreboard objectives add velocity.z dummy



#player related
scoreboard objectives add uuid0 dummy
scoreboard objectives add uuid1 dummy
scoreboard objectives add uuid2 dummy
scoreboard objectives add uuid3 dummy
scoreboard objectives add player.id dummy
scoreboard objectives add kickmania.wins dummy
scoreboard objectives add kickmania.losses dummy
scoreboard objectives add kickmania.accuracy dummy
scoreboard objectives add fall_time minecraft.custom:fall_one_cm
scoreboard objectives add chest_open minecraft.custom:open_chest
scoreboard objectives add charge dummy


scoreboard objectives add entity.id dummy

scoreboard objectives add air_strike dummy

scoreboard objectives add data dummy {"text":"KickMania","color":"red","bold":true}
scoreboard players set $minions_left data 99999
scoreboard players display name $minions_left data {"text":"Minions Left:","color":"green"}
scoreboard players display numberformat $minions_left data blank

scoreboard players set $blank data -1
scoreboard players display name $blank data ""
scoreboard players display numberformat $blank data blank

scoreboard players set $round data -2
scoreboard players display name $round data {"text":"Round: ","color":"green"}
scoreboard players display numberformat $round data fixed "0"

scoreboard objectives add kickmania.global dummy
scoreboard players set $turn_time kickmania.global 900
scoreboard players set $health kickmania.global 100
scoreboard players set $minions kickmania.global 4

scoreboard objectives add in_game_player.id dummy


#items
scoreboard objectives add used_jetpack dummy
scoreboard objectives add jetpack_fuel dummy
scoreboard objectives add boomstick_shots dummy

scoreboard objectives add platform_use dummy

scoreboard objectives add health dummy

scoreboard objectives add using_item dummy
scoreboard objectives add weapon dummy



scoreboard objectives add damage_taken dummy
scoreboard objectives add destroy_timer dummy

scoreboard objectives add flag trigger
scoreboard objectives add player_input trigger
scoreboard objectives add spawn trigger


scoreboard objectives add move_time_after_item_use dummy
scoreboard objectives remove const
scoreboard objectives add const dummy

scoreboard players set $g const 520

scoreboard players set $damage_multiplier kickmania.global 100

scoreboard objectives add raycast dummy



scoreboard players set $-90 const -90
scoreboard players set $-1 const -1
scoreboard players set $1 const 1
scoreboard players set $2 const 2
scoreboard players set $3 const 2
scoreboard players set $4 const 4
scoreboard players set $5 const 5
scoreboard players set $6 const 6
scoreboard players set $7 const 7
scoreboard players set $8 const 8
scoreboard players set $9 const 9
scoreboard players set $10 const 10
scoreboard players set $11 const 11
scoreboard players set $12 const 12
scoreboard players set $15 const 15
scoreboard players set $20 const 20
scoreboard players set $24 const 24
scoreboard players set $27 const 27
scoreboard players set $30 const 30
scoreboard players set $45 const 45
scoreboard players set $40 const 40
scoreboard players set $49 const 49
scoreboard players set $60 const 60
scoreboard players set $70 const 70
scoreboard players set $72 const 72
scoreboard players set $80 const 80
scoreboard players set $90 const 90
scoreboard players set $100 const 100
scoreboard players set $114 const 114
scoreboard players set $150 const 150
scoreboard players set $180 const 180
scoreboard players set $200 const 200
scoreboard players set $220 const 220
scoreboard players set $250 const 250
scoreboard players set $500 const 500
scoreboard players set $505 const 505
scoreboard players set $1000 const 1000
scoreboard players set $2000 const 2000
scoreboard players set $1280 const 1280
scoreboard players set $2560 const 2560
scoreboard players set $5000 const 5000
scoreboard players set $5120 const 5120
scoreboard players set $9000 const 9000
scoreboard players set $31415 const 31415
scoreboard players set $18000 const 18000

scoreboard players set $10000 const 10000
scoreboard players set $57295 const 57295
scoreboard players set $billion const 1000000000


gamerule doTileDrops false
gamerule doMobLoot false
gamerule mobGriefing true
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule fallDamage false
gamerule doMobSpawning false


function kickmania:load/teams
function kickmania:load/flags
function kickmania:load/entities
function kickmania:tutorial/load

scoreboard players set $colors const 15
scoreboard players set $aliases const 48
data modify storage kickmania player_template set value {id:-1,name:"<empty>",stats:{accurracy:-1,wins:0,losses:0}}
data modify storage kickmania aliases set value ["Abigail", "Alexander", "Alexis", "Alyssa", "Amanda", "Andrew", "Anthony", "Ashley", "Benjamin", "Brandon", "Brittany", "Christopher", "Daniel", "David", "Dylan", "Elizabeth", "Emily", "Ethan", "George", "Grace", "Hannah", "Jacob", "James", "Jessica", "Jonathan", "Joseph", "Joshua", "Justin", "Kaitlyn", "Lauren", "Logan", "Madison", "Megan", "Michael", "Natalie", "Nicholas", "Nicole", "Olivia", "Rachel", "Ryan", "Samantha", "Sarah", "Sophia", "Taylor", "Tyler", "Victoria", "William", "Zachary"]
data modify storage kickmania color_pool set value ["aqua", "blue", "dark_aqua", "dark_blue", "dark_gray", "dark_green", "dark_purple", "dark_red", "gold", "gray", "green", "light_purple", "red", "white", "yellow"]



bossbar add kickmania:current_fighter ""
bossbar set kickmania:current_fighter color green
bossbar set kickmania:current_fighter style notched_6

bossbar add kickmania:timer ""
bossbar set kickmania:timer color white
bossbar set kickmania:timer style progress 

bossbar add kickmania:jetpack_fuel ""
bossbar set kickmania:jetpack_fuel name "Jetpack Fuel"
bossbar set kickmania:jetpack_fuel color red
bossbar set kickmania:jetpack_fuel max 200
bossbar set kickmania:jetpack_fuel style progress 
execute positioned -48 -62 -48 run place template kickmania:lobby/0
execute positioned 0 -62 -48 run place template kickmania:lobby/1
execute positioned -48 -62 0 run place template kickmania:lobby/2
execute positioned 0 -62 0 run place template kickmania:lobby/3

execute in overworld run setworldspawn -44 -57 -34 -90

forceload add 0 0
execute in kickmania:kickmania run forceload add 0 0
execute in kickmania:kickmania run function kickmania:generate_afk_minion_cage


#SNBT extension

scoreboard objectives add snbt dummy

execute unless data storage snbt:data maps run data modify storage snbt:data maps set value [{z: 202, x: 202, structure_name: "mesa_202", name: "Wasteland Bridge", y: 41, place: 1b}, {z: 128, x: 128, structure_name: "desert_small", name: "Desert Village", y: 35, place: 1b}, {z: 106, x: 106, structure_name: "beacon", name: "Beacon", y: 96, place: 1b}]