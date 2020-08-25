-----------------------------------
-- Area: Crawlers' Nest
--  Mob: Puroboros
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(600, 610)) -- 1 to 3 hours
end
