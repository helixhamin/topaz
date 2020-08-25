-----------------------------------------------------------------------
-- func: @holla
-- desc: Teleports player to teleport-holla
-----------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "is"
};

require ("scripts/globals/teleports");

function onTrigger(player)
	if (player:hasKeyItem(tpz.ki.HOLLA_GATE_CRYSTAL) == true) then
			   player:addStatusEffectEx(tpz.effect.TELEPORT,0,tpz.teleport.id.HOLLA,0,4.7);
        spell:setMsg(tpz.msg.basic.MAGIC_TELEPORT);
    else
        spell:setMsg(tpz.msg.basic.NO_EFFECT);
    end;
    return 0;
end;