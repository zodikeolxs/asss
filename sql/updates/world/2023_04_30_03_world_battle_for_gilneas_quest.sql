/*
	Quest 24904 Battle for Gilneas City
	
	Liam on bridge - entry 38218
	Player 'pet' Militia, and Gilnean Militia inside city - 38221 - should all be able to shoot
	Forsaken Infantry - 38192
	Forsaken Crossbowman - 38210
	Dark Ranger Elite - 38464
	Embertstone Cannon - 38424
	Worgen Warrior (Near Gorerot) - 38348
	Damaged Catapult near Gorerot - 38377 - when passenger joins it should start dropping it's health - apply aura 72839, remove when exiting vehicle
	Gorerot - 38331
	Lord Darius Crowley @ Gorerot - 38415
	Soultethered Banshee @ Sylvanas - 38473
	Lady Sylvanas Windrunner - 38469
	King Genn Greymane - 38470
	Prince Liam Greymane @ Sylvanas - 38474
	Lorna for quest turn in - 38611
	Lorna spawning at bridge with cannons - 38426 with group of "Freed Emberstone Villager" 38425 and "Emberstone Cannon" 38424
	
	Cannon fire should be applying a dot to Gorerot - not much else should damage him much
	Crowley yells maybe once every 90s "He's too strong!..." while Gorerot is alive, maybe immediately upon spawn
	On Gorerot death, Crowley - "Let us join your father's forces..." and runs outside
	Liam makes his way to the square where Sylvanas is at
	
	Arriving near the area, Genn comes from left bridge, yells "Block their retreat, Liam!..." and rides to Sylvanas
	then yells "SYLVANAS!!" as he starts attacking. Probably triggered by Liam entering the area or waypoint
	
	Crowley makes his way here, should randomly jump around to other targets?
	
	Lady Sylvanas surrounded by Soul Tethered Banshees' - invincible while alive?? - casting shadowy connection to Sylvanas
	When Sylvanas gets to 25% hp - yells "Enough!"
	Does blast back, shadow-looking spell - objective complete here, and 'pets' despawn and other Militia hit with blast wave
	(Banshee Queen's Wail?)
	Liam getting knocked back should despawn and summon Liam 38474 in his place. This is what will script the rest of the sequence
	
	After a few seconds, as Genn stunned, Sylvanas yells "Let's see how brave..."
	Liam is running up to get in between, Yells "Father!" as he's close
	As he reaches his father, turn on walk, walks briefly towards Sylvanas
	Crossbow shot
	Sylvanas - "Such a waste..." - she rides off and will fade
	King Greymane, "LIAM!! NO!!"
	Liam falls over to the ground - probably needs scripted like Koosh's
	King needs to kneel at his side
	After few seconds, King fades along with any nearby Militia that are left
	Turn in quest to Lorna
*/

-- Fix Gorerot entry - old level 83, damage multiplier 1, Armor_mod 1
UPDATE `creature_template` SET `minlevel`='27',`maxlevel`='27',`ScaleLevelMin`='0',`ScaleLevelMax`='0',`dmg_multiplier`='0.8',`Armor_mod`='0.0001' WHERE `entry`='38331'; 

-- Fix Sylvanas level/damage
UPDATE `creature_template` SET `minlevel`='25',`maxlevel`='25',`dmg_multiplier`='1' WHERE `entry`='38469'; -- Sylvanas old level 88, dmg 3

-- Fix other scaling for area NPCs - old 11-13ish, no scaling
UPDATE `creature_template` SET `minlevel`='1',`maxlevel`='20',`ScaleLevelMin`='1',`ScaleLevelMax`='20' WHERE `entry` IN ('38192','38464','38210','38348','38377','38420','39015','38221','38473');

-- Forsaken Crossbowman switch to Forsaken Infantry so they can be killed by helper NPCs, otherwise causing issues

UPDATE `creature` SET `id`='38192' WHERE `id`='38210';

