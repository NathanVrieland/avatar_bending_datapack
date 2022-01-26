item replace entity @s[nbt={SelectedItem:{id:"minecraft:nether_star", tag:{display:{Name: '[{"text": "create_pillar"}]'}}}}] weapon.offhand with carrot_on_a_stick 
item replace entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard", tag:{display:{Name: '[{"text": "tunnel"}]'}}}}] weapon.offhand with carrot_on_a_stick 
item replace entity @s[nbt={SelectedItem:{id:"minecraft:clay_ball", tag:{display:{Name: '[{"text": "dig"}]'}}}}] weapon.offhand with carrot_on_a_stick 
execute as @a[nbt=!{SelectedItem:{id:"minecraft:nether_star", tag:{display:{Name: '[{"text": "create_pillar"}]'}}}}] run execute as @s[nbt=!{SelectedItem:{id:"minecraft:amethyst_shard", tag:{display:{Name: '[{"text": "tunnel"}]'}}}}] run execute as @s[nbt=!{SelectedItem:{id:"minecraft:clay_ball", tag:{display:{Name: '[{"text": "dig"}]'}}}}] run item replace entity @s weapon.offhand with air

execute as @a at @s if entity @s[scores={right_click=1..}] as @s run function bending:item_directory
scoreboard players reset @a right_click

execute as @a at @s if entity @s[scores={pillar_timer=1..}] run scoreboard players remove @s pillar_timer 1
execute as @a at @s if entity @s[scores={pillar_timer=0}] as @s run function earth:give_pillar

execute as @a at @s if entity @s[scores={tunnel_reset=1..}] as @s run function earth:tunnel

execute as @a at @s if entity @s[scores={dig_timer=1..}] run scoreboard players remove @s dig_timer 1
execute as @a at @s if entity @s[scores={dig_timer=0}] as @s run function earth:give_dig