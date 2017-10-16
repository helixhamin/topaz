-----------------------------------
-- Area: Temenos N T    
-- NPC: Thrym

-----------------------------------
package.loaded["scripts/zones/Temenos/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/limbus");
require("scripts/zones/Temenos/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    GetMobByID(16928781):updateEnmity(target);
    GetMobByID(16928783):updateEnmity(target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (
        GetMobByID(16928781):isDead() and
        GetMobByID(16928782):isDead() and
        GetMobByID(16928783):isDead()
    ) then
        GetNPCByID(16928768+19):setPos(200,-82,495);
        GetNPCByID(16928768+19):setStatus(STATUS_NORMAL);
        GetNPCByID(16928768+153):setPos(206,-82,495);
        GetNPCByID(16928768+153):setStatus(STATUS_NORMAL);
        GetNPCByID(16928768+210):setPos(196,-82,495);
        GetNPCByID(16928768+210):setStatus(STATUS_NORMAL);
    end
end;