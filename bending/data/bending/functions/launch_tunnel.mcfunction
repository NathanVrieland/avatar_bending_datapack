execute if entity @s[scores={tunnel_reset=-1}] as @s run scoreboard players set @s tunnel_timer 200
execute if entity @s[scores={tunnel_reset=-1}] as @s run scoreboard players set @s tunnel_reset 300
item replace entity @s hotbar.7 with barrier