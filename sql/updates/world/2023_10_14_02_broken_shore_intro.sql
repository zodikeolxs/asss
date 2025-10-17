UPDATE creature_template SET AIName = '', scriptname = 'npc_khadgar_intro_part_one' WHERE entry = 120215;
DELETE FROM smart_scripts WHERE entryorguid = 120215;