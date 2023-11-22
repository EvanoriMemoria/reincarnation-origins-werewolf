#teleport minions to you
execute at @a as @e[tag=carn.wolf_pack,tag=carn.summon] if score @s[distance=17..] carn.packID = @p carn.packID run tp @s ~.3 ~ ~
execute at @a as @e[tag=carn.wolf_pack,tag=carn.summon] if score @s[distance=17..] carn.brute_pack_id = @p carn.brute_pack_id run tp @s ~.3 ~ ~