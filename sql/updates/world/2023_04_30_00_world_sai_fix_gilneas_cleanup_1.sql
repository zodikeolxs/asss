-- Gilneas Cleanup part 1 (Intro to Duskhaven area)

-- Update NPC auras
UPDATE `creature_template_addon` SET `auras`='228659' WHERE `entry` IN ('39095','34863'); -- better feign death
UPDATE `creature_template_addon` SET `auras`='89319' WHERE `entry` IN ('34851','44086'); -- quest invisibility 22 (matches some earlier phase NPCs)

-- Fix movement
UPDATE `creature` SET `spawndist`='0',`MovementType`='0' WHERE `guid`='148461';

-- Update NPCs to enable SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN ('34851','44086');

-- Panicked Citizen add text for those at gate (44086)
DELETE FROM `creature_text` WHERE `entry`='44086'; 
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('44086','0','0',"What's going on? I thought I saw something on the rooftops.",'12','0','100','0','0','0','0','0','0','0',"Panicked Citizen random speech"),
('44086','0','1',"You can't do this to us!",'12','0','100','0','0','0','0','0','0','0',"Panicked Citizen random speech");

-- Gilneas City Guard 34864 random text response @ gate
DELETE FROM `creature_text` WHERE `entry`='34864'; 
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('34864','0','0',"It isn't safe to leave, there's something lurking out there in the woods.",'12','0','100','0','0','0','0','0','0','0',"Gate Guard random speech"),
('34864','0','1',"Stay calm. We have everything under control.",'12','0','100','0','0','0','0','0','0','0',"Gate Guard random speech"),
('34864','0','2',"No one's allowed to leave. Prince Liam's orders.",'12','0','100','0','0','0','0','0','0','0',"Gate Guard random speech");

