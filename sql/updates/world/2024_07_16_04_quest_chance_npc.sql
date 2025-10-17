UPDATE `creature_template` SET npcflag=npcflag|2 where entry=103410;
DELETE FROM `creature_queststarter` WHERE `id`=103410 AND `quest`=39735;
insert into `creature_queststarter` (id,quest) values 
(103410,39735);