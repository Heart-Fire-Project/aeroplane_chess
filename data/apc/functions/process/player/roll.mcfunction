# Random
execute store result score $step apc_temp run random value 1..6

# Show result
tellraw @a [{"translate":"apc.roll.tip","fallback":"- %s 掷出了 %s 点","with":[{"selector":"@s"},{"score":{"name":"$step","objective":"apc_temp"}}],"color":"green"}]

# Special Event
execute unless score $step apc_temp matches 6 run tag @s remove apc_roll_again
execute unless score $step apc_temp matches 6 run tag @s remove apc_roll_2times
execute if score $step apc_temp matches 6 if entity @s[tag=apc_roll_again] run tag @s add apc_roll_2times
execute if score $step apc_temp matches 6 run tag @s add apc_roll_again
execute if score $step apc_temp matches 6 run function apc:process/player/roll_3times

# Select chess
tag @s add apc_select