-- Move NPC spawns
REPLACE INTO `creature` VALUES (148921, 38464, 654, 4755, 4756, 1, 262144, '', 21746, 0, -1497.45, 1403.14, 35.5563, 4.63909, 60, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148988, 38464, 654, 4755, 4756, 1, 262144, '', 21746, 0, -1551.12, 1399.58, 35.5586, 4.74905, 60, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148028, 38192, 654, 4755, 4758, 1, 262144, '', 30290, 0, -1726.86, 1614.16, 20.4865, 1.35015, 180, 5, 0, 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148032, 38192, 654, 4755, 4758, 1, 262144, '', 30292, 0, -1701.82, 1660.53, 20.4913, 4.64724, 180, 5, 0, 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (149314, 39015, 654, 4755, 4758, 1, 262144, '', 22533, 0, -1697.88, 1695.02, 20.1922, 4.71951, 180, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (149340, 39015, 654, 4755, 4758, 1, 262144, '', 22532, 0, -1696.59, 1655.36, 20.4893, 4.51766, 180, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Add more Forsaken NPCs
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4758, 1, 262144, '', 0, 0, -1787.45, 1587.17, 20.5061, 4.43094, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4758, 1, 262144, '', 0, 0, -1790.5, 1578.03, 20.5063, 0.544791, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4758, 1, 262144, '', 0, 0, -1783.13, 1601.56, 20.4827, 4.3791, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1791.96, 1522.33, 20.1645, 5.26818, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1787.36, 1511.34, 19.7825, 2.85543, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1755.87, 1512.23, 26.2231, 6.05043, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1762.5, 1496.1, 26.2233, 4.32255, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1733.79, 1512.95, 26.223, 4.46864, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1730.7, 1469.28, 24.184, 0.645319, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1728.4, 1481.24, 24.3008, 1.38045, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4761, 1, 262144, '', 0, 0, -1695.24, 1492.24, 22.0128, 2.20512, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1725.76, 1407.08, 21.6686, 2.94811, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1713.4, 1392.37, 21.6686, 5.41112, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1713.11, 1401.08, 21.6689, 3.42249, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1744.65, 1374.15, 19.8986, 3.5293, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1737.94, 1367.69, 19.9725, 2.02448, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1751.38, 1371.61, 19.9073, 2.22161, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1770.46, 1417.93, 19.7823, 1.73151, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1767.26, 1430.31, 20.1049, 1.26106, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1770.95, 1431.98, 20.081, 2.74232, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1778.24, 1453.92, 19.3639, 1.64354, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1766.61, 1454.77, 20.2312, 1.64354, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1803.99, 1500.51, 19.7741, 0.650015, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1801.35, 1400.55, 19.7722, 5.46671, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1800.2, 1393.04, 19.7789, 2.00781, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1802.3, 1406.24, 19.8376, 4.67816, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1799.52, 1395.06, 19.8489, 5.30727, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 39015, 654, 4755, 4757, 1, 262144, '', 0, 0, -1801.41, 1409.46, 19.8764, 1.55071, 180, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- vehicle action enable
UPDATE `creature_template` SET `spell1`='72013' WHERE `entry`='38424'; -- Emberstone Cannon enable action while controlling

 -- Damaged Catapult enable action while controlling, old unitflags2 2048, regen 1, veh 634
UPDATE `creature_template` SET `spell1`='72051',`unit_flags2`='0',`RegenHealth`='0',`vehicleId`='516' WHERE `entry`='38377';

-- Fix catapult beginning health % / respawn
UPDATE `creature` SET `curhealth`='800',`spawntimesecs`='1' WHERE `id`='38377'; -- old 11/180

-- Update respawn and phaseID/mask 38192 old phaseMask=262144, others 65536
UPDATE `creature` SET `spawntimesecs`='180',`phaseMask`='262144' WHERE `id` IN ('38192','38464','38210','38348','38420','39015');

-- Remove start/complete script from quest
UPDATE `quest_template` SET `StartScript`='0',`CompleteScript`='0' WHERE `id`='24904'; -- old values 24904

-- Enable Krennan Gossip menu
UPDATE `creature_template` SET `gossip_menu_id`='11061' WHERE `entry`='38553';
UPDATE `gossip_menu_option` SET `OptionType`='1',`OptionNpcFlag`='1' WHERE `MenuID`='11061';

-- Condition to only show menu when quest is active
DELETE FROM `conditions` WHERE `SourceGroup`='11061' AND `SourceTypeOrReferenceId`='15';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='15', -- gossip menu option
	`SourceGroup`='11061', -- gossip_menu_option menuid
	`SourceEntry`='0', -- gossip_menu_option OptionIndex
	`SourceId`='0',
	`ElseGroup`='1', -- combines with condition below with same ElseGroup
	`ConditionTypeOrReference`='9', -- CONDITION_QUESTTAKEN
	`ConditionTarget`='0', -- player
	`ConditionValue1`='24904', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='menu option during quest only';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='15', -- gossip menu option
	`SourceGroup`='11061', -- gossip_menu_option menuid
	`SourceEntry`='0', -- gossip_menu_option OptionIndex
	`SourceId`='0',
	`ElseGroup`='1',
	`ConditionTypeOrReference`='65', -- CONDITION_GET_AMOUNT_STACK_AURA
	`ConditionTarget`='1', -- Object/NPC giving gossip menu
	`ConditionValue1`='137519', -- Spell ID
	`ConditionValue2`='1', -- Stacks
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='1',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='menu option only when buff NOT running on Krennan';

-- spell 72069 needs to NOT run on vehicle creature (not working as is)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='13' -- CONDITION_SOURCE_TYPE_SPELL 
	AND `SourceEntry`='72069'; -- Spell from Liam, heal aura
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='13', -- CONDITION_SOURCE_TYPE_SPELL_IMPLICIT_TARGET
	`SourceGroup`='2',
	`SourceEntry`='72069', -- Spell
	`SourceId`='0',
	`ElseGroup`='0',
	`ConditionTypeOrReference`='1', 
	`ConditionTarget`='1', 
	`ConditionValue1`='69434',
	`ConditionValue2`='0',  
	`ConditionValue3`='0', 
	`NegativeCondition`='1', 
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Spell aura from Liam to NOT apply when in vehicle (spell 69434 riding forsaken catapult)';

-- Darius speech response to cannons @ Gorerot only when Gorerot over 5% health
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='22' -- CONDITION_SOURCE_TYPE_SMART_EVENT
	AND `SourceEntry`='38415' -- Darius Crowley
	AND `SourceGroup`='91' -- entry 90 +1
	AND `SourceId`='0'; -- SourceType for SAI
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='22', -- CONDITION_SOURCE_TYPE_SMART_EVENT
	`SourceGroup`='91',
	`SourceEntry`='38415',
	`SourceId`='0',
	`ElseGroup`='0',
	`ConditionTypeOrReference`='36', -- CONDITION_ALIVE
	`ConditionTarget`='0', 
	`ConditionValue1`='0',
	`ConditionValue2`='0',  
	`ConditionValue3`='0', 
	`NegativeCondition`='0', 
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Darius Crowley speech @ Gorerot';

-- Creatures that need removed
DELETE FROM `creature` WHERE `guid` IN ('148113','148114','148210','148733','148892','148897','148893','148894','148895','148896','148226');

-- Re-order text into some semblence of non-dumbassery
UPDATE `creature_text` SET `GroupID`='20' WHERE `Entry`='38218' AND `BroadcastTextID`='37888'; -- "The Forsaken think we're weak..."
UPDATE `creature_text` SET `GroupID`='21' WHERE `Entry`='38218' AND `BroadcastTextID`='37893'; -- "How wrong they are..."
UPDATE `creature_text` SET `GroupID`='22' WHERE `Entry`='38218' AND `BroadcastTextID`='37891'; -- "We will fight them on the streets..."
UPDATE `creature_text` SET `GroupID`='23' WHERE `Entry`='38218' AND `BroadcastTextID`='37892'; -- "We will fight them in the alleys..."
UPDATE `creature_text` SET `GroupID`='24' WHERE `Entry`='38218' AND `BroadcastTextID`='37895'; -- "And if we find ourselves..."
UPDATE `creature_text` SET `GroupID`='25' WHERE `Entry`='38218' AND `BroadcastTextID`='37896'; -- "But we will..."
UPDATE `creature_text` SET `GroupID`='26' WHERE `Entry`='38218' AND `BroadcastTextID`='37897'; -- "We will fight them on the streets..."
UPDATE `creature_text` SET `GroupID`='0' WHERE `Entry`='38218' AND `BroadcastTextID` IN ('139449','65756','38494','38493','38496'); -- Random aggro reactions
UPDATE `creature_text` SET `GroupID`='10' WHERE `Entry`='38218' AND `BroadcastTextID`='38362'; -- Abominations in the way
UPDATE `creature_text` SET `GroupID`='11' WHERE `Entry`='38218' AND `BroadcastTextID`='38345'; -- Sight for sore eyes, to Lorna
UPDATE `creature_text` SET `GroupID`='12' WHERE `Entry`='38218' AND `BroadcastTextID`='38360'; -- Crowley troops ahead
REPLACE INTO `creature_text` VALUES ('38426','4','0','There\'s no way in hell I\'m staying out of this fight! Let\'s go!','14','0','100','0','0','19685','38367','9000','9000','0','Lorna Crowley to Player'); -- Missing Lorna entry
UPDATE `creature_text` SET `Type`='14' WHERE `Entry`='38426'; -- Bump Lorna to yell to make sure it can be heard from further
UPDATE `creature_text` SET `GroupID`='0' WHERE `Entry`='38474' AND `BroadcastTextID`='38369'; -- Liam death scene
UPDATE `creature_text` SET `GroupID`='1' WHERE `Entry`='38474' AND `BroadcastTextID`='38371'; -- Liam death scene
UPDATE `creature_text` SET `GroupID`='2' WHERE `Entry`='38474' AND `BroadcastTextID`='38372'; -- Liam death scene
UPDATE `creature_text` SET `GroupID`='0' WHERE `Entry`='38470' AND `BroadcastTextID`='38364'; -- Genn - Don't let them go, Liam
UPDATE `creature_text` SET `GroupID`='1' WHERE `Entry`='38470' AND `BroadcastTextID`='38365'; -- Genn - Sylvanas!
UPDATE `creature_text` SET `GroupID`='2' WHERE `Entry`='38470' AND `BroadcastTextID`='38485'; -- Genn - Liam, no!
UPDATE `creature_text` SET `Sound`='0' WHERE `Entry`='38469' AND `Sound`='19727'; -- remove Genn Greymane voice from Sylvanas
UPDATE `creature_text` SET `GroupID`='0' WHERE `Entry`='38469' AND `BroadcastTextID`='129681'; -- Sylvanas Enough!
UPDATE `creature_text` SET `GroupID`='1' WHERE `Entry`='38469' AND `BroadcastTextID`='38368'; -- Sylvanas Let's see how brave
UPDATE `creature_text` SET `GroupID`='2' WHERE `Entry`='38469' AND `BroadcastTextID`='38370'; -- Sylvanas Such a waste

-- Entries to setup SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN ('37783','38218','38221','38331','38348','38469','38473','38377','38415','38426','38470','38474','38553');

-- Setup SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('37783','38218','38221','38331','38348','38377','38415','38426','38469','38473','38474','38470','38553') AND `source_type`='0';
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('3821800','3821801','3833100','3842600','3847000','3847001','3846900','3846901','3847400','3847401') AND `source_type`='9';
DELETE FROM `smart_scripts` WHERE `entryorguid` >= '3822100' AND `entryorguid` <= '3822149' AND `source_type`='9';
INSERT INTO `smart_scripts` VALUES
-- Damaged Catapult
('38377', '0', '0', '1', '27', '0', '100', '0', '0', '0', '0', '0', '75', '72839', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Passenger Boarded - Apply Damage Aura'),
('38377', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '72069', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Link - Remove Liam aura'),
-- ('38377', '0', '3', '0', '28', '0', '100', '0', '0', '0', '0', '0', '28', '72839', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Passenger Removed - Remove Damage Aura'),
('38377', '0', '4', '0', '11', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Spawn - Set Passive'),

-- Lorna
('37783', '0', '0', '0', '19', '0', '100', '0', '24904', '0', '0', '0', '85', '139965', '6', '0', '0', '0', '0', '19', '38553', '100', '0', '0', '0', '0', '0', 'Quest Battle for Gilneas Accepted - Invoke Player cast on Krennan'),

-- Krennan
('38553', '0', '0', '0', '8', '0', '100', '0', '139965', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Spell Hit from Lorna Quest Accept - Speech'),
('38553', '0', '1', '2', '62', '0', '100', '0', '11061', '0', '0', '0', '11', '137519', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Gossip Select - Cast dummy aura to disable another battle for a while'),
('38553', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1415.215', '1258.810', '36.42788', '1.8', 'Link - Spawn for 20 mins'), -- Gilnean Militia
('38553', '0', '3', '4', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1412.081', '1258.869', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '4', '5', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1408.782', '1258.806', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '5', '6', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1404.504', '1261.337', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '6', '7', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1402.904', '1259.340', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '7', '8', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1402.357', '1257.697', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '8', '9', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1404.431', '1255.683', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '9', '10', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1405.802', '1255.498', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '10', '11', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1407.586', '1256.222', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '11', '12', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1408.910', '1257.697', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '12', '13', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1410.568', '1256.862', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '13', '14', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1412.925', '1251.302', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '14', '15', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1412.329', '1249.931', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '15', '16', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1410.711', '1248.924', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '16', '17', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38221', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1409.173', '1249.749', '36.42788', '1.8', 'Link - Spawn for 20 mins'),
('38553', '0', '17', '0', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38218', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1410.38', '1266.99', '36.45', '4.93', 'Link - Spawn for 20 mins'), -- spawn Liam

-- Gilnean Militia
('38221', '0', '0', '1', '54', '0', '100', '1', '0', '0', '0', '0', '10', '4', '5', '21', '22', '66', '15', '1', '0', '0', '0', '0', '0', '0', '0', 'On Summon - Random Emote'),
('38221', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '8', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Aggressive'),
('38221', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '1200000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Despawn for 20 minutes in case something bugs'),

('38221', '0', '3', '0', '9', '0', '100', '0', '0', '40', '1000', '6000', '11', '6660', '6', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Combat Target in Range - Shoot'),
('38221', '0', '4', '0', '9', '0', '100', '0', '0', '5', '1000', '10000', '11', '15572', '6', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Combat Target in Range - Sunder Armor'),

('38221', '0', '6', '7', '38', '0', '100', '0', '1', '1', '0', '0', '88', '3822100', '3822149', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set - Random Actionlist for Follow'),
('38221', '0', '7', '8', '61', '0', '100', '0', '0', '0', '0', '0', '67', '1', '2000', '4000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Timer'),
('38221', '0', '8', '0', '61', '0', '100', '0', '0', '0', '0', '0', '5', '71', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Cheer Emote'),

('38221', '0', '9', '10', '59', '0', '100', '0', '1', '0', '0', '0', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Timer Trigger - Set Home'),
('38221', '0', '10', '11', '61', '0', '100', '0', '0', '0', '0', '0', '67', '1', '2000', '6000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Reset Timer'),
('38221', '0', '11', '0', '61', '0', '100', '0', '0', '0', '0', '0', '88', '3822100', '3822149', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Random Actionlist for Follow'),

('38221', '0', '12', '0', '8', '0', '100', '0', '177316', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Spell Hit Banshee - Die'),

-- Gilnean Militia Actionlists (each is follow at different angle/distance)
('3822100', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '1', '0', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822101', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '2', '1', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822102', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '3', '2', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822103', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '4', '3', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822104', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '5', '4', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822105', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '6', '5', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822106', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '7', '6', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822107', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '8', '7', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822108', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '9', '8', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822109', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '10', '9', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822110', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '1', '10', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822111', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '2', '11', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822112', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '3', '12', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822113', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '4', '13', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822114', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '5', '14', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822115', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '6', '15', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822116', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '7', '16', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822117', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '8', '17', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822118', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '9', '18', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822119', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '10', '19', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822120', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '1', '20', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822121', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '2', '21', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822122', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '3', '22', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822123', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '4', '23', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822124', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '5', '24', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822125', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '6', '25', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822126', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '7', '26', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822127', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '8', '27', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822128', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '9', '28', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822129', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '10', '29', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822130', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '1', '30', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822131', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '2', '31', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822132', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '3', '32', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822133', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '4', '33', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822134', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '5', '34', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822135', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '6', '35', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822136', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '7', '36', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822137', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '8', '37', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822138', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '9', '38', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822139', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '10', '39', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822140', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '1', '40', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822141', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '2', '41', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822142', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '3', '42', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822143', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '4', '43', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822144', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '5', '44', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822145', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '6', '45', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822146', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '7', '46', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822147', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '8', '47', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822148', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '9', '48', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),
('3822149', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '29', '10', '49', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Follow Liam'),

-- Liam @ Bridge/start
('38218', '0', '0', '1', '54', '0', '100', '0', '0', '0', '0', '0', '80', '3821800', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Summon - Actionlist for Intro Speech to Gorerot'),
('38218', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '43', '116231', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Mounted on Horse'),
('38218', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '11', '72069', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Cast Aura Buff'),
('38218', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '219', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Disable Pathing for waypoint smoothness'),

('38218', '0', '5', '0', '9', '0', '100', '0', '0', '40', '2000', '3000', '11', '31942', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Combat Target in Range - Multishot'),
('38218', '0', '6', '0', '4', '0', '20', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Aggro - Chance for Speech'),

('38218', '0', '8', '0', '60', '0', '100', '0', '1000', '1000', '1000', '1000', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Update - Set Home position'),
('38218', '0', '9', '0', '60', '0', '100', '0', '1000', '1000', '1000', '1000', '59', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Update - Enable Run since Combat possibly resetting it'),

('38218', '0', '10', '0', '38', '0', '100', '0', '1', '1', '0', '0', '80', '3821801', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set from Gorerot Death - Actionlist'),

('38218', '0', '11', '12', '38', '0', '100', '0', '1', '5', '0', '0', '97', '25', '5', '0', '0', '0', '0', '8', '0', '0', '0', '-1633', '1626.5', '20.8', '0', 'Data Set from  Sylvanas death - jump to position'),
('38218', '0', '12', '13', '61', '0', '100', '0', '0', '0', '0', '0', '12', '38474', '4', '60000', '0', '0', '0', '8', '0', '0', '0', '-1633.5', '1629.6', '21.2', '0', 'Link - Summon Liam for cutscene'),
('38218', '0', '13', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '2000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Despawn'),

-- Liam Actionlist for Speech Intro up to Gorerot spawn
('3821800', '9', '0', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '1', '20', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Start Intro Speech'),
('3821800', '9', '1', '0', '0', '0', '100', '0', '10000', '10000', '0', '0', '1', '21', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Start Intro Speech'),
('3821800', '9', '2', '0', '0', '0', '100', '0', '11000', '11000', '0', '0', '1', '22', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Start Intro Speech'),
('3821800', '9', '3', '0', '0', '0', '100', '0', '12000', '12000', '0', '0', '1', '23', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Start Intro Speech'),
('3821800', '9', '4', '0', '0', '0', '100', '0', '11000', '11000', '0', '0', '1', '24', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Start Intro Speech'),
('3821800', '9', '5', '0', '0', '0', '100', '0', '11000', '11000', '0', '0', '1', '25', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Start Intro Speech'),
('3821800', '9', '6', '0', '0', '0', '100', '0', '6000', '6000', '0', '0', '1', '26', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Start Intro Speech'),
('3821800', '9', '7', '0', '0', '0', '100', '0', '500', '500', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '38221', '100', '0', '0', '0', '0', '0', 'Set Data to nearby Militia for follow start'),
('3821800', '9', '8', '0', '0', '0', '100', '0', '500', '500', '0', '0', '5', '71', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cheer'),
-- to entrance just inside gate
('3821800', '9', '9', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1443.303', '1388.971', '35.55635', '0', 'To Gorerot'),
('3821800', '9', '10', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '11', '0', '0', '0', '100', '0', '20000', '20000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
-- to first corner
('3821800', '9', '12', '0', '0', '0', '100', '0', '50000', '50000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1449.860', '1424.824', '35.55635', '0', 'To Gorerot'),
('3821800', '9', '13', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '14', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
-- to 1/2 up road to south
('3821800', '9', '15', '0', '0', '0', '100', '0', '10000', '10000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1483.415', '1434.658', '35.71744', '0', 'To Gorerot'),
('3821800', '9', '16', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '17', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
-- to corner on south road
('3821800', '9', '18', '0', '0', '0', '100', '0', '10000', '10000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1551.563', '1426.018', '35.55597', '0', 'To Gorerot'),
('3821800', '9', '19', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '20', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
-- to cross street just east
('3821800', '9', '21', '0', '0', '0', '100', '0', '18000', '18000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1549.416', '1400.630', '35.55597', '0', 'To Gorerot'),
('3821800', '9', '22', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '23', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
-- to cross street just north
('3821800', '9', '24', '0', '0', '0', '100', '0', '25000', '25000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1502.586', '1390.563', '35.55597', '0', 'To Gorerot'),
('3821800', '9', '25', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '26', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
-- to cross street just south from gate
('3821800', '9', '27', '0', '0', '0', '100', '0', '15000', '15000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1505.749', '1342.328', '35.55597', '0', 'To Gorerot'),
('3821800', '9', '28', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
-- to Abomination speech/Lorna spawn
('3821800', '9', '29', '0', '0', '0', '100', '0', '25000', '25000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1544.613', '1333.023', '35.55597', '0', 'To Gorerot'),
('3821800', '9', '30', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1575.495', '1317.306', '35.66593', '0', 'To Gorerot'),
-- top of steps, Summon Lorna
('3821800', '9', '31', '0', '0', '0', '100', '0', '8000', '8000', '0', '0', '1', '10', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech about Abomination'),
('3821800', '9', '32', '0', '0', '0', '100', '0', '3000', '3000', '0', '0', '12', '38426', '2', '1200000', '0', '0', '0', '8', '0', '0', '0', '-1552.25', '1303.82', '35.88', '2.09', 'Summon Lorna - Despawn in 20 minutes'),
-- to bottom of steps
('3821800', '9', '33', '0', '0', '0', '100', '0', '13000', '13000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1604.987', '1313.444', '18.23273', '0', 'To Gorerot'),
('3821800', '9', '34', '0', '0', '0', '100', '0', '0', '0', '0', '0', '1', '11', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech Reaction to Lorna'),
-- to Across Bridge
('3821800', '9', '35', '0', '0', '0', '100', '0', '4000', '4000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1643.161', '1305.006', '19.68200', '0', 'To Gorerot'),
-- to Crowley Speech
('3821800', '9', '36', '0', '0', '0', '100', '0', '8000', '8000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1693.045', '1308.853', '19.78231', '0', 'To Gorerot'),
('3821800', '9', '37', '0', '0', '0', '100', '0', '3000', '3000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
('3821800', '9', '38', '0', '0', '0', '100', '0', '0', '0', '0', '0', '1', '12', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech about Crowley'),
-- towards Courtyard
('3821800', '9', '39', '0', '0', '0', '100', '0', '15000', '15000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1730.659', '1316.473', '19.78231', '0', 'To Gorerot'),
('3821800', '9', '40', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '41', '0', '0', '0', '100', '0', '8000', '8000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),

('3821800', '9', '42', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1764.8', '1348.9', '19.5', '0', 'To Gorerot'),
('3821800', '9', '43', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),
('3821800', '9', '44', '0', '0', '0', '100', '0', '0', '0', '0', '0', '12', '38415', '2', '900000', '0', '0', '0', '8', '0', '0', '0', '-1790.5', '1323', '19.8', '0.75', 'Summon Crowley - Despawn in 15 minutes'),

('3821800', '9', '45', '0', '0', '0', '100', '0', '7000', '7000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1745.116', '1370.430', '20.00572', '0', 'To Gorerot'),

('3821800', '9', '46', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1714.809', '1405.234', '21.73283', '0', 'At Gorerot'),
('3821800', '9', '47', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),

('3821800', '9', '48', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '12', '38331', '2', '900000', '0', '0', '0', '8', '0', '0', '0', '-1692.8', '1428.46', '59', '3.87', 'Spawn Gorerot - Despawn in 15 minutes'),
('3821800', '9', '49', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '49', '0', '0', '0', '0', '0', '0', '11', '38331', '100', '0', '0', '0', '0', '0', 'Attack Gorerot'),

-- Liam Actionlist from Gorerot to Sylvanas
('3821801', '9', '0', '0', '0', '0', '100', '0', '17000', '17000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1748', '1380', '19.81', '0', 'Crowley speech done, Go towards Sylvanas'),
('3821801', '9', '1', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1793', '1375', '19.67', '0', 'To Sylvanas'),
('3821801', '9', '2', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),

('3821801', '9', '3', '0', '0', '0', '100', '0', '10000', '10000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1802.2', '1452.94', '18.98', '0', 'To Sylvanas'),
('3821801', '9', '4', '0', '0', '0', '100', '0', '16000', '16000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),

('3821801', '9', '5', '0', '0', '0', '100', '0', '16000', '16000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1803', '1530.2', '20.48', '0', 'To Sylvanas'),
('3821801', '9', '6', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive between points'),

('3821801', '9', '7', '0', '0', '0', '100', '0', '14000', '14000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1790', '1586', '20.6', '0', 'To Sylvanas'),

('3821801', '9', '8', '0', '0', '0', '100', '0', '0', '0', '0', '0', '12', '38469', '2', '600000', '0', '0', '0', '8', '0', '0', '0', '-1679.28', '1612.63', '20.5', '2.5', 'Summon Sylvanas - Despawn in 10 minutes if sequence uncompleted'),
('3821801', '9', '9', '0', '0', '0', '100', '0', '500', '500', '0', '0', '12', '38473', '2', '600000', '0', '0', '0', '8', '0', '0', '0', '-1684.28', '1605.63', '20.5', '2.5', 'Summon Soultethered Banshee'),
('3821801', '9', '10', '0', '0', '0', '100', '0', '500', '500', '0', '0', '12', '38473', '2', '600000', '0', '0', '0', '8', '0', '0', '0', '-1673.68', '1620.23', '20.5', '2.5', 'Summon Soultethered Banshee'),
('3821801', '9', '11', '0', '0', '0', '100', '0', '500', '500', '0', '0', '12', '38473', '2', '600000', '0', '0', '0', '8', '0', '0', '0', '-1672.47', '1607.2', '20.5', '2.5', 'Summon Soultethered Banshee'),

('3821801', '9', '12', '0', '0', '0', '100', '0', '15000', '15000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1740', '1649.7', '20.5', '0', 'To Sylvanas'),
('3821801', '9', '13', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '12', '38470', '2', '600000', '0', '0', '0', '8', '0', '0', '0', '-1756.5', '1676', '22.17', '5.75', 'Summon Genn Greymane - Despawn in 10 minutes'),
('3821801', '9', '14', '0', '0', '0', '100', '0', '15000', '15000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1687.7', '1614.27', '20.49', '0', 'To Sylvanas'),
('3821801', '9', '15', '0', '0', '0', '100', '0', '8000', '8000', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
('3821801', '9', '16', '0', '0', '0', '100', '0', '3000', '3000', '0', '0', '49', '0', '0', '0', '0', '0', '0', '11', '38469', '100', '0', '0', '0', '0', '0', 'Attack Sylvanas'),

-- Liam for Death (different NPC)
('38474', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '80', '3847400', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Spawn - Actionlist'),

('38474', '0', '1', '0', '79', '0', '100', '1', '0', '38470', '6', '0', '45', '1', '1', '0', '0', '0', '0', '19', '38469', '100', '0', '0', '0', '0', '0', 'Within Distance to Genn - Set Data to Sylvanas'),
('38474', '0', '2', '0', '38', '0', '100', '0', '1', '1', '0', '0', '80', '3847401', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set from Sylvanas - Actionlist'),

-- Liam for Death actionlist 0
('3847400', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '59', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Enable Run'),
('3847400', '9', '1', '0', '0', '0', '100', '0', '0', '0', '0', '0', '42', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set 1% invincible'),
('3847400', '9', '2', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive'),
('3847400', '9', '3', '0', '0', '0', '100', '0', '0', '0', '0', '0', '18', 2|256|512, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Flags for immunity'),
('3847400', '9', '4', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1681.077', '1620.125', '20.5', '0', 'Summon - Go to Genn'),
('3847400', '9', '5', '0', '0', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech'),

-- Liam for Death actionlist 1
('3847401', '9', '1', '0', '0', '0', '100', '0', '500', '500', '0', '0', '11', '166925', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Feign Death'),
('3847401', '9', '2', '0', '0', '0', '100', '0', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '38470', '100', '0', '0', '0', '0', '0', 'Set Data to Genn'),
('3847401', '9', '3', '0', '0', '0', '100', '0', '12000', '12000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech'),
('3847401', '9', '4', '0', '0', '0', '100', '0', '4000', '4000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech'),
('3847401', '9', '5', '0', '0', '0', '100', '0', '8000', '8000', '0', '0', '41', '10000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Despawn'),

-- King Genn Greymane
('38470', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '80', '3847000', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Summon - Actionlist @ Sylvanas start'),
('38470', '0', '1', '0', '60', '0', '100', '0', '3000', '3000', '0', '0', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Update - Set Home Position'),

('38470', '0', '2', '3', '38', '0', '100', '0', '1', '5', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set from Sylvanas - Passive Mode'),
('38470', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '97', '15', '1', '0', '0', '0', '0', '8', '0', '0', '0', '-1682.63', '1621.46', '20.5', '5.3', 'Link - Jump to Position'),

('38470', '0', '4', '5', '38', '0', '100', '0', '1', '1', '0', '0', '80', '3847001', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set from Liam Shot - Actionlist'),
('38470', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '66', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '5.3', 'Link - Set Orientation'),

-- King Genn Greymane Actionlist Sylvanas start
('3847000', '9', '0', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '46', '20', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Move forward'),
('3847000', '9', '1', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speak'),
('3847000', '9', '2', '0', '0', '0', '100', '0', '25000', '25000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speak'),
('3847000', '9', '3', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive'),
('3847000', '9', '4', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '97', '20', '20', '0', '0', '0', '0', '8', '0', '0', '0', '-1685', '1622', '20.5', '0', 'Jump to Sylvanas'),
('3847000', '9', '5', '0', '0', '0', '100', '0', '2000', '2000', '0', '0', '8', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Assist'),
('3847000', '9', '6', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '49', '0', '0', '0', '0', '0', '0', '11', '38469', '200', '0', '0', '0', '0', '0', 'Attack Sylvanas'),

-- King Genn Greymane Actionlist Liam Death
('3847001', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '5.4', 'Face Liam'),
('3847001', '9', '1', '0', '0', '0', '100', '0', '500', '500', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech - Liam No!'),
('3847001', '9', '2', '0', '0', '0', '100', '0', '500', '500', '0', '0', '5', '15', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Emote cry'),
('3847001', '9', '3', '0', '0', '0', '100', '0', '4500', '4500', '0', '0', '17', '428', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Emote state loot'),
('3847001', '9', '4', '0', '0', '0', '100', '0', '0', '0', '0', '0', '41', '30000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Despawn'),

-- Sylvanas
('38469', '0', '0', '1', '54', '0', '100', '0', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Summon - Disable Combat Movement'),
('38469', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '42', '25', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set 25% invincible'),
('38469', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '43', '28446', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Mount'),
('38469', '0', '3', '0', '0', '0', '100', '0', '5000', '8000', '6000', '8000', '11', '193633', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Combat - Shoot'),

('38469', '0', '4', '0', '23', '0', '100', '0', '182581', '1', '2000', '2000', '224', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Has Aura from Soul Tethers - Set hp 100%'),
('38469', '0', '5', '0', '38', '0', '100', '0', '1', '1', '0', '0', '80', '3846901', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set from Liam - Actionlist'),
('38469', '0', '6', '0', '2', '0', '100', '1', '0', '25', '0', '0', '80', '3846900', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Trigger HP 25% or below - Actionlist'),

-- Sylvanas Actionlist at fight end until knockback/speech
('3846900', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech - Enough!'),
('3846900', '9', '1', '0', '0', '0', '100', '0', '0', '0', '0', '0', '18', 2|256|512, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Flags for immunity'),
('3846900', '9', '2', '0', '0', '0', '100', '0', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '38473', '100', '0', '0', '0', '0', '0', 'Despawn any remaining soul tethers'),
('3846900', '9', '3', '0', '0', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Passive'),
('3846900', '9', '4', '0', '0', '0', '100', '0', '0', '0', '0', '0', '24', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Enable Evade'),
('3846900', '9', '5', '0', '0', '0', '100', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stop Attack'),
('3846900', '9', '6', '0', '0', '0', '100', '0', '2000', '2000', '0', '0', '11', '72113', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Queens Banshee Wail for knockback and stun'),
('3846900', '9', '7', '0', '0', '0', '100', '0', '0', '0', '0', '0', '11', '177316', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast AOE for trigger'),
('3846900', '9', '8', '0', '0', '0', '100', '0', '0', '0', '0', '0', '45', '1', '5', '0', '0', '0', '0', '19', '38218', '100', '0', '0', '0', '0', '0', 'Set Data to Liam'),
('3846900', '9', '9', '0', '0', '0', '100', '0', '0', '0', '0', '0', '45', '1', '5', '0', '0', '0', '0', '19', '38470', '100', '0', '0', '0', '0', '0', 'Set Data to Genn'),
('3846900', '9', '10', '0', '0', '0', '100', '0', '3000', '3000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech - See how Brave...'),
('3846900', '9', '11', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '11', '72349', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Nearby players credit quest complete (both needed)'),
('3846900', '9', '12', '0', '0', '0', '100', '0', '0', '0', '0', '0', '223', '24904', '0', '0', '0', '0', '0', '18', '100', '0', '0', '0', '0', '0', '0', 'Nearby players quest complete (both needed)'),

-- Sylvanas Actionlist for shooting Liam/Despawn scene
('3846901', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '5', '61', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Throw Emote'),
('3846901', '9', '1', '0', '0', '0', '100', '0', '200', '200', '0', '0', '11', '106492', '6', '0', '0', '0', '0', '19', '38474', '100', '0', '0', '0', '0', '0', 'Fake projectile to closest Liam'),
('3846901', '9', '2', '0', '0', '0', '100', '0', '500', '500', '0', '0', '45', '1', '1', '0', '0', '0', '0', '19', '38474', '100', '0', '0', '0', '0', '0', 'Set Data to Liam for reaction'),
('3846901', '9', '3', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '18', '100', '0', '0', '0', '0', '0', '0', 'Speech'),
('3846901', '9', '4', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '59', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Enable Run'),
('3846901', '9', '5', '0', '0', '0', '100', '0', '6000', '6000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1629.6', '1636', '21.3', '0', 'Leave'),
('3846901', '9', '6', '0', '0', '0', '100', '0', '6000', '6000', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Despawn'),

-- Soultethered Banshee
('38473', '0', '0', '1', '54', '0', '100', '0', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Summon - Disable Combat Movement'),
('38473', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Passive'),
('38473', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '11', '182581', '4', '0', '0', '0', '0', '19', '38469', '100', '0', '0', '0', '0', '0', 'Link - Cast Soul Tether'),

('38473', '0', '3', '0', '4', '0', '100', '0', '0', '0', '0', '0', '11', '182581', '4', '0', '0', '0', '0', '19', '38469', '100', '0', '0', '0', '0', '0', 'On Aggro - Cast Soul Tether in case interrupted'),

('38473', '0', '4', '5', '60', '0', '100', '0', '1500', '1500', '1500', '1500', '92', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Update - Interrupt self'),
('38473', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '11', '182581', '4', '0', '0', '0', '0', '19', '38469', '100', '0', '0', '0', '0', '0', 'Link - Cast Soul Tether to Sylvanas'),

('38473', '0', '6', '0', '38', '0', '100', '0', '1', '1', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set - Despawn'),
('38473', '0', '7', '0', '6', '0', '100', '0', '0', '0', '0', '0', '45', '1', '10', '0', '0', '0', '0', '19', '38469', '100', '0', '0', '0', '0', '0', 'Death - Set Data to Sylvanas'),

-- Lorna
('38426', '0', '0', '1', '54', '0', '100', '0', '0', '0', '0', '0', '80', '3842600', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Summon - Actionlist to spawn Cannons and others'),
('38426', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '59', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Enable Run'),

('38426', '0', '2', '0', '60', '0', '100', '0', '5000', '5000', '5000', '5000', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Update - Set Home Pos'),
('38426', '0', '3', '0', '38', '0', '100', '0', '1', '1', '0', '0', '29', '1', '0', '0', '0', '0', '0', '11', '38415', '100', '0', '0', '0', '0', '0', 'Data Set from Gorerot - Follow Darius to Sylvanas'),

-- Lorna Actionlist 
('3842600', '9', '0', '0', '0', '0', '100', '0', '500', '500', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1561.7', '1319.75', '35.56', '3.3', 'Go to pos'),
('3842600', '9', '1', '0', '0', '0', '100', '0', '4000', '4000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech'),
('3842600', '9', '2', '0', '0', '0', '100', '0', '0', '0', '0', '0', '12', '38424', '2', '300000', '0', '0', '0', '8', '0', '0', '0', '-1573.1', '1312.7', '35.56', '3.28', 'Spawn Cannon for 5 minutes'),
('3842600', '9', '3', '0', '0', '0', '100', '0', '0', '0', '0', '0', '12', '38424', '2', '300000', '0', '0', '0', '8', '0', '0', '0', '-1575.2', '1322.67', '35.56', '3.28', 'Spawn Cannon for 5 minutes'),
('3842600', '9', '4', '0', '0', '0', '100', '0', '2000', '2000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1567.5', '1318.99', '35.56', '3.3', 'Go to pos'),
('3842600', '9', '5', '0', '0', '0', '100', '0', '15000', '15000', '0', '0', '1', '4', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speech'),
('3842600', '9', '6', '0', '0', '0', '100', '0', '0', '0', '0', '0', '219', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Disable Pathing'),
('3842600', '9', '7', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '29', '10', '0', '0', '0', '0', '0', '11', '38218', '100', '0', '0', '0', '0', '0', 'Follow Liam'),

-- Darius Crowley
('38415', '0', '0', '1', '54', '0', '100', '0', '0', '0', '0', '0', '8', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Aggressive'),
('38415', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '219', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Disable Pathing for waypoint smoothness'),
('38415', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '59', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Enable Run'),
('38415', '0', '3', '4', '61', '0', '100', '0', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '38348', '100', '0', '0', '0', '0', '0', 'Link - Set Data to Worgen Warriors'),
('38415', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '67', '1', '3000', '5000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Set Timer 1'),

('38415', '0', '5', '0', '38', '0', '100', '0', '1', '1', '0', '0', '67', '2', '10000', '10000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set from Gorerot Death - Set Timer 2'),
('38415', '0', '6', '0', '59', '0', '100', '0', '2', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Timer Trigger - Speech'),

('38415', '0', '8', '9', '59', '0', '100', '0', '1', '0', '0', '0', '67', '1', '3000', '5000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'Timer Trigger - Reset Timer 1'),
('38415', '0', '9', '0', '61', '0', '100', '0', '0', '0', '0', '0', '29', '0', '0', '0', '0', '0', '0', '11', '38218', '200', '0', '0', '0', '0', '0', 'Link - Re-Follow Liam'),

('38415', '0', '10', '0', '60', '0', '100', '0', '5000', '5000', '5000', '5000', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Update - Set Home Pos'),
('38415', '0', '12', '0', '0', '0', '100', '0', '1000', '1000', '1000', '1000', '11', '26281', '6', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Combat - Taunt'),

('38415', '0', '13', '0', '8', '0', '100', '0', '177316', '0', '0', '0', '41', '2000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Spell Hit Banshee - Despawn'),
('38415', '0', '90', '0', '79', '0', '100', '0', '0', '38331', '15', '30000', '1', '4', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Gorerot Distance - Speak - entry tied to condition'),

-- Worgen Warriors
('38348', '0', '1', '0', '38', '0', '100', '0', '1', '1', '0', '0', '67', '1', '5000', '5000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'Data Set - Set Timer'),
('38348', '0', '2', '0', '59', '0', '100', '0', '1', '0', '0', '0', '29', '0', '0', '0', '0', '0', '0', '19', '38415', '200', '0', '0', '0', '0', '0', 'Timer Trigger - Follow Darius Crowley'),

('38348', '0', '5', '6', '59', '0', '100', '0', '1', '0', '0', '0', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Timer Trigger - Set Home'),
('38348', '0', '6', '7', '61', '0', '100', '0', '0', '0', '0', '0', '67', '1', '4000', '8000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Reset Timer'),
('38348', '0', '7', '0', '61', '0', '100', '0', '0', '0', '0', '0', '88', '3822100', '3822149', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Link - Random Actionlist for Follow'),

('38348', '0', '8', '0', '8', '0', '100', '0', '177316', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Spell Hit Banshee - Die'),

-- Gorerot SAI when summoned to pause, jump down, speak, attack
('38331', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '80', '3833100', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Summon - Actionlist'),
('38331', '0', '1', '0', '1', '0', '100', '0', '3000', '5000', '8000', '10000', '11', '71774', '4', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Combat - Cast Smash'),
('38331', '0', '2', '0', '1', '0', '100', '0', '5000', '6000', '8000', '10000', '11', '8078', '4', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Combat - Cast Thunderclap'),
('38331', '0', '3', '0', '6', '0', '100', '0', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '38218', '100', '0', '0', '0', '0', '0', 'Death - Set Data to Liam'),
('38331', '0', '4', '0', '6', '0', '100', '0', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '38415', '100', '0', '0', '0', '0', '0', 'Death - Set Data to Darius'),
('38331', '0', '5', '0', '6', '0', '100', '0', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '11', '38426', '100', '0', '0', '0', '0', '0', 'Death - Set Data to Lorna'),

-- Gorerot Actionlist
('3833100', '9', '0', '0', '0', '0', '100', '0', '2000', '2000', '0', '0', '97', '30', '25', '0', '0', '0', '0', '8', '0', '0', '0', '-1708.35', '1411.59', '21.7', '3.88', 'Jump Down'),
('3833100', '9', '1', '0', '0', '0', '100', '0', '1800', '1800', '0', '0', '11', '100627', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Explosion as landing'),
('3833100', '9', '2', '0', '0', '0', '100', '0', '2000', '2000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Speak'),
('3833100', '9', '3', '0', '0', '0', '100', '0', '0', '0', '0', '0', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Set Home Position'),
('3833100', '9', '4', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '49', '0', '0', '0', '0', '0', '0', '25', '100', '0', '0', '0', '0', '0', '0', 'Attack Closest Enemy');