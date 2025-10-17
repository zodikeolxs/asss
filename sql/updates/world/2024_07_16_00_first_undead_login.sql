SET @ENTRY      := 49044;
SET @SOURCETYPE := 0;

UPDATE quest_template SET questtype=2, flags=0 WHERE id=24959;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `BroadcastTextID`) VALUES
(@ENTRY, 0, 0, '¡Inclínate ante tu nuevo amo!', 14, 100, 45114),
(@ENTRY, 0, 1, '¡Levántate y destruye a nuestros enemigos!', 14, 100, 45115),
(@ENTRY, 0, 2, '¡Levántate, $n! ¡Conviértete en un Desolado!', 14, 100, 45091),
(@ENTRY, 1, 0, 'CORRE!', 12, 100, 45185),
(@ENTRY, 1, 1, 'Por aquí, $n. Los tomaremos por sorpresa.', 12, 100, 45193),
(@ENTRY, 1, 2, 'A través de mí, la Reina Banshee ve todo...', 12, 100, 45099);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,@SOURCETYPE,0,1,19,0,100,0,24959,0,0,0,86,73524,0,7,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Agatha - On quest 24959 accept revive player"),
(@ENTRY,@SOURCETYPE,1,2,61,0,100,0,0,0,0,0,28,73523,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Agatha - Remove aura to player"),
(@ENTRY,@SOURCETYPE,2,0,61,0,100,0,0,0,0,0,1,0,1000,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Agatha - Talk to action invoker"),
(@ENTRY,@SOURCETYPE,3,0,52,0,100,0,0,49044,0,0,1,1,3000,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Agatha - On text over say text 1");