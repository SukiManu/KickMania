$data modify storage temp args.alias set from storage temp aliases[$(i)]
$data remove storage temp aliases[$(i)]
execute store result storage minecraft:temp args.aliases int 1.0 run scoreboard players remove $aliases temp 1