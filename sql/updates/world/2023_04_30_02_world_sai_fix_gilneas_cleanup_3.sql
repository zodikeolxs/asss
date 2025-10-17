-- Gilneas Cleanup 3

-- Fix Godfrey beginner quest to only show after taking quest from Genn, or rewarded quest from Genn (in case not taken at first)
DELETE FROM `conditions` WHERE `SourceEntry`='24930' AND `SourceTypeOrReferenceId`='19';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='19', -- CONDITION_SOURCE_TYPE_QUEST_AVAILABLE
	`SourceGroup`='0', 
	`SourceEntry`='24930', -- Quest
	`SourceId`='0',
	`ElseGroup`='1', 
	`ConditionTypeOrReference`='28', -- CONDITION_QUEST_COMPLETE
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14157', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(OR) Godfrey Quest during "Old Divisions"';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='19', -- CONDITION_SOURCE_TYPE_QUEST_AVAILABLE
	`SourceGroup`='0', 
	`SourceEntry`='24930', -- Quest
	`SourceId`='0',
	`ElseGroup`='2', 
	`ConditionTypeOrReference`='8', -- CONDITION_QUESTREWARDED
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14157', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(OR) Godfrey Quest after "Old Divisions"';

-- test phase entries and conditions
-- Disable spell aura if later quest rewarded, and in map for Gilneas
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='17' -- CONDITION_SOURCE_TYPE_SPELL
	AND `SourceEntry`='59073'; -- Spell
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='17', -- CONDITION_SOURCE_TYPE_SPELL
	`SourceGroup`='0', -- phase
	`SourceEntry`='59073', -- Spell
	`SourceId`='0',
	`ElseGroup`='1',
	`ConditionTypeOrReference`='8', -- CONDITION_QUESTREWARDED
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14222', -- quest ID Last Stand for Worgen
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='1', -- not rewarded
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(AND) spell if NOT rewarded quest';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='17', -- CONDITION_SOURCE_TYPE_SPELL
	`SourceGroup`='0', -- phase
	`SourceEntry`='59073', -- Spell
	`SourceId`='0',
	`ElseGroup`='1',
	`ConditionTypeOrReference`='22', -- CONDITION_MAPID
	`ConditionTarget`='0', -- player
	`ConditionValue1`='654', -- Map ID Gilneas2
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(AND) spell if in Map 654 (Gilneas2)';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='17', -- CONDITION_SOURCE_TYPE_SPELL
	`SourceGroup`='0',
	`SourceEntry`='59073', -- Spell
	`SourceId`='0',
	`ElseGroup`='0',
	`ConditionTypeOrReference`='22', -- CONDITION_MAPID
	`ConditionTarget`='0', -- player
	`ConditionValue1`='654', -- Map ID Gilneas2
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='1',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(OR) spell if NOT in Map 654 (Gilneas2) to allow elsewhere';

-- Disable phase/spell aura when quest completed for Gilneas and inside Gilneas map
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='17' -- CONDITION_SOURCE_TYPE_SPELL
	AND `SourceEntry`='68482' -- Spell
	AND `ConditionTypeOrReference`='8' -- quest rewarded
	AND `ConditionValue1`='14386'; -- Quest
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='17' -- CONDITION_SOURCE_TYPE_SPELL
	AND `SourceEntry`='68482' -- Spell
	AND `ConditionTypeOrReference`='22' -- Condition MapID
	AND `ConditionValue1`='654'; -- Map
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='17', -- CONDITION_SOURCE_TYPE_SPELL
	`SourceGroup`='0', -- phase
	`SourceEntry`='68482', -- Spell
	`SourceId`='0',
	`ElseGroup`='1',
	`ConditionTypeOrReference`='8', -- CONDITION_QUESTREWARDED
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14386', -- quest ID Leader of the Pack for Worgen
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='1', -- not rewarded
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(AND) spell if NOT rewarded quest';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='17', -- CONDITION_SOURCE_TYPE_SPELL
	`SourceGroup`='0', -- phase
	`SourceEntry`='68482', -- Spell
	`SourceId`='0',
	`ElseGroup`='1',
	`ConditionTypeOrReference`='22', -- CONDITION_MAPID
	`ConditionTarget`='0', -- player
	`ConditionValue1`='654', -- Map ID Gilneas2
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(AND) spell if in Map 654 (Gilneas2)';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='17', -- CONDITION_SOURCE_TYPE_SPELL
	`SourceGroup`='0',
	`SourceEntry`='68482', -- Spell
	`SourceId`='0',
	`ElseGroup`='0',
	`ConditionTypeOrReference`='22', -- CONDITION_MAPID
	`ConditionTarget`='0', -- player
	`ConditionValue1`='654', -- Map ID Gilneas2
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='1',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='(OR) spell if NOT in Map 654 (Gilneas2) to allow elsewhere';

