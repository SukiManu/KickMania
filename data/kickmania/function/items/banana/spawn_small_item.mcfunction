$summon item ~ ~ ~ {Item:{id:"stone_button",count:1,components:{"minecraft:max_stack_size":1}},Invulnerable:1b,PickupDelay:32720,Motion:[$(x)d,$(y)d,$(z)d],CustomName:'{"text":"5","bold":true}',CustomNameVisible:true,Tags:["grenade","small_banana","new","item"]}
scoreboard players set @n[type=item,tag=small_banana,tag=new] destroy_timer 120
