# Set value
execute if score $back_both apc_gamerule matches 1 run scoreboard players set $back_both apc_gamerule 0
execute unless score $back_both apc_gamerule matches 1 run scoreboard players set $back_both apc_gamerule 1

# Back to debug
function apc:debug/gamerule