-- Define the phases for Gilneas
DELETE FROM `phase_definitions` WHERE  `zoneId`=4755 AND `entry`=1;
DELETE FROM `phase_definitions` WHERE  `zoneId`=4755 AND `entry`=14;
INSERT INTO `phase_definitions` VALUES (4755, 1, 1, '', 638, 0, 0, 16, 'Worgen Start location');
INSERT INTO `phase_definitions` VALUES (4755, 14, 1, '', 0, 0, 0, 16, 'If Player has completed Quest 14222');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='23'
	AND `SourceGroup`='4755' AND `SourceEntry` IN ('14','1')
	AND `ConditionTypeOrReference`='8'
	AND `ConditionValue1`='14222';
INSERT INTO `conditions` SET
	`SourceTypeOrReferenceId`=23, -- phase definition
	`SourceGroup`=4755, -- phase id
	`SourceEntry`=14, -- zone/area id
	`SourceId`=0,
	`ElseGroup`=0,
	`ConditionTypeOrReference`=8, -- CONDITION_QUESTREWARDED
	`ConditionTarget`=0,
	`ConditionValue1`=14222, -- Quest ID
	`ConditionValue2`=0,
	`ConditionValue3`=0,
	`NegativeCondition`=0,
	`ErrorTextId`=0,
	`ScriptName`='',
	`Comment`='Gilneas phase with forsaken if quest 14222 Last Stand rewarded';
INSERT INTO `conditions` SET
	`SourceTypeOrReferenceId`=23, -- phase definition
	`SourceGroup`=4755, -- phase id
	`SourceEntry`=1, -- zone/area id
	`SourceId`=0,
	`ElseGroup`=0,
	`ConditionTypeOrReference`=8, -- CONDITION_QUESTREWARDED
	`ConditionTarget`=0,
	`ConditionValue1`=14222, -- Quest ID
	`ConditionValue2`=0,
	`ConditionValue3`=0,
	`NegativeCondition`=1, -- marked neg
	`ErrorTextId`=0,
	`ScriptName`='',
	`Comment`='Gilneas beginning phase if quest 14222 Last Stand has not been rewarded';

UPDATE `creature` SET `phaseMask`='2',`modelid`='36772' WHERE `id`='35118'; -- clean up Bloodfang worgen phase issue and match others
UPDATE `creature` SET `phaseMask`='6' WHERE `id`='35753'; -- Krennan in tree, lock away from phase 1
UPDATE `creature` SET `spawndist`='1',`MovementType`='1' WHERE `id`='35505'; -- Bloodfang rippers move around a bit to stir aggro/interaction with guards

-- Add missing NPCs (afflicted gilneans and guards)
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1773.87, 1514.49, 24.5196, 2.92882, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1775.55, 1510.56, 23.86, 2.92882, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1775.98, 1508.56, 23.6883, 2.92882, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1782.63, 1516.34, 21.0116, 2.92882, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1782.29, 1509.24, 21.0947, 3.18957, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1785.05, 1506.69, 20.2548, 3.18957, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1787.92, 1507.64, 19.7826, 2.822, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1763.62, 1506.79, 26.2232, 4.44463, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1760.97, 1467.61, 21.4847, 4.70225, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1757.81, 1474.34, 22.6647, 1.35095, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1762.6, 1474.1, 22.7446, 3.32701, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50471, 654, 4755, 4757, 1, 11, '', 0, 0, -1763, 1479.03, 23.7136, 4.79414, 300, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50474, 654, 4755, 4757, 1, 11, '', 0, 1, -1791.72, 1510.49, 19.7823, 0.0982418, 300, 0, 0, 432, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50474, 654, 4755, 4757, 1, 11, '', 0, 1, -1790.49, 1508.73, 19.7823, 0.0982418, 300, 0, 0, 432, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 50474, 654, 4755, 4757, 1, 11, '', 0, 1, -1790.26, 1518.47, 20.2773, 5.70284, 300, 0, 0, 432, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Update afflicted gilnean/guards for consistency
UPDATE `creature` SET `phaseMask`='8' WHERE `id` IN ('50474','50471');

-- remove extra Crowley NPC, shouldn't be needed. used elsewhere to start movie for gilneas to duskhaven in quest Last Stand 14222
-- Backup INSERT INTO `creature` VALUES (149745, 35566, 654, 4755, 4758, 1, 8, '', 0, 0, -1735.15, 1650.35, 20.4926, 1.04155, 300, 0, 0, 2178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`='149745';

-- Koroth at Duskhaven update to be in multiple phases 8192 + 16384
UPDATE `creature` SET `phaseMask`='24576' WHERE `guid`='149282';

-- update Granny's cat to be in the correct phase
UPDATE `creature` SET `phaseMask`='16384' WHERE `guid`='149276';

-- remove extra NPC Marie Allen vendor by carriage
DELETE FROM `creature` WHERE `guid`='148762';

-- fix phaseMask for NPCs @ carriage and carriage itself
UPDATE `creature` SET `phaseMask`='25601' WHERE `guid` IN ('148984','149056','148940','148528','148529','148523','148526','149389');

-- Fix NPC location so not inside carriage
REPLACE INTO `creature` VALUES (148529, 44460, 654, 4714, 6545, 1, 25601, '', 29290, 0, -1664.92, 2533.57, 97.8476, 4.33171, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Fix phaseMask for crocodiles/survivors 
UPDATE `creature` SET `phaseMask`='29697' WHERE `areaId`='4714' AND `id` IN ('37067','36882');