-- Gilneas City Guard/Liam changed to SAI, remove script
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry` IN ('34850','34864'); -- old script npc_gilneas_city_guard_phase1, npc_prince_liam_greymane_phase1

-- Relocated Panicked citizens for waypoints
REPLACE INTO `creature` VALUES (148431, 34851, 654, 4755, 4756, 1, 1, '', 30214, 0, -1573.94, 1381.89, 36.9943, 0.0861113, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148432, 34851, 654, 4755, 4756, 1, 1, '', 30217, 0, -1537.36, 1443.61, 36.2785, 4.66342, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148463, 34851, 654, 4755, 4756, 1, 1, '', 0, 0, -1562.42, 1409.64, 36.5509, 0.0295744, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148466, 34851, 654, 4755, 4756, 1, 1, '', 0, 0, -1463.95, 1444.01, 36.495, 4.77338, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148486, 34851, 654, 4755, 4756, 1, 1, '', 0, 0, -1399.7, 1442.34, 35.556, 4.52755, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `waypoints` WHERE `entry`='148431';
INSERT INTO `waypoints` VALUES
('148431','1','-1570.402466','1383.250977','36.999767',"Panicked Citizen"),
('148431','2','-1569.367432','1387.213013','36.396233',"Panicked Citizen"),
('148431','3','-1446.535767','1389.790894','35.556164',"Panicked Citizen"),
('148431','4','-1410.709473','1377.359009','35.555946',"Panicked Citizen"),
('148431','5','-1399.430664','1402.174194','35.556377',"Panicked Citizen"),
('148431','6','-1395.245728','1403.056885','36.135212',"Panicked Citizen end point");

DELETE FROM `waypoints` WHERE `entry`='148432';
INSERT INTO `waypoints` VALUES
('148432','1','-1535.928223','1431.563477','35.55',"Panicked Citizen"),
('148432','2','-1502.543823','1426.477661','35.55',"Panicked Citizen"),
('148432','3','-1502.763916','1348.338135','35.55',"Panicked Citizen"),
('148432','4','-1404.385254','1372.714478','35.55',"Panicked Citizen"),
('148432','5','-1405.666748','1418.090210','35.55',"Panicked Citizen"),
('148432','6','-1548.304443','1421.534302','35.55',"Panicked Citizen"),
('148432','7','-1558.489624','1339.465942','35.55',"Panicked Citizen"),
('148432','8','-1575.477783','1335.695190','36',"Panicked Citizen end point");

DELETE FROM `waypoints` WHERE `entry`='148463';
INSERT INTO `waypoints` VALUES
('148463','1','-1553.640259','1410.436279','35.55',"Panicked Citizen"),
('148463','2','-1554.308594','1332.957397','35.55',"Panicked Citizen"),
('148463','3','-1445.017700','1361.340820','35.55',"Panicked Citizen"),
('148463','4','-1438.773926','1392.054199','35.55',"Panicked Citizen"),
('148463','5','-1492.469238','1394.129883','35.55',"Panicked Citizen"),
('148463','6','-1493.034180','1422.159180','35.55',"Panicked Citizen"),
('148463','7','-1469.525391','1426.486084','35.55',"Panicked Citizen"),
('148463','8','-1464.200439','1443.155762','36',"Panicked Citizen end point");

DELETE FROM `waypoints` WHERE `entry`='148466';
INSERT INTO `waypoints` VALUES
('148466','1','-1463.249878','1429.910278','35.55',"Panicked Citizen"),
('148466','2','-1444.676758','1423.184448','35.55',"Panicked Citizen"),
('148466','3','-1443.967529','1364.486572','35.55',"Panicked Citizen"),
('148466','4','-1499.303833','1344.568237','35.55',"Panicked Citizen"),
('148466','5','-1504.573364','1395.149414','35.55',"Panicked Citizen"),
('148466','6','-1551.738892','1393.629395','35.55',"Panicked Citizen"),
('148466','7','-1551.325439','1334.026611','35.55',"Panicked Citizen"),
('148466','8','-1491.985474','1343.548706','35.55',"Panicked Citizen"),
('148466','9','-1486.648804','1335.213379','35.6',"Panicked Citizen end point");

DELETE FROM `waypoints` WHERE `entry`='148486';
INSERT INTO `waypoints` VALUES
('148486','1','-1404.896118','1381.364746','35.555950',"Panicked Citizen"),
('148486','2','-1413.092529','1373.086060','35.555927',"Panicked Citizen"),
('148486','3','-1469.516357','1350.734009','35.556065',"Panicked Citizen"),
('148486','4','-1548.069458','1326.426270','35.556065',"Panicked Citizen"),
('148486','5','-1554.929932','1314.659180','35.881222',"Panicked Citizen"),
('148486','6','-1550.463135','1308.992798','35.908424',"Panicked Citizen end point");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('34850','34851','44086','-148513','-149767','-148431','-148432','-148463','-148466','-148486') AND `source_type`='0';
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('3485000') AND `source_type`='9';
INSERT INTO `smart_scripts` VALUES
-- Panicked runners
('-148431', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '1', '148431', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Start WP"),
('-148431', '0', '1', '0', '11', '0', '100', '0', '0', '0', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Emote State Cower"),
('-148431', '0', '2', '0', '40', '0', '100', '0', '6', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "WP Reached - Despawn"),
('-148432', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '1', '148432', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Start WP"),
('-148432', '0', '1', '0', '11', '0', '100', '0', '0', '0', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Emote State Cower"),
('-148432', '0', '2', '0', '40', '0', '100', '0', '8', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "WP Reached - Despawn"),
('-148463', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '1', '148463', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Start WP"),
('-148463', '0', '1', '0', '11', '0', '100', '0', '0', '0', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Emote State Cower"),
('-148463', '0', '2', '0', '40', '0', '100', '0', '8', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "WP Reached - Despawn"),
('-148466', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '1', '148466', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Start WP"),
('-148466', '0', '1', '0', '11', '0', '100', '0', '0', '0', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Emote State Cower"),
('-148466', '0', '2', '0', '40', '0', '100', '0', '9', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "WP Reached - Despawn"),
('-148486', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '1', '148486', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Start WP"),
('-148486', '0', '1', '0', '11', '0', '100', '0', '0', '0', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Emote State Cower"),
('-148486', '0', '2', '0', '40', '0', '100', '0', '6', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "WP Reached - Despawn"),
-- Panicked Citizens
('34851', '0', '0', '0', '9', '0', '100', '1', '0', '5', '0', '0', '31', '1', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Set Random Phase on Range"),
('34851', '0', '1', '2', '9', '1', '100', '1', '0', '5', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Play Emote Fear on Range"),
('34851', '0', '2', '3', '61', '1', '100', '1', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Stop Attack on Range"),
('34851', '0', '3', '4', '61', '1', '100', '1', '0', '0', '0', '0', '4', '14993', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Play Sound Male on Range"),
('34851', '0', '4', '5', '61', '1', '100', '1', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Stop Move on Range"),
('34851', '0', '5', '0', '61', '1', '100', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Cast Say on Range"),
('34851', '0', '6', '0', '0', '1', '100', '0', '20000', '20000', '40000', '40000', '4', '14993', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Play Sound Male Scream on Repeat"),
('34851', '0', '7', '8', '7', '1', '100', '1', '0', '0', '0', '0', '17', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Reset Emote on Evade"),
('34851', '0', '8', '0', '61', '1', '100', '1', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Reset Phase on Evade"),
('34851', '0', '9', '0', '6', '1', '100', '1', '0', '0', '0', '0', '17', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Reset Emote on Death"),
('34851', '0', '10', '11', '9', '2', '100', '1', '0', '5', '0', '0', '11', '52716', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Cast Cornered and Enraged! on Range"),
('34851', '0', '11', '12', '61', '2', '100', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Say Text on Range"),
('34851', '0', '12', '13', '61', '2', '100', '1', '0', '0', '0', '0', '20', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Start Attack on Range"),
('34851', '0', '13', '0', '61', '2', '100', '1', '0', '0', '0', '0', '21', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Start Move on Range"),
('34851', '0', '14', '0', '7', '2', '100', '1', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Reset Phase on Evade"),
('34851', '0', '15', '16', '9', '4', '100', '1', '0', '0', '0', '0', '11', '52716', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Cast Terrified on Range"),
('34851', '0', '16', '17', '61', '4', '100', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Say Text on Range"),
('34851', '0', '17', '18', '61', '4', '100', '1', '0', '0', '0', '0', '21', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Start Move on Range"),
('34851', '0', '18', '0', '61', '4', '100', '1', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Stop Attack on Range"),
('34851', '0', '19', '20', '0', '4', '100', '0', '15000', '15000', '30000', '30000', '4', '14993', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Play Sound Male Scream on Repeat"),
('34851', '0', '20', '0', '61', '4', '100', '0', '15000', '15000', '30000', '30000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Say Text on Repeat"),
('34851', '0', '21', '22', '0', '4', '100', '1', '20000', '20000', '0', '0', '21', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Stop Move on Repeat"),
('34851', '0', '22', '0', '61', '4', '100', '1', '20000', '20000', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Play Emote Fear on Repeat"),
('34851', '0', '23', '24', '7', '4', '100', '1', '0', '0', '0', '0', '17', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Reset Emote on Evade"),
('34851', '0', '24', '0', '61', '4', '100', '1', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Reset Phase on Evade"),
('34851', '0', '25', '0', '6', '4', '100', '1', '0', '0', '0', '0', '17', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Reset Emote on Death"),
('34851', '0', '26', '0', '11', '0', '100', '0', '0', '0', '0', '0', '17', '431', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn Phase 1 - Emote State Cower"),
('34851', '0', '27', '0', '60', '0', '10', '0', '30000', '90000', '30000', '90000', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Update Phase 1 - Random Text"),
-- Liam speech
('34850', '0', '0', '0', '60', '0', '100', '1', '90000', '90000', '60000', '60000', '80', '3485000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Speech actionlist"),
('3485000', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Speech 0"),
('3485000', '9', '1', '0', '0', '0', '100', '0', '15000', '15000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Speech 1"),
('3485000', '9', '2', '0', '0', '0', '100', '0', '15000', '15000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Speech 2"),
-- Panicked Citizesn @ Gate 44086 random emotes (guid 148513 needs speech randomly)
('44086', '0', '0', '0', '60', '0', '100', '0', '1000', '3000', '1000', '3000', '10', '5', '6', '14', '18', '20', '430', '1', '0', '0', '0', '0', '0', '0', '0', "Update - Random Emote"),
('-148513', '0', '0', '1', '60', '0', '100', '0', '25000', '45000', '25000', '45000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Update - Random Text to Guard"),
('-148513', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '10', '149767', '34864', '0', '0', '0', '0', '0', "Link - Set Data for Guard Response"),
('-148513', '0', '2', '0', '60', '0', '100', '0', '1000', '3000', '1000', '3000', '10', '5', '6', '14', '18', '20', '430', '1', '0', '0', '0', '0', '0', '0', '0', "Update - Random Emote"),
-- Gilneas City Guard guid 149767 needs to be mounted @ gate with random text responses when citizen above speaks
('-149767', '0', '0', '0', '38', '0', '100', '0', '1', '1', '0', '0', '67', '1', '6000', '6000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', "Data Set - Timer"),
('-149767', '0', '1', '0', '59', '0', '100', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Timer Trigger - Random Response"),
('-149767', '0', '2', '0', '11', '0', '100', '0', '0', '0', '0', '0', '43', '5403', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Set Mounted");


-- After 1st quest done, Something's amiss active

-- condition for supply crates only interactable during quest
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry`='195306';
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='-195306'; -- reference template
INSERT INTO `conditions` SET 
    `SourceTypeOrReferenceId`='-195306', -- reference object template
    `SourceGroup`='0', -- 0 for reference template
    `SourceEntry`='0', -- 0 for reference template
    `SourceId`='0',
    `ElseGroup`='0',
    `ConditionTypeOrReference`='9', -- CONDITION_QUESTTAKEN
    `ConditionTarget`='0', -- player
    `ConditionValue1`='14094', -- quest ID
    `ConditionValue2`='0', -- always 0
    `ConditionValue3`='0', -- always 0
    `NegativeCondition`='0',
    `ErrorTextId`='0',
    `ScriptName`='',
    `Comment`="Loot Supply crates while quest is active";

