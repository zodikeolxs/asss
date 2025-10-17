-- Add a notification as menu option will be unavailable if NPC has aura from last battle being started
UPDATE broadcast_text SET `Text`='The time to take back Gilneas City is at hand.\n\n If you don\'t see an option to start the battle, then there is one already taking place or you do not have the quest. Please wait a while and ask me again.'
	WHERE `ID`='38483';
UPDATE broadcast_text_locale SET `Text_lang`='The time to take back Gilneas City is at hand.\n\n If you don\'t see an option to start the battle, then there is one already taking place or you do not have the quest. Please wait a while and ask me again.'
	WHERE `ID`='38483' AND `locale`='enUS';