function reincarnation-origins:werewolf/kill_pack

summon wolf ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,CollarColor:2b,Tags:["carn.wolf_pack","carn.summon","carn.temp"],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:12},{Name:generic.armor_toughness,Base:12}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.5f},"pehkui:height":{scale:1.5f},"pehkui:hitbox_width":{scale:1.5f}}}
summon wolf ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,CollarColor:1b,Tags:["carn.wolf_pack","carn.summon","carn.temp"],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:12},{Name:generic.armor_toughness,Base:12}]}
summon wolf ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,CollarColor:3b,Tags:["carn.wolf_pack","carn.summon","carn.temp"],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:12},{Name:generic.armor_toughness,Base:12}]}
team join carn.all_summoners_team @e[tag=carn.wolf_pack]
team join carn.all_summoners_team @s
playsound entity.wolf.ambient player @s

scoreboard objectives add carn.packID dummy
scoreboard players operation @s carn.packID += carn.packCounter carn.packID
scoreboard players operation @e[tag=carn.wolf_pack,tag=carn.temp,limit=3] carn.packID += carn.packCounter carn.packID
execute as @e[type=minecraft:wolf,tag=carn.temp,tag=carn.wolf_pack,tag=carn.summon,limit=3] if score @s carn.packID = carn.packCounter carn.packID run tag @s remove carn.temp
execute as @e[type=minecraft:wolf,tag=carn.wolf_pack,tag=carn.summon,limit=1] if score @s carn.packID = carn.packCounter carn.packID run scoreboard players add carn.packCounter carn.packID 1

execute as @e[type=minecraft:wolf,tag=carn.wolf_pack,tag=carn.summon,limit=3] run power grant @s reincarnation-origins:werewolf/pack_minion_powers