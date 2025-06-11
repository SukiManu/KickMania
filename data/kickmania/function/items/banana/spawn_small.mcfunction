data merge entity @s {item:{id:"heart_of_the_sea",count:1,components:{item_model:"kickmania:banana"}},Tags:["small_banana","new","item"],teleport_duration:1,view_range:99,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0.0f,0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute store result score @s scale_x run data get entity @s transformation.scale[0] 1000
execute store result score @s scale_y run data get entity @s transformation.scale[1] 1000
execute store result score @s scale_z run data get entity @s transformation.scale[2] 1000