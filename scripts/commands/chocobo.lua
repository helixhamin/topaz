---------------------------------------------------------------------------------------------------
-- func: @chocobo
-- auth: <Unknown> :: Modded by Tagban
-- desc: Adds Chocobo
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};


function onTrigger(player)
   player:addStatusEffect(tpz.effect.CHOCOBO, 1, 0, 99999);
end;