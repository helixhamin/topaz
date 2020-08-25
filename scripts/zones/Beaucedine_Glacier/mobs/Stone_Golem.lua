-----------------------------------
-- Area: Beaucedine Glacier (111)
--  Mob: Stone Golem
-- Note: PH for Gargantua
-----------------------------------
local ID = require("scripts/zones/Beaucedine_Glacier/IDs")
require("scripts/globals/mobs")

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.GARGANTUA_PH, 5, math.random(600, 610)) -- 1 to 7 hours
end
