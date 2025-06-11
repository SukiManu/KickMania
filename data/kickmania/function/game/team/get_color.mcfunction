$data modify storage temp args.color set from storage temp color_pool[$(i)]
$data remove storage temp color_pool[$(i)]
scoreboard players remove $colors temp 1
execute store result storage temp length.colors int 1.0 run scoreboard players get $colors temp
