clear @s heart_of_the_sea
playsound kickmania:sfx_cratepickup
tellraw @s[tag=!given_grenade] [{"text":"To use this item first you need to:\nIgnite it by using "},{"text":"[RIGHT CLICK]","color":"green"}]
tellraw @s[tag=!given_grenade] [{"text":"Then you have 5 seconds to throw it\n"},{"text":"Try hitting the fighter.","color":"blue"}]
give @s heart_of_the_sea[item_model="kickmania:grenade",food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:99999,animation:bow},custom_data={grenade:true,id:2},item_name='{"text":"Grenade","color":"gold","bold":true}'] 1
tag @s add given_grenade
