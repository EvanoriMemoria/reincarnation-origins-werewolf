resource set @s reincarnation-origins:werewolf/human/bloodlust_bar 0
playsound reincarnation-origins:werewolf-roar player @s ~ ~ ~ 1 1
origin set @s origins:origin reincarnation-origins:werewolf-brute
advancement grant @s only reincarnation-origins:werewolf/brute_transformation

effect give @s minecraft:absorption 10 0 true

scale set pehkui:height 1.5
scale set pehkui:width 1.5
scale persist set true