## Remez Algorithm
#a := mux (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation $temp temp = $ux temp
scoreboard players operation $temp1 temp = $uz temp
execute if score $temp temp matches ..-1 run scoreboard players operation $temp temp *= $-1 const
execute if score $temp1 temp matches ..-1 run scoreboard players operation $temp1 temp *= $-1 const
scoreboard players operation $temp2 temp = $temp temp
scoreboard players operation $temp2 temp < $temp1 temp
scoreboard players operation $temp3 temp = $temp temp
scoreboard players operation $temp3 temp > $temp1 temp
scoreboard players operation $temp2 temp *= $1000 const
scoreboard players operation $temp2 temp /= $temp3 temp
## s
scoreboard players operation $temp3 temp = $temp2 temp
scoreboard players operation $temp3 temp *= $temp3 temp
scoreboard players operation $temp3 temp /= $1000 const
## r
scoreboard players operation $result temp = $temp3 temp
scoreboard players operation $result temp *= $-46496 const
scoreboard players operation $result temp /= $100000 const
scoreboard players add $result temp 1593
scoreboard players operation $result temp *= $temp3 temp
scoreboard players operation $result temp /= $1000 const
scoreboard players remove $result temp 3276
scoreboard players operation $result temp *= $temp3 temp
scoreboard players operation $result temp /= $1000 const
scoreboard players operation $result temp *= $temp2 temp
scoreboard players operation $result temp /= $10000 const
scoreboard players operation $result temp += $temp2 temp
execute if score $temp1 temp > $temp temp run scoreboard players remove $result temp 1570
execute if score $temp1 temp > $temp temp run scoreboard players operation $result temp *= $-1 const
execute if score $ux temp matches ..-1 run scoreboard players operation $result temp *= $-1 const
execute if score $uz temp matches ..-1 run scoreboard players operation $result temp *= $-1 const

