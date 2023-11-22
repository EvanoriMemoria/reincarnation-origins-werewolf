gamerule showDeathMessages false
execute as @e[tag=carn.wolf_pack,tag=carn.human_pack,tag=carn.summon,type=wolf] if score @s carn.packID = @p carn.packID run tp @s ~ -100 ~
execute as @e[tag=carn.wolf_pack,tag=carn.human_pack,tag=carn.summon,type=wolf] if score @s carn.packID = @p carn.packID run kill @s
scoreboard players reset @s carn.packID
gamerule showDeathMessages true