-----------------------------------------------------------------------
-- func: @dem
-- desc: Teleports player to teleport-dem
-----------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "is"
};

require ("scripts/globals/teleports");

function onTrigger(player)
	if(player:hasKeyItem(tpz.ki.DEM_GATE_CRYSTAL) == true) then
		player:addStatusEffectEx(tpz.effect.TELEPORT,0,tpz.teleport.id.DEM,0,1);
        spell:setMsg(tpz.msg.basic.MAGIC_TELEPORT);
    else
        spell:setMsg(tpz.msg.basic.NO_EFFECT);
    end;
    return 0;
end;