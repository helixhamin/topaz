-----------------------------------
-- Area: Castle Zvahl Baileys
--  Mob: Abyssal Demon
-- Note: PH for Marquis Sabnock
-----------------------------------
local ID = require("scripts/zones/Castle_Zvahl_Baileys/IDs")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.MARQUIS_SABNOCK_PH, 10, 600) -- 2 hour
end
