# Remove tag
tag @s remove apc_roll_again
tag @s remove apc_roll_2times

# Tip
tellraw @a [{"translate":"apc.roll.tip.extra.4","fallback":"- %s 又一次掷出了 %s 点，需全部返回停机坪","with":[{"selector":"@s"},{"score":{"name":"$step","objective":"apc_temp"}}],"color":"gold"}]

# 加个音效吧