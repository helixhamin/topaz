-----------------------------------
-- Area: Castle Oztroja [S]
--   NM: Marquis Forneus
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(600, 610)) -- 5 to 6 hours
end
