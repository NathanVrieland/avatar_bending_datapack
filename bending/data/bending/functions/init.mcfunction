tellraw @a {"text": "bending loaded", "color": "#ffff00"}
item replace entity @a hotbar.8 with nether_star{display:{Name: '[{"text": "create_pillar"}]'}}
execute as @a run function bending:give_tunnel
scoreboard objectives add pillar_timer dummy
scoreboard objectives add tunnel_timer dummy
scoreboard objectives add tunnel_reset dummy

scoreboard objectives setdisplay sidebar tunnel_reset
scoreboard objectives setdisplay sidebar tunnel_timer
