-- I have added back some of the non rare/ex gear that was removed by SE. This allows me to get rare and/or rare/ex drops from the old NMs. Of course, this adds them to the original monsters, not to non-related mobs.

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 2079,0,0,1000,17440,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 80
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=17440 -- Add Kraken Club to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (2079,0,0,1000,17440,200); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 2036,0,0,1000,13014,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 70
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=13014 -- Add Leaping Boots to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (2036,0,0,1000,13014,200); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 3678,0,0,1000,12486,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 160
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=12486 -- Add Emperor Hairpin to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (3678,0,0,1000,12486,200); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 174,0,0,1000,13056,230) AS tmp
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=13056 -- Add Peacock Charm to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (174,0,0,1000,13056,230); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 3387,0,0,1000,13514,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 20
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=13514 -- Add Shikaree Ring to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (3387,0,0,1000,13514,200); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 1935,0,0,1000,13189,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 80
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=13189 -- Add Speed Belt to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (1935,0,0,1000,13189,200); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 2987,0,0,1000,17108,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 120
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=17108 -- Add Dryad Staff to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (2987,0,0,1000,17108,200); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 3208,0,0,1000,14080,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 100
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=14080 -- Add Strider Boots to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (3208,0,0,1000,14080,200); */

/* INSERT INTO mob_droplist (dropId, dropType, groupId, groupRate, itemId, itemRate)
SELECT * FROM (SELECT 2238,0,0,1000,13952,200) AS tmp -- The final 200 is the drop rate. I have increased mine to 20%. Default is 50
WHERE NOT EXISTS (
    SELECT dropId FROM mob_droplist WHERE itemId=13952 -- Add Ochiudo's Kote to drop list
) LIMIT 1;
INSERT INTO `mob_droplist` VALUES (2238,0,0,1000,13952,200); */


-- I wanted to increase the droprates of the ex versions of the above items to 20%. Commented out until I can get it to work right.
/* update `mob_droplist` set `rate` = 200 where `dropId` = 1935 AND `itemId` = 15899 -- Change speed belt ex version to 20% drop
update `mob_droplist` set `rate` = 200 where `dropId` = 2036 AND `itemId` = 15351 -- Change Leaping Boots ex version to 20% drop
update `mob_droplist` set `rate` = 200 where `dropId` = 2079 AND `itemId` = 18852 -- Change Kraken Club ex version to 20% drop
update `mob_droplist` set `rate` = 200 where `dropId` = 2238 AND `itemId` = 14986 -- Change Ochiudo's Kote ex version to 20% drop
update `mob_droplist` set `rate` = 200 where `dropId` = 2987 AND `itemId` = 18587 -- Change Dryad Staff ex version to 20% drop
update `mob_droplist` set `rate` = 200 where `dropId` = 3208 AND `itemId` = 15736 -- Change Strider Boots ex version to 20% drop
update `mob_droplist` set `rate` = 200 where `dropId` = 3387 AND `itemId` = 15551 -- Change Shikaree Ring ex version to 20% drop
update `mob_droplist` set `rate` = 200 where `dropId` = 3678 AND `itemId` = 15224 -- Change Emperor Hairpin ex version to 20% drop */


-- This is a custom weapon modification I implement on my server. It just makes the OC a more viable weapon, rather than a low damage TP feeder. But, since this cannot be purchased, you need to get the drop.
update `item_weapon` set `hit` = 8 where `itemID` = 18852; -- Sets hit rate of octave club to 8, like KC club
update `item_weapon` set `dmg` = 30 where `itemID` = 18852; -- Sets damage of octave club to 30, similar to legiondark damage rate


-- These are some relic modifications I created for my server, allowing me to own two fully upgraded relic weapons. If I am going to go through the trouble of upgrading a single handed weapon, and then go through the trouble to upgrade a second relic weapon, I want to be able to so I can dual weild them.
update `item_basic` set `flags` = 30784 where `itemid` = 18270; -- Removes exclusive flag from lvl 75 mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18271; -- Removes exclusive flag from lvl 80 mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18638; -- Removes exclusive flag from lvl 85 mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18652; -- Removes exclusive flag from lvl 90 mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18666; -- Removes exclusive flag from lvl 95 mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19747; -- Removes exclusive flag from lvl 99 mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19840; -- Removes exclusive flag from lvl 99 afterglow mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20555; -- Removes exclusive flag from lvl 99, 91 damage mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20556; -- Removes exclusive flag from lvl 99, 91 damage afterglow mandau, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20583; -- Removes exclusive flag from lvl 99, 124 damage afterglow mandau, allowing ownership of two

update `item_basic` set `flags` = 30784 where `itemid` = 18276; -- Removes exclusive flag from lvl 75 excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18277; -- Removes exclusive flag from lvl 80 excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18639; -- Removes exclusive flag from lvl 85 excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18653; -- Removes exclusive flag from lvl 90 excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18667; -- Removes exclusive flag from lvl 95 excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19748; -- Removes exclusive flag from lvl 99 excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19841; -- Removes exclusive flag from lvl 99 afterglow excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20645; -- Removes exclusive flag from lvl 99, 121 damage excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20646; -- Removes exclusive flag from lvl 99, 121 damage afterglow excalibur, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20685; -- Removes exclusive flag from lvl 99, 164 damage afterglow excalibur, allowing ownership of two

update `item_basic` set `flags` = 30784 where `itemid` = 18312; -- Removes exclusive flag from lvl 75 kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18313; -- Removes exclusive flag from lvl 80 kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18645; -- Removes exclusive flag from lvl 85 kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18659; -- Removes exclusive flag from lvl 90 kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18673; -- Removes exclusive flag from lvl 95 kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19754; -- Removes exclusive flag from lvl 99 kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19847; -- Removes exclusive flag from lvl 99 afterglow kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20970; -- Removes exclusive flag from lvl 99 109 damage kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20971; -- Removes exclusive flag from lvl 99 109 damage afterglow kikoku, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 21906; -- Removes exclusive flag from lvl 99 148 damage afterglow kikoku, allowing ownership of two

update `item_basic` set `flags` = 30784 where `itemid` = 18288; -- Removes exclusive flag from lvl 75 guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18289; -- Removes exclusive flag from lvl 80 guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18641; -- Removes exclusive flag from lvl 85 guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18655; -- Removes exclusive flag from lvl 90 guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18669; -- Removes exclusive flag from lvl 95 guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19750; -- Removes exclusive flag from lvl 99 guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19843; -- Removes exclusive flag from lvl 99 afterglow guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20790; -- Removes exclusive flag from lvl 99 145 damage guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 20791; -- Removes exclusive flag from lvl 99 145 damage afterglow guttler, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 21750; -- Removes exclusive flag from lvl 99 197 damage afterglow guttler, allowing ownership of two

update `item_basic` set `flags` = 30784 where `itemid` = 18324; -- Removes exclusive flag from lvl 75 mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18325; -- Removes exclusive flag from lvl 80 mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18647; -- Removes exclusive flag from lvl 85 mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18661; -- Removes exclusive flag from lvl 90 mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 18675; -- Removes exclusive flag from lvl 95 mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19756; -- Removes exclusive flag from lvl 99 mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 19849; -- Removes exclusive flag from lvl 99 afterglow mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 21060; -- Removes exclusive flag from lvl 99 160 damage mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 21061; -- Removes exclusive flag from lvl 99 160 damage afterglow mjollnir, allowing ownership of two
update `item_basic` set `flags` = 30784 where `itemid` = 21077; -- Removes exclusive flag from lvl 99 217 damage afterglow mjollnir, allowing ownership of two