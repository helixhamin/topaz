-----------------------------------
-- Area: Dynamis - Beaucedine
--  Mob: Adamantking Effigy
-----------------------------------
require("scripts/globals/dynamis")
-----------------------------------

function onMobSpawn(mob)
    dynamis.refillStatueOnSpawn(mob)
end

function onMobDeath(mob, player, isKiller)
    dynamis.refillStatueOnDeath(mob, player, isKiller)
end
