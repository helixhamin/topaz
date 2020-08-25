-----------------------------------
-- Area: Beadeaux [S]
--  Mob: Gold Quadav
-- Note: PH for Da'Dha Hundredmask
-----------------------------------
local ID = require("scripts/zones/Beadeaux_[S]/IDs")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.DA_DHA_HUNDREDMASK_PH, 12, 600) -- 2 hours
end
