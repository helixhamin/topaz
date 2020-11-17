-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Sanraku
-- Type: Zeni NM pop item and trophy management.
-- !pos -125.724 0.999 22.136 50
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/besieged")
local ID = require("scripts/zones/Aht_Urhgan_Whitegate/IDs")
-----------------------------------

-- Define collections

local znms = {
    -- Tinnin
    { trophy = 2609, lure = 2573, seal = tpz.ki.LILAC_COLORED_SEAL },
    { trophy = 2610, lure = 2574, seal = tpz.ki.CHARCOAL_GREY_SEAL },
    { trophy = 2611, lure = 2575, seal = tpz.ki.DEEP_PURPLE_SEAL },
    { trophy = 2612, lure = 2576, seal = tpz.ki.CHESTNUT_COLORED_SEAL },
    { trophy = 2613, lure = 2577, seal = tpz.ki.APPLE_GREEN_SEAL },
    { trophy = 2614, lure = 2578, seal = tpz.ki.APPLE_GREEN_SEAL },
    { trophy = 2615, lure = 2579, seal = tpz.ki.APPLE_GREEN_SEAL },
    { trophy = 2616, lure = 2580, seal = tpz.ki.MAROON_SEAL },
    { trophy = 2617, lure = 2581, seal = tpz.ki.MAROON_SEAL },
    { trophy = 2618, lure = 2582, seal = tpz.ki.MAROON_SEAL },

    -- Sarameya
    { trophy = 2619, lure = 2583, seal = tpz.ki.BRIGHT_BLUE_SEAL },
    { trophy = 2620, lure = 2584, seal = tpz.ki.PURPLISH_GREY_SEAL },
    { trophy = 2621, lure = 2585, seal = tpz.ki.GOLD_COLORED_SEAL },
    { trophy = 2622, lure = 2586, seal = tpz.ki.COPPER_COLORED_SEAL },
    { trophy = 2623, lure = 2587, seal = tpz.ki.SALMON_COLORED_SEAL },
    { trophy = 2624, lure = 2588, seal = tpz.ki.SALMON_COLORED_SEAL },
    { trophy = 2625, lure = 2589, seal = tpz.ki.SALMON_COLORED_SEAL },
    { trophy = 2626, lure = 2590, seal = tpz.ki.CERISE_SEAL },
    { trophy = 2627, lure = 2591, seal = tpz.ki.CERISE_SEAL },
    { trophy = 2628, lure = 2592, seal = tpz.ki.CERISE_SEAL },

    -- Tyger
    { trophy = 2629, lure = 2593, seal = tpz.ki.LAVENDER_COLORED_SEAL },
    { trophy = 2630, lure = 2594, seal = tpz.ki.FALLOW_COLORED_SEAL },
    { trophy = 2631, lure = 2595, seal = tpz.ki.TAUPE_COLORED_SEAL },
    { trophy = 2632, lure = 2596, seal = tpz.ki.SIENNA_COLORED_SEAL },
    { trophy = 2633, lure = 2597, seal = tpz.ki.AMBER_COLORED_SEAL },
    { trophy = 2634, lure = 2598, seal = tpz.ki.AMBER_COLORED_SEAL },
    { trophy = 2635, lure = 2599, seal = tpz.ki.AMBER_COLORED_SEAL },
    { trophy = 2636, lure = 2600, seal = tpz.ki.PINE_GREEN_SEAL },
    { trophy = 2637, lure = 2601, seal = tpz.ki.PINE_GREEN_SEAL },
    { trophy = 2638, lure = 2602, seal = tpz.ki.PINE_GREEN_SEAL },

    -- Pandemonium Warden
    { trophy = nil, lure = 2572, seal = nil }
}

local options = {}

-- Costs
options[100] = { cost = 1000 }
options[101] = { cost = 1000 }
options[102] = { cost = 1000 }
options[103] = { cost = 2000 }
options[104] = { cost = 2000 }
options[105] = { cost = 2000 }
options[106] = { cost = 3000 }
options[107] = { cost = 3000 }
options[108] = { cost = 3000 }
options[109] = { cost = 4000 }
options[110] = { cost = 1000 }
options[111] = { cost = 1000 }
options[112] = { cost = 1000 }
options[113] = { cost = 2000 }
options[114] = { cost = 2000 }
options[115] = { cost = 2000 }
options[116] = { cost = 3000 }
options[117] = { cost = 3000 }
options[118] = { cost = 3000 }
options[119] = { cost = 4000 }
options[120] = { cost = 1000 }
options[121] = { cost = 1000 }
options[122] = { cost = 1000 }
options[123] = { cost = 2000 }
options[124] = { cost = 2000 }
options[125] = { cost = 2000 }
options[126] = { cost = 3000 }
options[127] = { cost = 3000 }
options[128] = { cost = 3000 }
options[129] = { cost = 4000 }
options[130] = { cost = 5000 }

