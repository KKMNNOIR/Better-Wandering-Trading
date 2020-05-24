#ルートテーブル呼び出し
execute as @e[type=minecraft:wandering_trader] at @s store success score @s WT_Success_s unless score @s WT_Success_s matches 1 run loot spawn ~ ~ ~ loot wandering_trade:trades
execute as @e[type=minecraft:wandering_trader] at @s store success score @s WT_Success_b unless score @s WT_Success_b matches 1 run loot spawn ~ ~ ~ loot wandering_trade:sell

#交易アイテム追加
execute as @e[type=minecraft:item,nbt={Item:{tag:{Trade:sell}}}] at @s if data entity @s Item.tag.TradeItem run function wandering_trade:add2
execute as @e[type=minecraft:item,nbt={Item:{tag:{Trade:buy}}}] at @s if data entity @s Item.tag.TradeItem run function wandering_trade:add3

#アイテム消し
execute as @e[type=minecraft:item] if data entity @s Item.tag.TradeItem run kill @s