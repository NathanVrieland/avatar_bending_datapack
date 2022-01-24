effect give @s levitation 1 100
execute as @s run tag @s add levitation
schedule function bending:remove_levitation 2
execute at @s run teleport @s ~ ~5 ~
execute at @s run function bending:remove_pillar
execute at @s run fill ~2 ~ ~2 ~-2 ~-10 ~-2 cobbled_deepslate replace air
execute at @s run fill ~2 ~ ~2 ~2 ~-10 ~2 air replace cobbled_deepslate
execute at @s run fill ~-2 ~ ~2 ~-2 ~-10 ~2 air replace cobbled_deepslate
execute at @s run fill ~-2 ~ ~-2 ~-2 ~-10 ~-2 air replace cobbled_deepslate
execute at @s run fill ~2 ~ ~-2 ~2 ~-10 ~-2 air replace cobbled_deepslate
execute at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace #rocks
execute at @s run playsound entity.generic.explode master @a ~ ~ ~
item replace entity @s hotbar.8 with barrier
clear @s nether_star{display:{Name: '[{"text": "create_pillar"}]'}}
scoreboard players add @s pillar_timer 100