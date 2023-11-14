function reincarnation-origins:werewolf/kill_pack

summon minecraft:wolf ~ ~0.5 ~ {CustomName:'[{"text":"Steeve"}]',Tags:["carn.wolf_pack","carn.summon","carn.temp"],Attributes:[{Name:generic.knockback_resistance,Base:1}],Team:carn.all_summoners_team,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_axe",tag:{Enchantments:[{id:"minecraft:knockback",lvl:1}]}},{}],ActiveEffects:[{Id:11,Amplifier:2,Duration:999999,ShowParticles:0b}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.75f},"pehkui:height":{scale:0.75f},"pehkui:hitbox_width":{scale:0.75f}}}
summon minecraft:wolf ~ ~0.5 ~ {CustomName:'[{"text":"Webber"}]',Tags:["carn.wolf_pack","carn.summon","carn.temp"],Attributes:[{Name:generic.knockback_resistance,Base:1}],Team:carn.all_summoners_team,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:3,Amplifier:5,Duration:999999,ShowParticles:0b},{Id:1,Amplifier:5,Duration:999999,ShowParticles:0b}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.5f},"pehkui:height":{scale:0.5f},"pehkui:hitbox_width":{scale:0.5f}}}
summon minecraft:wolf ~ ~0.5 ~ {CustomName:'[{"text":"Spicey"}]',Tags:["carn.wolf_pack","carn.summon","carn.temp"],Attributes:[{Name:generic.knockback_resistance,Base:1}],Team:carn.all_summoners_team,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:2,Duration:999999,ShowParticles:0b},{Id:1,Amplifier:2,Duration:999999,ShowParticles:0b}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.5f},"pehkui:height":{scale:0.5f},"pehkui:hitbox_width":{scale:0.5f}}}

team join carn.all_summoners_team @e[tag=carn.wolf_pack]
team join carn.all_summoners_team @s
playsound entity.wolf.ambient player @s

scoreboard objectives add carn.packID dummy
scoreboard players operation @s carn.packID += carn.packCounter carn.packID
scoreboard players operation @e[tag=carn.wolf_pack,tag=carn.temp,limit=3] carn.packID += carn.packCounter carn.packID
execute as @e[type=minecraft:wolf,tag=carn.temp,tag=carn.wolf_pack,tag=carn.summon,limit=3] if score @s carn.packID = carn.packCounter carn.packID run tag @s remove carn.temp
execute as @e[type=minecraft:wolf,tag=carn.wolf_pack,tag=carn.summon,limit=1] if score @s carn.packID = carn.packCounter carn.packID run scoreboard players add carn.packCounter carn.packID 1

execute as @e[type=minecraft:wolf,tag=carn.wolf_pack,tag=carn.summon,limit=3] run power grant @s reincarnation-origins:werewolf/pack/pack_minion_powers