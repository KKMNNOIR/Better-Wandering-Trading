execute store result score @s AddedCheck run data get entity @s Item.tag.TradeItem.buy.id
data modify entity @s Item.tag.TradeItem.buy.Count set from entity @s Item.Count
data modify entity @e[type=minecraft:wandering_trader,distance=..0.5,limit=1] Offers.Recipes append from entity @s Item.tag.TradeItem