tellraw @a {"text": "bending loaded", "color": "#ffff00"}

execute as @a run function bending:give_pillar
execute as @a run function bending:give_tunnel

scoreboard objectives add right_click used:carrot_on_a_stick
scoreboard objectives add pillar_timer dummy
scoreboard objectives add tunnel_timer dummy
scoreboard objectives add tunnel_reset dummy


