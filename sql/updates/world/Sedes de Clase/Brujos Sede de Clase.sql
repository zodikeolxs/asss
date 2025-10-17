-- Modificando las misiones anteriores y siguiente de la Sede de clases de los Brujos --
UPDATE `legion_world`.`quest_template_addon` SET `NextQuestID` = 44466 WHERE `ID` = 44464;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 44464, `NextQuestID` = 44479 WHERE `ID` = 44466;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 44466, `NextQuestID` = 44480 WHERE `ID` = 44479;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 44479, `NextQuestID` = 44496 WHERE `ID` = 44480;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 44480 WHERE `ID` = 44496;
UPDATE `legion_world`.`quest_template_addon` SET `NextQuestID` = 42102 WHERE `ID` = 42608;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 44682 WHERE `ID` = 42102;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 42102, `ExclusiveGroup` = 0 WHERE `ID` = 42103;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 42103, `ExclusiveGroup` = 0 WHERE `ID` = 42660;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 42103, `ExclusiveGroup` = 0 WHERE `ID` = 41785;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 42660, `ExclusiveGroup` = 0 WHERE `ID` = 41785;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 41785, `ExclusiveGroup` = 0 WHERE `ID` = 41788;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 41788, `ExclusiveGroup` = 0, `NextQuestID` = 41787 WHERE `ID` = 41787;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 41793 WHERE `ID` = 41796;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 101010 WHERE `ID` = 41795;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 43414 WHERE `ID` = 45021;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 45027 WHERE `ID` = 46020;

-- Desactivar Mision no Funcional --
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 99999 WHERE `ID` = 46131;
UPDATE `legion_world`.`quest_template_addon` SET `PrevQuestID` = 99999 WHERE `ID` = 46150;

-- Adicionar npc de quest --
INSERT INTO `legion_world`.`creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES (288215724, 103506, 1220, 7502, 7581, 1, 1, '', 0, 1, -830.699, 4405.68, 737.201, 5.41147, 300, 0, 0, 15589006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `legion_world`.`creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES (288221644, 105922, 1107, 7875, 7875, 1, 1, '', 0, 1, 3108.54, 965.769, 257.738, 6.02063, 300, 0, 0, 261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `legion_world`.`creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES (288221642, 115863, 1107, 7875, 7875, 1, 1, '', 0, 1, 3116.01, 980.33, 257.379, 3.45907, 300, 0, 0, 2494242, 1100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


