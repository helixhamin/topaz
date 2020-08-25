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
player:PrintToPlayer("Buy your nin shit here!")
stock = {
	5867, 15000,
    5868, 18000,
} 
tpz.shop.general(player, stock);
end