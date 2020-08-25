-----------------------------------
-- Area: Caedarva Mire
--   NM: Khimaira
-----------------------------------
require("scripts/globals/titles")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(tpz.title.KHIMAIRA_CARVER)
end

function onMobDespawn(mob)
    mob:setRespawnTime(600) -- 48 to 72 hours, in 1-hour increments
end
