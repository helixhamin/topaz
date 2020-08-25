-----------------------------------------------------------------------
-- func: @yhoat
-- desc: Teleports player to teleport-yhoat
-----------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "is"
};

require ("scripts/globals/teleports");

function onTrigger(player)
	if(player:hasKeyItem(tpz.ki.YHOATOR_GATE_CRYSTAL) == true) then
		player:addStatusEffectEx(tpz.effect.TELEPORT,0,tpz.teleport.id.YHOAT,0,1);
        spell:setMsg(tpz.msg.basic.MAGIC_TELEPORT);
    else
        spell:setMsg(tpz.msg.basic.NO_EFFECT);
    end;
    return 0;
end;