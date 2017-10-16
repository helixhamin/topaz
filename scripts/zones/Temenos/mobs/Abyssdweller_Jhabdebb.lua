-----------------------------------
-- Area: Temenos     
-- NPC: 

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
    if (
        GetMobByID(16929010):isDead() and
        GetMobByID(16929011):isDead() and
        GetMobByID(16929012):isDead() and
        GetMobByID(16929013):isDead() and
        GetMobByID(16929014):isDead() and
        GetMobByID(16929015):isDead()
    ) then  
        mob:setMod(MOD_SLASHRES,1400);
        mob:setMod(MOD_PIERCERES,1400);
        mob:setMod(MOD_IMPACTRES,1400);
        mob:setMod(MOD_HTHRES,1400);
    else
        mob:setMod(MOD_SLASHRES,300);
        mob:setMod(MOD_PIERCERES,300);
        mob:setMod(MOD_IMPACTRES,300);
        mob:setMod(MOD_HTHRES,300);
    end
    GetMobByID(16929006):updateEnmity(target);
    GetMobByID(16929007):updateEnmity(target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (
        GetMobByID(16929005):isDead() and
        GetMobByID(16929006):isDead() and
        GetMobByID(16929007):isDead()
    ) then
        GetNPCByID(16928768+78):setPos(-280,-161,-440);
        GetNPCByID(16928768+78):setStatus(STATUS_NORMAL);
        GetNPCByID(16928768+473):setStatus(STATUS_NORMAL);
    end
end;