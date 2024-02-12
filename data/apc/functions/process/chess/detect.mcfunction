# 数据处理
scoreboard players operation @s apc_temp += @s apc_pos
scoreboard players operation @s apc_temp += $step apc_temp

# 数据重置
scoreboard players reset $same_location apc_temp
scoreboard players reset $if_jump apc_temp

# 特殊格判断
# 停留位置有其他棋子
execute as @e[tag=apc_chess] if score @s apc_pos = @e[tag=apc_move,limit=1] apc_temp run scoreboard players add $same_location apc_temp 1
execute as @e[tag=apc_chess] if score @s apc_pos = @e[tag=apc_move,limit=1] apc_temp run tag @s add apc_back
# 停留位置有其他多于2个棋子
execute as @e[tag=apc_chess] if score @s apc_pos = @e[tag=apc_move,limit=1] apc_temp if score $same_location apc_temp matches 2..4 if score $back_both apc_gamerule matches 1 run tag @e[tag=apc_move,limit=1] add apc_back
# 这是为将来多于3个棋子则仅自己返回预留的，但我还没做
# execute as @e[tag=apc_chess] if score @s apc_pos = @e[tag=apc_move,limit=1] apc_temp if score $same_location apc_temp matches 3..4 if score $back_both apc_gamerule matches 1 run tag @e[tag=apc_move,limit=1] add apc_back

# 执行移动
function apc:process/chess/move