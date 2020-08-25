-----------------------------------
-- Auth: Me
-- desc: Some random shop items
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
player:PrintToPlayer("Buy your random shit here!")
stock = {
    622, 57, -- Dried Marjoram
	4509, 13, -- Distilled Water
	958, 120, -- Marguerite
	4365, 120, -- Rolanberry
	4964, 10069,
} 
showShop(player, STATIC, stock);
end