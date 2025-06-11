execute store result score $sound temp run random value 0..1
execute if score $sound temp matches 0 at @s run playsound kickmania:classic_ouch ambient @a
execute if score $sound temp matches 1 at @s run playsound kickmania:classic_oinutter ambient @a