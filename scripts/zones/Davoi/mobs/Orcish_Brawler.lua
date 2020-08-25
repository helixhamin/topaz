-----------------------------------
-- Area: Davoi
--  Mob: Orcish Brawler
-- Note: PH for Poisonhand Gnadgad
-----------------------------------
local ID = require("scripts/zones/Davoi/IDs")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.POISONHAND_GNADGAD_PH, 10, 600) -- 1 hour
end
