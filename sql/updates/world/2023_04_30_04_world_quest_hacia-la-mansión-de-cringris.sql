/* template del npc que da la quest */
DELETE FROM `creature_template` WHERE `entry`=36452;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `MaxVisible`, `ScriptName`) VALUES 
(36452, 0, 10, 10, 0, 0, 0, 0, 0, 0, 2163, 3, 0, 1, 1.38571, 1.14286, 1, 24.7, 32.3, 0, 80, 1, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '');

/* llamar al caballo luego de aceptar la mision */
DELETE FROM `smart_scripts` WHERE `entryorguid`=36452;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36452, 0, 0, 0, 19, 0, 100, 0, 14465, 0, 0, 0, 85, 72772, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - On Quest Accept - Summon Horse');

/* template del npc invocado 38765 en la quest */
DELETE FROM `creature_template` WHERE `entry`=38765;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `MaxVisible`, `ScriptName`) VALUES 
(38765, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 0, 0, 1, 1.14286, 1.14286, 1, 1, 2, 0, 0, 1, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_wdb` WHERE `Entry`=38765;
INSERT INTO `creature_template_wdb` (`Entry`, `Name1`, `Name2`, `Name3`, `Name4`, `NameAlt1`, `NameAlt2`, `NameAlt3`, `NameAlt4`, `Title`, `TitleAlt`, `CursorName`, `TypeFlags`, `TypeFlags2`, `Type`, `Family`, `Classification`, `KillCredit1`, `KillCredit2`, `VignetteID`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `HpMulti`, `PowerMulti`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `QuestItem7`, `QuestItem8`, `QuestItem9`, `QuestItem10`, `MovementInfoID`, `RequiredExpansion`, `FlagQuest`, `VerifiedBuild`) VALUES 
(38765, 'Stout Mountain Horse', '', '', '', '', '', '', '', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 65, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 177, 0, 0, 22566);

DELETE FROM `creature_template_addon` WHERE `entry`=38765;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38765, 9999990, 0, 0, 0, 0, NULL);

/* Updates */

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38765;
UPDATE `creature_template` SET `VehicleId`=542 WHERE  `entry`=38765;
UPDATE `creature_template` SET `unit_flags`=8 WHERE  `entry`=38765;

/* SmartAI*/
DELETE FROM `smart_scripts` WHERE `entryorguid`=38765;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(38765, 0, 0, 0, 27, 0, 100, 0, 0, 0, 0, 0, 53, 1, 38765, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stout Mountain Horse - On Passenger Boarded - Start WP'),
(38765, 0, 1, 0, 40, 0, 100, 0, 15, 0, 0, 0, 28, 46598, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stout Mountain Horse - On WP Reached 15 - Remove Passenger'),
(38765, 0, 2, 0, 40, 0, 100, 0, 3, 0, 0, 0, 54, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stout Mountain Horse - On WP Reached 3 - WP Pause (1000 ms)'),
(38765, 0, 3, 0, 40, 0, 100, 0, 3, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 166783, 196863, 0, 0, 0, 0, 0, 'Stout Mountain Horse - On WP Reached 3 - Open Gate'),
(38765, 0, 5, 0, 40, 0, 100, 0, 13, 0, 0, 0, 54, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stout Mountain Horse - On WP Reached 13 - WP Pause (1000 ms)'),
(38765, 0, 6, 0, 40, 0, 100, 0, 13, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 166784, 196864, 0, 0, 0, 0, 0, 'Stout Mountain Horse - On WP Reached 13 - Open Gate');


/* Waypoint */

DELETE FROM `waypoints` WHERE `entry`=38765;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(38765, 1, -1870.36, 2282.73, 42.32, 'Stout Mountain Horse'),
(38765, 2, -1852.05, 2302.51, 41.83, 'Stout Mountain Horse'),
(38765, 3, -1829.29, 2323.74, 37.55, 'Stout Mountain Horse'),
(38765, 4, -1818.32, 2332.8, 36.37, 'Stout Mountain Horse'),
(38765, 5, -1801.58, 2344.71, 35.77, 'Stout Mountain Horse'),
(38765, 6, -1792.48, 2352.44, 36.52, 'Stout Mountain Horse'),
(38765, 7, -1787.74, 2359.6, 38, 'Stout Mountain Horse'),
(38765, 8, -1781.81, 2383.18, 43.27, 'Stout Mountain Horse'),
(38765, 9, -1777.55, 2423.56, 55.68, 'Stout Mountain Horse'),
(38765, 10, -1770.01, 2447.47, 62.25, 'Stout Mountain Horse'),
(38765, 11, -1754.47, 2464.13, 69.36, 'Stout Mountain Horse'),
(38765, 12, -1710.82, 2466.15, 82.81, 'Stout Mountain Horse'),
(38765, 13, -1691.46, 2493.66, 95.2, 'Stout Mountain Horse'),
(38765, 14, -1682.62, 2507.22, 97.79, 'Stout Mountain Horse'),
(38765, 15, -1669.61, 2519.56, 97.89, 'Stout Mountain Horse');
