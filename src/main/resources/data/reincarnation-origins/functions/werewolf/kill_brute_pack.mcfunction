gamerule showDeathMessages false
execute as @e[tag=carn.wolf_pack,tag=carn.brute_wolf,tag=carn.summon,type=wolf] if score @s carn.brute_pack_id = @p carn.brute_pack_id run tp @s ~ -100 ~
execute as @e[tag=carn.wolf_pack,tag=carn.brute_wolf,tag=carn.summon,type=wolf] if score @s carn.brute_pack_id = @p carn.brute_pack_id run kill @s
scoreboard players reset @s carn.brute_pack_id
gamerule showDeathMessages true