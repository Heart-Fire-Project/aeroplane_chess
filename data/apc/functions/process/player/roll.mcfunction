# Random
execute store result score $step apc_temp run random value 1..6

# Show result
tellraw @a [{"translate":"apc.roll.tip","fallback":"- %s 掷出了 %s 点","with":[{"selector":"@s"},{"score":{"name":"$step","objective":"apc_temp"}}],"color":"green"}]

# Select chess
tag @s add apc_select