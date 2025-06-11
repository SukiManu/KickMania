clear @s heart_of_the_sea
playsound kickmania:sfx_cratepickup
tellraw @s[tag=!given_bazooka] [{"text":"To use this item you need to hold"},{"text":" RIGHT CLICK ","color":"green"},{"text":"to charge\nthe bazooka."}]
tellraw @s[tag=!given_bazooka] [{"text":"The amount of charge will determine projectile speed.\n"},{"text":"Try hitting the fighter.","color":"blue"}]
give @s heart_of_the_sea[item_model="kickmania:bazooka",food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:99999,animation:"none"},custom_data={bazooka:true,id:2},item_name='{"text":"Right Click To Charge Bazooka","color":"gold","bold":true}'] 1
tag @s add given_bazooka
