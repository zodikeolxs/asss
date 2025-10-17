/*
*
* Controller - Kathra'natir Fight Visible --> Invisible
* flags_extra=128 : 128 == Invisible NPC
*/

UPDATE creature_template SET flags_extra=128 WHERE entry=102838;