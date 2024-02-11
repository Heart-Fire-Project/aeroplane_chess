# Set value
execute if score $ignore_extra_steps apc_gamerule matches 1 run scoreboard players set $ignore_extra_steps apc_gamerule 0
execute unless score $ignore_extra_steps apc_gamerule matches 1 run scoreboard players set $ignore_extra_steps apc_gamerule 1

# Back to debug
function apc:debug/gamerule