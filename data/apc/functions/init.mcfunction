# I'll pollute scoreboard by add new objectives now. 
scoreboard objectives add apc_gamerule dummy ["飞行棋游戏规则"]
scoreboard objectives add apc_pos dummy ["飞行棋所处坐标"]
scoreboard objectives add apc_data dummy ["飞行棋数据"]
scoreboard objectives add apc_temp dummy ["飞行棋临时数据"]
# Don't want to continue play? Try apc:debug/uninstall.
# Init gamerule
scoreboard players set $roll_3times apc_gamerule 1
scoreboard players set $all_back apc_gamerule 0
scoreboard players set $ignore_extra_steps apc_gamerule 0
scoreboard players set $back_both apc_gamerule 1
# Init number
scoreboard players set $1 apc_data 1
scoreboard players set $2 apc_data 2
scoreboard players set $3 apc_data 3
scoreboard players set $4 apc_data 4