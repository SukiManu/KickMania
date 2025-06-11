$execute store result storage temp index.i int 1.0 run random value 0..$(aliases)
$team join $(color) @s
function kickmania:game/team/get_alias with storage temp index
execute in kickmania:kickmania positioned 0 0 0 summon husk run function kickmania:game/team/spawn_minion with storage temp args
scoreboard players add $minions_spawned temp 1
execute if score $minions_spawned temp < $minions kickmania.global run function kickmania:game/team/init_spawn_minions with storage temp args
return -2461311