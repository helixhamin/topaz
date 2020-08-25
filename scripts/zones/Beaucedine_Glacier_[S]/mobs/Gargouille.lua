-----------------------------------
-- Area: Beaucedine Glacier [S]
--  Mob: Gargouille
-- Note: PH for Grand'Goule
-----------------------------------
local ID = require("scripts/zones/Beaucedine_Glacier_[S]/IDs")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.GRANDGOULE_PH, 10, 600) -- 1 hour
end
