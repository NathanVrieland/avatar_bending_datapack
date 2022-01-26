item replace entity @s hotbar.6 with firework_star{display:{Name: '[{"text": "== cooldown ==", "color": "red"}]'}}
execute at @s positioned ~ ~-1 ~ run function earth:bend_earth
execute at @s run playsound block.stone.break block @a ~ ~ ~
execute if block ~ ~-2 ~ #earth run fill ~ ~-2 ~ ~ ~-3 ~ air replace #earth
execute if block ~ ~-2 ~ air run teleport @s ~ ~-3 ~
scoreboard players set @s dig_timer 20