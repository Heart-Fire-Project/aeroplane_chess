# Set value
execute if score $roll_3times apc_gamerule matches 1 run scoreboard players set $roll_3times apc_gamerule 0
execute unless score $roll_3times apc_gamerule matches 1 run scoreboard players set $roll_3times apc_gamerule 1

# Back to debug
function apc:debug/gamerule