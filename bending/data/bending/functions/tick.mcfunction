execute as @r at @s if entity @s[scores={right_click=1..}] as @s run function bending:item_directory
scoreboard players reset @a right_click

execute as @r at @s if entity @s[scores={pillar_timer=1..}] run scoreboard players remove @s pillar_timer 1
execute as @r at @s if entity @s[scores={pillar_timer=0}] as @s run function bending:give_pillar

execute as @r at @s if entity @s[scores={tunnel_reset=1..}] as @s run function bending:tunnel
item replace entity @a weapon.offhand with carrot_on_a_stick 