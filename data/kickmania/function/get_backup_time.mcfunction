execute store result score $seconds timer run data get storage kickmania uptime.s
execute store result score $minutes timer run data get storage kickmania uptime.m
execute store result score $hours timer run data get storage kickmania uptime.h
execute store result score $days timer run data get storage kickmania uptime.d

# scoreboard players operation $minutes timer *= $60 const
# scoreboard players operation $hours timer *= $60 const
# scoreboard players operation $hours timer *= $60 const
# scoreboard players operation $days timer *= $24 const
# scoreboard players operation $days timer *= $60 const
# scoreboard players operation $days timer *= $60 const

# scoreboard players operation $seconds timer 

