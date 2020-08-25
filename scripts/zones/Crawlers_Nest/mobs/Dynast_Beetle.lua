-----------------------------------
-- Area: Crawlers' Nest (197)
--   NM: Dynast Beetle
-----------------------------------
require("scripts/globals/hunts")

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 237)
end

function onMobDespawn(mob)
    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(600, 610)) -- 90 to 120 minutes
end