-- Knocking on doors should spawn Frightened Citizen 35836, chance of worgen 35660 to spawn+attack
DELETE FROM `waypoints` WHERE `entry`='35836';
INSERT INTO `waypoints` VALUES
('35836','1','-1496','1403','35.55',"Frightened Citizen running from home");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN ('35836','35660');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('35836','35660') AND `source_type`='0';
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('195327') AND `source_type`='1' AND `id` > '0'; -- adds more to existing door reaction
INSERT INTO `smart_scripts` VALUES
-- Frightened Citizens
('35836', '0', '0', '1', '11', '0', '100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Speech"),
('35836', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '53', '1', '35836', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Run waypoint"),
('35836', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '3000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Set Despawn"),
-- Worgen spawned by Frightened Citizen
('35660', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '49', '0', '0', '0', '0', '0', '0', '21', '40', '0', '0', '0', '0', '0', '0', "Spawn - Attack player"),
-- Door knocked on
('195327', '1', '1', '2', '64', '0', '100', '0', '0', '0', '0', '0', '12', '35836', '8', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Activation - Spawn Frightened Citizen"),
('195327', '1', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '67', '1', '1500', '1500', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', "Activation - Set Timer"),
('195327', '1', '3', '0', '59', '0', '40', '0', '1', '0', '0', '0', '12', '35660', '6', '30000', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Timer Trigger - 40% Chance Spawn Worgen");

-- Gwen 35840 for turn in Royal Orders 14099
DELETE FROM `creature_text` WHERE `entry`='35840'; 
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('35840','0','0',"We must stick together to survive. Move around in groups.",'12','0','100','0','0','0','0','0','0','0',"Gwen by bridge"),
('35840','0','1',"The king's men will protect us. We're almost there.",'12','0','100','0','0','0','0','0','0','0',"Gwen by bridge"),
('35840','0','2',"The plan is to keep moving south. We can't go back to the Merchant Square. It's not safe.",'12','0','100','0','0','0','0','0','0','0',"Gwen by bridge");

UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`='35840'; -- old script npc_gwen_armstead_p2
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('35840') AND `source_type`='0';
INSERT INTO `smart_scripts` VALUES
-- Gwen random speech
('35840', '0', '0', '0', '60', '0', '100', '0', '30000', '45000', '30000', '45000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Update - Random speech");

-- Relocate Warrior Trainer
REPLACE INTO `creature` VALUES (148527, 35839, 654, 4755, 4757, 1, 2, '', 29935, 0, -1688, 1328.48, 16.0717, 1.46388, 60, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Remove training dummy's
DELETE FROM `creature` WHERE `guid` IN ('243174','243175');

-- Add some missing Bloodfang Worgens
REPLACE INTO `creature` VALUES (280340786, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1691.38, 1338.26, 15.1352, 3.32727, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340785, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1690.19, 1336.44, 15.1352, 4.3208, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340788, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1680.11, 1338.5, 15.1352, 4.05927, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340787, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1686.2, 1336.93, 15.1352, 4.21085, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340789, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1689.16, 1347.2, 15.1334, 4.34831, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340790, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1683.92, 1346.93, 15.1025, 4.66247, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340791, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1672.73, 1340.59, 15.1354, 4.66247, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340792, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1664.91, 1349.08, 15.1348, 2.04081, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340853, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1663.85, 1358.84, 15.1348, 2.43193, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340854, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1681.81, 1356.95, 15.1355, 3.40269, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (280340855, 35118, 654, 4755, 4757, 1, 3, '', 0, 0, -1689.66, 1345.03, 15.1341, 4.10955, 60, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- King Greymane 35112 and Lord Godfrey 35115 update to SAI for quest reactions
DELETE FROM `creature_text` WHERE `entry` IN ('35112','35115'); 
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('35115','0','0',"We ought to leave Crowley in prison with those beasts!",'12','0','100','1','0','0','0','0','0','0',"Godfrey Speech with quest Accept from Greymane"),
('35112','0','0',"Enough! I've made up my mind. We need Crowley on our side.",'12','0','100','1','0','0','0','0','0','0',"Greymane Speech response to Godfrey");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN ('35112','35115');
REPLACE INTO `smart_scripts` VALUES
-- King
('35112', '0', '0', '1', '64', '0', '100', '1', '0', '0', '0', '0', '45', '1', '1', '0', '0', '0', '0', '10', '148561', '35115', '0', '0', '0', '0', '0', "Quest Accept - Set Data to Lord Godfrey"),
('35112', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '67', '1', '8000', '8000', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Create Timer"),
('35112', '0', '2', '0', '59', '0', '100', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Timer Trigger - Speech"),
-- Godfrey
('35115', '0', '0', '0', '38', '0', '100', '1', '1', '1', '0', '0', '67', '1', '3000', '3000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', "Data Set - Set Timer"),
('35115', '0', '1', '0', '59', '0', '100', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Timer Trigger - Speech");


-- Quest 14154 By the Skin of His Teeth, Sean Dempsey needs to stay still -- cannot use SAI or server crashes when accepting quest. Will just add aura...
UPDATE `creature_template_addon` SET `auras`='218298' WHERE `entry`='35081';

-- Slain watchman feign death, phase fix (visible on retail)
REPLACE INTO `creature_template_addon` VALUES ('36205','0','0','0','0','0','228659');
UPDATE `creature` SET `phaseMask`='5120' WHERE `guid`='149075'; -- old 4096

-- This Liam needs to be laying down
REPLACE INTO `creature_template_addon` VALUES ('36190','0','0','0','0','0','218298');

-- Duskhaven phase issue with Mandrake gobject
UPDATE `gameobject` SET `phaseMask`='1206' WHERE `guid`='47155'; -- old phaseMask 182

-- Accepting quest from Slain Watchman should spawn Forsaken Assassin
UPDATE `quest_template` SET `StartScript`='14321' WHERE `id`='14321';

DELETE FROM `quest_start_scripts` WHERE `id`='14321';
INSERT INTO `quest_start_scripts` VALUES ('14321','2','10','36207','120000','0','-1923','2390','31','1.5');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='36207';
REPLACE INTO `smart_scripts` VALUES
('36207', '0', '0', '1', '11', '0', '100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Speech"),
('36207', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '49', '0', '0', '0', '0', '0', '0', '21', '40', '0', '0', '0', '0', '0', '0', "Link - Attack closest player");

-- Quests need chained together better
-- UPDATE `quest_template` SET `RewardNextQuest`='0' WHERE `id`='14320';
UPDATE `quest_template_addon` SET `NextQuestID`='14321' WHERE `ID`='14320';
UPDATE `quest_template_addon` SET `NextQuestID`='14347' WHERE `ID`='14336';
UPDATE `quest_template_addon` SET `PrevQuestID`='14336' WHERE `ID`='14348';
UPDATE `quest_template_addon` SET `PrevQuestID`='14367' WHERE `ID`='14368';
UPDATE `quest_template_addon` SET `PrevQuestID`='14367' WHERE `ID`='14382';

-- move NPC to correct place
REPLACE INTO `creature` VALUES (149309, 36290, 654, 4714, 4792, 1, 24576, '', 0, 0, -1874.54, 2527.1, -6.48666, 1.22074, 300, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Quest 14348 update with explosion on impact
DELETE FROM `smart_scripts` WHERE `entryorguid`='36231' AND `id`='1' AND `link`='0';
UPDATE `smart_scripts` SET `event_flags`='1' WHERE `entryorguid`='36231' AND `event_type`='8';
REPLACE INTO `smart_scripts` VALUES
('36231', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '41', '10', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Despawn"),
('36231', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '11', '100627', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Explosion"),
('36231', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '11', '70786', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Explosion");

-- Set condition to not react unless invoker quest is active
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='22' AND `SourceGroup`='1' AND `SourceEntry` IN ('36288','36287','36289');
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='22', -- CONDITION_SOURCE_TYPE_SMART_EVENT
	`SourceGroup`='1', -- SAI ID
	`SourceEntry`='36287', -- SAI Entry
	`SourceId`='0', -- SAI Source Type
	`ElseGroup`='1',
	`ConditionTypeOrReference`='9', -- CONDITION_QUESTTAKEN
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14368', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Smart action if quest active';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='22', -- CONDITION_SOURCE_TYPE_SMART_EVENT
	`SourceGroup`='1', -- SAI ID
	`SourceEntry`='36288', -- SAI Entry
	`SourceId`='0', -- SAI Source Type
	`ElseGroup`='1',
	`ConditionTypeOrReference`='9', -- CONDITION_QUESTTAKEN
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14368', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Smart action if quest active';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='22', -- CONDITION_SOURCE_TYPE_SMART_EVENT
	`SourceGroup`='1', -- SAI ID
	`SourceEntry`='36289', -- SAI Entry
	`SourceId`='0', -- SAI Source Type
	`ElseGroup`='1',
	`ConditionTypeOrReference`='9', -- CONDITION_QUESTTAKEN
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14368', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Smart action if quest active';

-- Remove extra James NPC, update existing to move around
DELETE FROM `creature` WHERE `guid`='148958';
UPDATE `creature` SET `spawndist`='2',`MovementType`='1' WHERE `guid`='149156';

-- Add waypoint for Ashley 36288
DELETE FROM `waypoints` WHERE `entry` IN ('36287','36288');
INSERT INTO `waypoints` VALUES
('36288','1','-1927','2559','12.7',"Ashley run"),
('36288','2','-1928.7','2554.4','12.7',"Ashley run"),
('36288','3','-1923.38','2552.64','12.7',"Ashley run"),
('36288','4','-1919.1','2563.11','3.5',"Ashley run");
-- Add waypoint for James/Cynthia
INSERT INTO `waypoints` VALUES
('36287','1','-1885','2541','1.7',"Cynthia\James run");

UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry` IN ('36288','36287','36289'); -- old scripts npc_james_36288 npc_cynthia_36287 npc_ashley_36289

DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('36288','36287','36289') AND `source_type`='0';
INSERT INTO `smart_scripts` VALUES
('36287', '0', '0', '1', '64', '0', '100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Gossip activatate - Speech"),
('36287', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '53', '1', '36287', '0', '0', '10', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Start waypoint"),
('36287', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '36287', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', "Link - Quest credit"),
('36288', '0', '0', '1', '64', '0', '100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Gossip activatate - Speech"),
('36288', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '53', '1', '36288', '0', '0', '10', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Start waypoint"),
('36288', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '36288', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', "Link - Quest credit"),
('36289', '0', '0', '1', '64', '0', '100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Gossip activatate - Speech"),
('36289', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '53', '1', '36287', '0', '0', '10', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Start waypoint"),
('36289', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '36289', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', "Link - Quest credit");

-- Quest https://www.wowhead.com/quest=14395/gasping-for-breath

DELETE FROM `quest_start_scripts` WHERE `id`='14395';
UPDATE `quest_template` SET `StartScript`='0' WHERE `ID`='14395';

UPDATE `creature` SET `dynamicflags`='2' WHERE `id`='385' AND `areaId`='4792' AND `phaseMask`='8192'; -- horses name to grey
UPDATE `creature_equip_template` SET `ItemID1`='0' WHERE `CreatureID`='385' AND `ID`='1'; -- remove swords from horses

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='36451';
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='',`npcflag`='16777216',`VehicleId`='0',`unit_flags`='0',`InhabitType`='3' WHERE `entry`='36440'; -- old script watchman_36440, old flag 1,0

DELETE FROM `creature_template_addon` WHERE `entry`='36440';
INSERT INTO `creature_template_addon` VALUES ('36440','0','0','0','0','0','68730'); -- drowning aura

-- Old SAI - INSERT INTO `smart_scripts` VALUES (36440, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 36450, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Give me quest credit for Gasping for breath.');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('36440','36451') AND `source_type`='0';
INSERT INTO `smart_scripts` VALUES
-- Liam - quest giver
('36451', '0', '0', '0', '60', '0', '100', '0', '500', '500', '500', '500', '11', '192420', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Update - Cast AOE for quest update trigger"),
-- Drowning Watchman
('36440', '0', '0', '1', '73', '0', '100', '0', '0', '0', '0', '0', '85', '68735', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spell Click - Cast"),
('36440', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '64', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', "Link - Store Target"),
('36440', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '29', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', "Link - Cast"),
('36440', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '11', '43785', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', "Link - Cast Rope"),
('36440', '0', '4', '0', '11', '0', '100', '0', '0', '0', '0', '0', '61', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Set Swimming"),
('36440', '0', '5', '6', '8', '0', '100', '1', '192420', '0', '0', '0', '1', '3 ', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spell Hit - Speak"),
('36440', '0', '6', '7', '61', '0', '100', '0', '0', '0', '0', '0', '33', '36450', '0', '0', '0', '0', '0', '12', '1', '0', '0', '0', '0', '0', '0', "Link - Quest Credit to Stored Target"),
('36440', '0', '7', '8', '61', '0', '100', '0', '0', '0', '0', '0', '41', '5000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Despawn"),
('36440', '0', '8', '9', '61', '0', '100', '0', '0', '0', '0', '0', '29', '0', '0', '0', '0', '0', '0', '10', '149227', '36451', '0', '0', '0', '0', '0', "Link - Stop Follow (Follow Quest NPC)"),
('36440', '0', '9', '10', '61', '0', '100', '0', '0', '0', '0', '0', '28', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Drop Auras"),
('36440', '0', '10', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '43785', '0', '0', '0', '0', '0', '12', '1', '0', '0', '0', '0', '0', '0', "Link - Drop Rope Aura from player");

-- Quest 14397 Evacuation - set others from this turn in NPC to require this first
UPDATE `quest_template_addon` SET `PrevQuestID`='14397' WHERE `ID` IN ('14398','14403','14406');

-- Quest 14401 Grandma's Cat
-- Set initial flags for Lucius
UPDATE `creature_template` SET `unit_flags`=512|256|2 WHERE `entry`='36461';

-- Granny SAI setup and text
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='36462';
DELETE FROM `creature_text` WHERE `entry`='36462';
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
('36462','0','0',"You do not mess with my kitty you son of a mongrel!",'14','0','100','5','0','0','0','0','0','0',"Grandma Wahl during quest spawn");

-- Cat remove Gossip, enable spellclick
UPDATE `creature_template` SET `npcflag`='16777216' WHERE `entry`='36459';

-- Setup condition for spellclick only when quest is active
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='22' AND `SourceGroup`='1' AND `SourceEntry`='36459';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='22', -- CONDITION_SOURCE_TYPE_SMART_EVENT
	`SourceGroup`='1', -- SAI ID +1
	`SourceEntry`='36459', -- SAI Entry
	`SourceId`='0', -- SAI Source Type
	`ElseGroup`='0',
	`ConditionTypeOrReference`='9', -- CONDITION_QUESTTAKEN
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14401', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Smart action if quest active';

-- SAI Backup

DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('36459','36461','36462') AND `source_type`='0';
INSERT INTO `smart_scripts` VALUES
-- Cat
('36459', '0', '0', '1', '73', '0', '100', '0', '60000', '60000', '0', '0', '12', '36461', '4', '60000', '0', '0', '0', '8', '0', '0', '0', '-2110', '2329', '7.4', '0.5', "Click - Summon Lucius"),
('36459', '0', '1', '0', '64', '0', '100', '0', '0', '0', '0', '0', '72', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Close Gossip"),
-- Lucius
('36461', '0', '0', '1', '11', '0', '100', '0', '0', '0', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-2106', '2334', '7.35', '6', "Spawn - Go To Pos"),
('36461', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '1', '0', '5000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Speech"),
('36461', '0', '2', '3', '52', '0', '100', '0', '0', '36461', '0', '0', '19', 512|256|2, '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Speech Over - Remove Flags"),
('36461', '0', '3', '4', '61', '0', '100', '0', '0', '0', '0', '0', '12', '36462', '4', '8000', '0', '1', '0', '8', '0', '0', '0', '-2107', '2356', '7', '5', "Link - Spawn Psycho Granny"),
('36461', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '49', '0', '0', '0', '0', '0', '0', '21', '40', '0', '0', '0', '0', '0', '0', "Link - Attack closest player"),
-- Psycho Granny
('36462', '0', '0', '1', '11', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spawn - Speech"),
('36462', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '49', '0', '0', '0', '0', '0', '0', '19', '36461', '40', '0', '0', '0', '0', '0', "Link - Attack Lucius"),

('36462', '0', '3', '4', '1', '0', '100', '0', '2000', '2000', '2000', '2000', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-2115', '2385', '8.35', '11.8', "OOC - Go To Pos for Despawn"),
('36462', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '59', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Set Run"),

('36462', '0', '5', '0', '60', '0', '100', '0', '1000', '1000', '1000', '1000', '101', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Update - Set Home");

-- Hayward Brothers quests - fix quest order
UPDATE `quest_template_addon` SET `PrevQuestID`='14403' WHERE `ID` IN ('14404','14412');

-- Quest 14416 The Hungry Ettin - Set SpellClick on horses only when quest active
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='18' AND `SourceGroup`='36540' AND `SourceEntry`='43671';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='18', -- CONDITION_SOURCE_TYPE_SPELL_CLICK_EVENT
	`SourceGroup`='36540', -- Creature
	`SourceEntry`='43671', -- Spell
	`SourceId`='0', -- Always 0
	`ElseGroup`='0',
	`ConditionTypeOrReference`='9', -- CONDITION_QUESTTAKEN
	`ConditionTarget`='0', -- player
	`ConditionValue1`='14416', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Spell click if quest active';

-- Quest 14467 Alas, Gilneas - should not be available until 14466 The King's Observatory is turned in. Should trigger cutscene 167 with Gilneas underwater on accept
UPDATE `quest_template_addon` SET `PrevQuestID`='14466' WHERE `ID`='14467';
UPDATE `quest_template_addon` SET `PrevQuestID`='14467' WHERE `ID`='24438';

-- Activate only when quest rewarded
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='-47942'; -- reference template
INSERT INTO `conditions` SET 
    `SourceTypeOrReferenceId`='-47942', -- reference object template
    `SourceGroup`='0', -- 0 for reference template
    `SourceEntry`='0', -- 0 for reference template
    `SourceId`='0',
    `ElseGroup`='1',
    `ConditionTypeOrReference`='8', -- CONDITION_QUESTREWARDED
    `ConditionTarget`='0', -- player
    `ConditionValue1`='14467', -- quest ID
    `ConditionValue2`='0', -- always 0
    `ConditionValue3`='0', -- always 0
    `NegativeCondition`='0',
    `ErrorTextId`='0',
    `ScriptName`='',
    `Comment`="Activate only when quest rewarded";

-- Fix wrong game object in place
UPDATE `gameobject` SET `id`='197334' WHERE `guid`='47942';

-- Disable interaction execpt by condition
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry`='197334';

-- Setup SAI to activate game object for cutscene
DELETE FROM `smart_scripts` WHERE `entryorguid`='36743' AND `source_type`='0';
INSERT INTO `smart_scripts` VALUES
('36743', '0', '0', '0', '20', '0', '100', '0', '14467', '0', '0', '0', '9', '29', '0', '0', '0', '0', '0', '14', '47942', '197334', '0', '0', '0', '0', '0', "Click - Activate object for cutscene");

-- Quest 24438 Exodus
-- Waypoints for coach
DELETE FROM `waypoints` WHERE `entry`='44928';
INSERT INTO `waypoints` VALUES
('44928', '1', '-1681.892', '2507.635', '97.82159', ""),
('44928', '2', '-1699.672', '2480.921', '89.98337', ""),
('44928', '3', '-1701.836', '2465.349', '84.64963', ""),
('44928', '4', '-1698.686', '2431.798', '76.17723', ""),
('44928', '5', '-1716.564', '2406.550', '64.65945', ""),
('44928', '6', '-1729.242', '2385.603', '60.41555', ""),
('44928', '7', '-1735.933', '2363.582', '62.99710', ""),
('44928', '8', '-1756.643', '2302.871', '75.27312', ""),
('44928', '9', '-1775.997', '2270.954', '82.19830', ""),
('44928', '10', '-1802.682', '2250.207', '88.20009', ""),
('44928', '11', '-1825.753', '2237.796', '89.31526', ""),
('44928', '12', '-1864.526', '2184.462', '89.31526', ""),
('44928', '13', '-1871.413', '2163.995', '89.31526', ""),
('44928', '14', '-1874.363', '2066.060', '89.31526', ""),
('44928', '15', '-1884.905', '2038.888', '89.31526', ""),
('44928', '16', '-1880.738', '1987.396', '89.31617', ""),
('44928', '17', '-1875.916', '1964.590', '89.16552', ""),
('44928', '18', '-1880.661', '1918.760', '89.14857', ""),
('44928', '19', '-1893.143', '1906.502', '89.15177', ""),
('44928', '20', '-1994.980', '1903.149', '89.28496', ""),
('44928', '21', '-2006.351', '1907.797', '88.44512', ""),
('44928', '22', '-2030.865', '1914.933', '84.85106', ""),
('44928', '23', '-2054.686', '1909.234', '77.01978', ""),
('44928', '24', '-2076.776', '1896.211', '65.13656', ""), -- 1/2 down hill
('44928', '25', '-2102.619', '1869.257', '46.36442', ""),
('44928', '26', '-2119.653', '1835.415', '30.89918', ""),
('44928', '27', '-2149.524', '1814.045', '18.16645', ""),
('44928', '28', '-2196.005', '1803.007', '12.44489', ""),
('44928', '29', '-2220.892', '1805.989', '11.66730', ""), -- quest NPC
('44928', '30', '-2297.736', '1783.966', '11.26296', ""),
('44928', '31', '-2375.670', '1704.439', '11.19381', ""),
('44928', '32', '-2393.200', '1660.524', '11.09516', "");

-- move NPCs for better visual effect
REPLACE INTO `creature` VALUES (148528, 36138, 654, 4714, 6545, 1, 8374, '', 29301, 0, -1667.39, 2532.16, 97.8476, 6.12623, 300, 0, 0, 10, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148940, 51409, 654, 4714, 6545, 1, 8374, '', 30209, 0, -1668.44, 2529.85, 97.8479, 5.92596, 300, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (148984, 43907, 654, 4714, 6545, 1, 8374, '', 29318, 0, -1672.36, 2533.19, 97.8475, 2.94932, 300, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (149056, 38853, 654, 4714, 6545, 1, 8192, '', 30289, 0, -1669.46, 2527.97, 97.8756, 5.81366, 60, 0, 0, 5, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (149390, 37946, 654, 4714, 6545, 1, 16384, '', 29317, 0, -1673.09, 2530.4, 97.8475, 3.12996, 60, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Fix/Add Harness back
INSERT INTO `creature` VALUES (NULL, 43336, 654, 4714, 6545, 1, 25601, '', 0, 0, -1670.71, 2530.31, 97.8482, 4.37639, 300, 0, 0, 1220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `vehicle_template_accessory` SET `offsetO`='3.14159' WHERE `EntryOrAura`='44928' AND `seat_id` IN ('2','3','4');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN ('44928','43336','38755');
INSERT INTO `npc_spellclick_spells` VALUES (38755, 46598, 1, 0, 1);
-- INSERT INTO `npc_spellclick_spells` VALUES (38755, 72767, 1, 0, 1);

-- Add vehicle - old 0
UPDATE `creature_template` SET `VehicleId`='0' WHERE `entry`='43336'; -- tried 907
UPDATE `creature_template` SET `VehicleId`='959' WHERE `entry`='44928';

-- Set harness & NPCs to SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN ('43336','38755');

-- remove extra object
-- Original INSERT INTO `creature` VALUES (148584, 38755, 654, 4714, 6545, 1, 8374, '', 33314, 0, -1670.69, 2530.55, 97.8546, 4.38078, 300, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`='148584';

-- Coach should only be active for Click when quest is active
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='22' AND `SourceGroup`='1' AND `SourceEntry`='44928';
INSERT INTO `conditions` SET 
	`SourceTypeOrReferenceId`='22', -- CONDITION_SOURCE_TYPE_SMART_EVENT
	`SourceGroup`='1', -- SAI ID +1
	`SourceEntry`='44928', -- SAI Entry
	`SourceId`='0', -- SAI Source Type
	`ElseGroup`='0',
	`ConditionTypeOrReference`='28', -- CONDITION_QUEST_COMPLETE
	`ConditionTarget`='0', -- player
	`ConditionValue1`='24438', -- quest ID
	`ConditionValue2`='0', -- always 0
	`ConditionValue3`='0', -- always 0
	`NegativeCondition`='0',
	`ErrorTextId`='0',
	`ScriptName`='',
	`Comment`='Smart action if quest active';

-- Original SAI - INSERT INTO `smart_scripts` VALUES (44928, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 62, 654, 0, 0, 0, 0, 0, 7, 0, 0, 0, -2210.22, 1810.17, 11.95, 3.2, 'on click - tele player');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('44928','43336','38755') AND `source_type`='0';
DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('4492800') AND `source_type`='9';
INSERT INTO `smart_scripts` VALUES
-- Carriage
('44928', '0', '0', '0', '73', '0', '100', '0', '0', '0', '0', '0', '80', '4492800', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spell Click - Actionlist"),
('44928', '0', '2', '0', '8', '0', '100', '0', '186275', '0', '0', '0', '85', '46598', '6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Spell Hit AOE Trigger - Invoke Mount spell for player"),
-- Carriage Actionlist
('4492800', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-1676', '2526', '98', '4.6', "Teleport Player to Carriage"),
('4492800', '9', '1', '0', '0', '0', '100', '0', '100', '100', '0', '0', '12', '38755', '8', '0', '0', '0', '0', '8', '0', '0', '0', '-1676', '2526', '98', '4.6', "Summon Carriage"),
('4492800', '9', '2', '0', '0', '0', '100', '0', '1500', '1500', '0', '0', '85', '186275', '6', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', "Player Cast AOE on player-self"),
('4492800', '9', '3', '0', '0', '0', '100', '0', '10', '10', '0', '0', '12', '37946', '3', '120000', '0', '0', '0', '8', '0', '0', '0', '-1676', '2526', '98', '4.6', "Summon Watchman"),
('4492800', '9', '4', '0', '0', '0', '100', '0', '10', '10', '0', '0', '12', '43907', '3', '120000', '0', '0', '0', '8', '0', '0', '0', '-1676', '2526', '98', '4.6', "Summon Watchman"),
('4492800', '9', '5', '0', '0', '0', '100', '0', '10', '10', '0', '0', '12', '43907', '3', '120000', '0', '0', '0', '8', '0', '0', '0', '-1676', '2526', '98', '4.6', "Summon Watchman"),
('4492800', '9', '6', '0', '0', '0', '100', '0', '10', '10', '0', '0', '12', '51409', '3', '120000', '0', '0', '0', '8', '0', '0', '0', '-1676', '2526', '98', '4.6', "Summon Lorna"),
('4492800', '9', '7', '0', '0', '0', '100', '0', '10', '10', '0', '0', '12', '38853', '3', '120000', '0', '0', '0', '8', '0', '0', '0', '-1676', '2526', '98', '4.6', "Summon Marie Allen"),
('4492800', '9', '8', '0', '0', '0', '100', '0', '10', '10', '0', '0', '12', '36138', '3', '120000', '0', '0', '0', '8', '0', '0', '0', '-1676', '2526', '98', '4.6', "Summon Krennan"),
('4492800', '9', '9', '0', '0', '0', '100', '0', '10', '10', '0', '0', '86', '46598', '6', '9', '37946', '3', '6', '9', '44928', '3', '6', '0', '0', '0', '0', "NPC Watchman Cast Mount to nearby Carriage"),
('4492800', '9', '10', '0', '0', '0', '100', '0', '1500', '1500', '0', '0', '86', '46598', '6', '9', '43907', '3', '6', '9', '44928', '3', '6', '0', '0', '0', '0', "NPC Watchman Cast Mount to nearby Carriage"),
('4492800', '9', '11', '0', '0', '0', '100', '0', '300', '300', '0', '0', '86', '46598', '6', '9', '43907', '3', '6', '9', '44928', '3', '6', '0', '0', '0', '0', "NPC Watchman Cast Mount to nearby Carriage"),
('4492800', '9', '12', '0', '0', '0', '100', '0', '300', '300', '0', '0', '86', '46598', '6', '9', '36138', '3', '6', '9', '44928', '3', '6', '0', '0', '0', '0', "NPC Krennan Aranis Cast Mount to nearby Carriage"),
('4492800', '9', '13', '0', '0', '0', '100', '0', '300', '300', '0', '0', '86', '46598', '6', '9', '51409', '3', '6', '9', '44928', '3', '6', '0', '0', '0', '0', "NPC Lorna Cast Mount to nearby Carriage"),
('4492800', '9', '14', '0', '0', '0', '100', '0', '300', '300', '0', '0', '86', '46598', '6', '9', '38853', '3', '6', '9', '44928', '3', '6', '0', '0', '0', '0', "NPC Marie Allen Cast Mount to nearby Carriage"),
('4492800', '9', '15', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '45', '1', '1', '0', '0', '0', '0', '9', '38755', '3', '6', '0', '0', '0', '0', "Roll that Beautiful bean footage! (waypoint start by set data)"),
-- Harness for WP
('38755', '0', '0', '1', '38', '0', '100', '0', '1', '1', '0', '0', '53', '1', '44928', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Data Set - Start WP"),
('38755', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '219', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', "Link - Ignore Pathfinding"),
('38755', '0', '2', '0', '40', '0', '100', '0', '24', '0', '0', '0', '84', '3', '0', '0', '0', '0', '0', '19', '51409', '15', '0', '0', '0', '0', '0', "WP 1/2 Down hill - Lorna Speech"),
('38755', '0', '3', '0', '40', '0', '100', '0', '29', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '21', '2', '0', '0', '-2221', '1800', '12', '1.6', "WP Quest NPC - Yeet!");