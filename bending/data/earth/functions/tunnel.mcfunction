execute if entity @s[scores={tunnel_timer=1..}] run scoreboard players remove @s tunnel_timer 1
execute if entity @s[scores={tunnel_reset=1..}] run scoreboard players remove @s tunnel_reset 1
execute if entity @s[scores={tunnel_timer=1..}] at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air replace #earth
execute if entity @s[scores={tunnel_reset=1}] as @s run function earth:give_tunnel