----------------------------------------------------------------------------------------------
-- func: mog
-- desc: opens the mog house menu everywhere
----------------------------------------------------------------------------------------------

require("scripts/globals/moghouse");
require("scripts/zones/Southern_San_dOria/TextIDs");
require("scripts/globals/settings");


cmdprops =
{
    permission = 0,
    parameters = ""
};


function onTrigger(player)
      player:sendMenu(1);
end