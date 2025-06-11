execute store result score $result temp run data get entity @s OnGround
execute if score $result temp matches ..0 run return 0
kill @e[type=item_display,tag=parachute,limit=1,sort=nearest]
#execute on passengers at @s align y run tp @s ~ ~.5 ~
kill @s