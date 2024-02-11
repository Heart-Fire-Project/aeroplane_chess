# Set value
execute if score $all_back apc_gamerule matches 1 run scoreboard players set $all_back apc_gamerule 0
execute unless score $all_back apc_gamerule matches 1 run scoreboard players set $all_back apc_gamerule 1

# Back to debug
function apc:debug/gamerule