-- Salts
options[300] = { keyitem = tpz.ki.SICKLEMOON_SALT, cost = 500, required = nil}
options[301] = { keyitem = tpz.ki.SILVER_SEA_SALT, cost = 500, required = nil}
options[302] = { keyitem = tpz.ki.CYAN_DEEP_SALT, cost = 500, required = nil}

-- Tinnin
options[400] = { item = 2580, cost = 1000, required = nil }
options[401] = { item = 2581, cost = 1000, required = nil }
options[402] = { item = 2582, cost = 1000, required = nil }
options[403] = { item = 2577, cost = 2000, required = { tpz.ki.MAROON_SEAL }}
options[404] = { item = 2578, cost = 2000, required = { tpz.ki.MAROON_SEAL }}
options[405] = { item = 2579, cost = 2000, required = { tpz.ki.MAROON_SEAL }}
options[406] = { item = 2574, cost = 3000, required = { tpz.ki.APPLE_GREEN_SEAL }}
options[407] = { item = 2575, cost = 3000, required = { tpz.ki.APPLE_GREEN_SEAL }}
options[408] = { item = 2576, cost = 3000, required = { tpz.ki.APPLE_GREEN_SEAL }}
options[409] = { item = 2573, cost = 4000, required = { tpz.ki.CHARCOAL_GREY_SEAL, tpz.ki.DEEP_PURPLE_SEAL, tpz.ki.CHESTNUT_COLORED_SEAL }}

-- Sarameya
options[410] = { item = 2590, cost = 1000, required = nil }
options[411] = { item = 2591, cost = 1000, required = nil }
options[412] = { item = 2592, cost = 1000, required = nil }
options[413] = { item = 2587, cost = 2000, required = { tpz.ki.CERISE_SEAL }}
options[414] = { item = 2588, cost = 2000, required = { tpz.ki.CERISE_SEAL }}
options[415] = { item = 2589, cost = 2000, required = { tpz.ki.CERISE_SEAL }}
options[416] = { item = 2584, cost = 3000, required = { tpz.ki.SALMON_COLORED_SEAL }}
options[417] = { item = 2585, cost = 3000, required = { tpz.ki.SALMON_COLORED_SEAL }}
options[418] = { item = 2586, cost = 3000, required = { tpz.ki.SALMON_COLORED_SEAL }}
options[419] = { item = 2583, cost = 4000, required = { tpz.ki.COPPER_COLORED_SEAL, tpz.ki.GOLD_COLORED_SEAL, tpz.ki.PURPLISH_GREY_SEAL }}

-- Tyger
options[420] = { item = 2600, cost = 1000, required = nil }
options[421] = { item = 2601, cost = 1000, required = nil }
options[422] = { item = 2602, cost = 1000, required = nil }
options[423] = { item = 2597, cost = 2000, required = { tpz.ki.PINE_GREEN_SEAL }}
options[424] = { item = 2598, cost = 2000, required = { tpz.ki.PINE_GREEN_SEAL }}
options[425] = { item = 2599, cost = 2000, required = { tpz.ki.PINE_GREEN_SEAL }}
options[426] = { item = 2594, cost = 3000, required = { tpz.ki.AMBER_COLORED_SEAL }}
options[427] = { item = 2595, cost = 3000, required = { tpz.ki.AMBER_COLORED_SEAL }}
options[428] = { item = 2596, cost = 3000, required = { tpz.ki.AMBER_COLORED_SEAL }}
options[429] = { item = 2593, cost = 4000, required = { tpz.ki.TAUPE_COLORED_SEAL, tpz.ki.FALLOW_COLORED_SEAL, tpz.ki.SIENNA_COLORED_SEAL }}

-- PW
options[440] = { item = 2572, cost = 5000, required = { tpz.ki.LILAC_COLORED_SEAL, tpz.ki.BRIGHT_BLUE_SEAL, tpz.ki.LAVENDER_COLORED_SEAL }}

-- Era Custom trades for Zeni
local customTradeItemIds = {
    [1816] = 1000, -- Wyrm Horn
    [2154] = 1000, -- Orobon Lure
    [2373] = 1000, -- Khimera Tail
    [5565] = 1000, -- Cerberus Meat
     [865] = 1000, -- Nidhogg Scales
    [5564] = 1000  -- Hydra Meat
}

function onTrade(player,npc,trade)
    -- Guardian clauses
    -- Make sure we exactly 1 item
    if trade:getItemCount() ~= 1 then return end

    local tradeItemId = trade:getItemId(0) -- only 1 item, get first

    if tradeItemId == 2477 then -- Soul Plate
        zeni = math.random(1,200) -- random value since soul plates aren't implemented yet.
        player:tradeComplete()
        player:addCurrency("zeni_point", zeni)
        player:startEvent(910, zeni)
    elseif customTradeItemIds[tradeItemId] then
        player:tradeComplete();
        player:addCurrency("zeni_point", customTradeItemIds[tradeItemId]);
    else
        for i,znm in pairs(znms) do
            if tradeItemId == znm.trophy then
                if player:hasKeyItem(znm.seal) == false then
                    player:tradeComplete()
                    player:addKeyItem(znm.seal)
                    player:startEvent(912, 0, 0, 0, znm.seal)
                else
                    player:messageSpecial(ID.text.SANCTION + 8, znm.seal) -- You already possess .. (not sure this is authentic)
                end
                break
            end
        end
    end
