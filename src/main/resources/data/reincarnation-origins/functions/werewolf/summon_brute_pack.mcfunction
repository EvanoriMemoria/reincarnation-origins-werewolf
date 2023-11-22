function reincarnation-origins:werewolf/kill_brute_pack

summon wolf ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,CollarColor:2b,Tags:["carn.wolf_pack","carn.summon","carn.temp","carn.brute_wolf"],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:12},{Name:generic.armor,Base:12},{Name:generic.armor_toughness,Base:12}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.25f},"pehkui:height":{scale:1.25f},"pehkui:hitbox_width":{scale:1.25f}}}
team join carn.all_summoners_team @e[tag=carn.wolf_pack]
team join carn.all_summoners_team @s
playsound entity.wolf.ambient player @s

scoreboard objectives add carn.brute_pack_id dummy
scoreboard players operation @s carn.brute_pack_id += carn.brute_pack_counter carn.brute_pack_id
scoreboard players operation @e[tag=carn.wolf_pack,tag=carn.temp,limit=1] carn.brute_pack_id += carn.brute_pack_counter carn.brute_pack_id
execute as @e[type=minecraft:wolf,tag=carn.temp,tag=carn.wolf_pack,tag=carn.summon,limit=1] if score @s carn.brute_pack_id = carn.brute_pack_counter carn.brute_pack_id run tag @s remove carn.temp
execute as @e[type=minecraft:wolf,tag=carn.wolf_pack,tag=carn.summon,limit=1] if score @s carn.brute_pack_id = carn.brute_pack_counter carn.brute_pack_id run scoreboard players add carn.brute_pack_counter carn.brute_pack_id 1

power grant @e[type=minecraft:wolf,tag=carn.wolf_pack,tag=carn.summon,tag=carn.brute_wolf,limit=1,sort=nearest] reincarnation-origins:werewolf/wolf_friends/brute_wolf_powers

execute as @e[type=minecraft:wolf,tag=carn.wolf_pack,tag=carn.summon,limit=1,sort=nearest] run power grant @s reincarnation-origins:werewolf/wolf_friends/pack_minion_powers