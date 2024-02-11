# I'll pollute scoreboard by add new objectives now. 
scoreboard objectives add apc_gamerule dummy ["飞行棋游戏规则"]
scoreboard objectives add apc_r dummy ["红队所处坐标"]
scoreboard objectives add apc_g dummy ["绿队所处坐标"]
scoreboard objectives add apc_b dummy ["蓝队所处坐标"]
scoreboard objectives add apc_y dummy ["黄队所处坐标"]
scoreboard objectives add apc_temp dummy ["飞行棋临时数据"]
# Don't want to continue play? Try apc:debug/uninstall.
# Init gamerule
scoreboard players set $roll_3times apc_gamerule 1
scoreboard players set $all_back apc_gamerule 0
scoreboard players set $ignore_extra_steps apc_gamerule 0
scoreboard players set $back_both apc_gamerule 1