end

function onTrigger(player,npc)
    if player:getCharVar("ZeniStatus") == 0 then
        player:startEvent(908)
    else
        local param = 2140136440 -- Defaut bitmask, Tier 1 ZNM Menu + don't ask option

        -- Tinnin Path
        if player:hasKeyItem(tpz.ki.MAROON_SEAL) then
            param = param - 0x38 -- unlocks Tinnin path tier 2 ZNMs.
        end
        if player:hasKeyItem(tpz.ki.APPLE_GREEN_SEAL) then
            param = param - 0x1C0 -- unlocks Tinnin path tier 3 ZNMs.
        end
        if player:hasKeyItem(tpz.ki.CHARCOAL_GREY_SEAL) and player:hasKeyItem(tpz.ki.DEEP_PURPLE_SEAL) and player:hasKeyItem(tpz.ki.CHESTNUT_COLORED_SEAL) then
            param = param - 0x200 -- unlocks Tinnin.
        end

        -- Sarameya Path
        if player:hasKeyItem(tpz.ki.CERISE_SEAL) then
            param = param - 0xE000 -- unlocks Sarameya path tier 2 ZNMs.
        end
        if player:hasKeyItem(tpz.ki.SALMON_COLORED_SEAL) then
            param = param - 0x70000 -- unlocks Sarameya path tier 3 ZNMs.
        end
        if player:hasKeyItem(tpz.ki.PURPLISH_GREY_SEAL) and player:hasKeyItem(tpz.ki.GOLD_COLORED_SEAL) and player:hasKeyItem(tpz.ki.COPPER_COLORED_SEAL) then
            param = param - 0x80000 -- unlocks Sarameya.
        end

        -- Tyger Path
        if player:hasKeyItem(tpz.ki.PINE_GREEN_SEAL) then
            param = param - 0x3800000 -- unlocks Tyger path tier 2 ZNMs.
        end
        if player:hasKeyItem(tpz.ki.AMBER_COLORED_SEAL) then
            param = param - 0x1C000000 -- unlocks Tyger path tier 3 ZNMs.
        end
        if player:hasKeyItem(tpz.ki.TAUPE_COLORED_SEAL) and player:hasKeyItem(tpz.ki.FALLOW_COLORED_SEAL) and player:hasKeyItem(tpz.ki.SIENNA_COLORED_SEAL) then
            param = param - 0x20000000 -- unlocks Tyger.
        end

        if player:hasKeyItem(tpz.ki.LILAC_COLORED_SEAL) and player:hasKeyItem(tpz.ki.BRIGHT_BLUE_SEAL) and player:hasKeyItem(tpz.ki.LAVENDER_COLORED_SEAL) then
            param = param - 0x40000000 -- unlocks Pandemonium Warden.
        end

        player:startEvent(909, param)
    end
end

function onEventUpdate(player,csid,option)
    if csid == 909 then
        local zeni = player:getCurrency("zeni_point")

        if option == 500 then -- player has declined to buy a pop item
            player:updateEvent(1, 1)
        elseif options[option] then
            params = options[option]
            if params.item == nil and params.keyitem == nil and params.cost ~= nil then -- Cost options
                player:updateEvent(0, 0, 0, 0, 0, 0, params.cost)
                return
            end

            if zeni < params.cost then
                player:updateEvent(2, params.cost) -- not enough zeni
            else
                if params.required ~= nil then
                    for i,keyitem in pairs(params.required) do
                        if not player:hasKeyItem(keyitem) then
                            print(player:getName().. " does not have required KeyItem (" ..keyitem.. ")")
                        return end
                    end
                end
                if params.item ~= nil then
                    if player:getFreeSlotsCount() == 0 then
                        player:updateEvent(4, params.cost, params.item) -- Cannot obtain.
                    elseif player:addItem(params.item) then
                        player:delCurrency("zeni_point", params.cost)
                        if params.required ~= nil then
                            for i,keyitem in pairs(params.required) do
                                player:delKeyItem(keyitem)
                            end
                            player:updateEvent(1, params.cost, params.item, params.required[1], params.required[2], params.required[3])
                        else
                            player:updateEvent(1, params.cost, params.item)
                        end
                    else
                        player:updateEvent(4, params.cost, params.item) -- Cannot obtain.
                    end
                elseif params.keyitem ~= nil then
                    if player:hasKeyItem(params.keyitem) then
                        player:updateEvent(3, params.cost) -- has keyitem already
                    else
                        player:updateEvent(1, params.cost, 0, params.keyitem)
                        player:addKeyItem(params.keyitem)
                        player:delCurrency("zeni_point", params.cost)
                    end
                end
            end
        end
    end
end

function onEventFinish(player,csid,option)
    -- Handle ZeniStatus event
    if csid == 908 then
        player:setCharVar("ZeniStatus", 1)
        player:addCurrency("zeni_point", 2000)
    end
end