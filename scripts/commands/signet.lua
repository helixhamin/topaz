-----------------------------------------------------------------------
-- func: @signet
-- desc: Gives GM Player signet for 5 hours
-----------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "i"
};

function onTrigger(player)
player:delStatusEffectsByFlag(tpz.effectFlag.INFLUENCE, true)
player:addStatusEffect(tpz.effect.SIGNET, 0, 0, 18000)
end;