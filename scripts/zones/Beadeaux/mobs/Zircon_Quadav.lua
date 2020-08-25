-----------------------------------
-- Area: Beadeaux (254)
--  Mob: Zircon Quadav
-- Note: PH for Zo'Khu Blackcloud
-----------------------------------
local ID = require("scripts/zones/Beadeaux/IDs")
require("scripts/globals/mobs")

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.ZO_KHU_BLACKCLOUD_PH, 10, math.random(600, 610)) -- 1 to 5 hours
end
