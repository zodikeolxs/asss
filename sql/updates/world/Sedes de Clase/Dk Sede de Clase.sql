-- Caballero de la Muerte Sede de Clase - Orden de misiones

-- Etapa inicial
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 40740 WHERE ID = 40714; -- 'The Call To War' precede a 'A Pact of Necessity'

-- Cadena de misiones de 'Maw of the Damned'
UPDATE quest_template_addon SET PrevQuestID = 40714, NextQuestID = 0 WHERE ID = 38990; -- 'A Pact of Necessity' lleva a 'Maw of the Damned'

-- Cadena de misiones de 'Blades of the Fallen Prince'
UPDATE quest_template_addon SET PrevQuestID = 40714, NextQuestID = 0 WHERE ID = 38990; -- 'A Pact of Necessity' lleva a 'Blades of the Fallen Prince'

-- Cadena de misiones de 'Apocalypse'
UPDATE quest_template_addon SET PrevQuestID = 40714, NextQuestID = 0 WHERE ID = 40930; -- 'A Pact of Necessity' lleva a 'Apocalypse'

-- Progresión de la campaña principal
UPDATE quest_template_addon SET PrevQuestID = 40714, NextQuestID = 0 WHERE ID = 43539; -- 'A Pact of Necessity' lleva a 'The Ruined Kingdom'
UPDATE quest_template_addon SET PrevQuestID = 43539, NextQuestID = 43571 WHERE ID = 43539; -- 'The Ruined Kingdom' precede a 'Our Oldest Enemies'
UPDATE quest_template_addon SET PrevQuestID = 43571, NextQuestID = 43686 WHERE ID = 43571; -- 'Our Oldest Enemies' precede a 'Death... and Decay'
UPDATE quest_template_addon SET PrevQuestID = 43686, NextQuestID = 43687 WHERE ID = 43686; -- 'Death... and Decay' precede a 'Regicide'
UPDATE quest_template_addon SET PrevQuestID = 43687, NextQuestID = 43688 WHERE ID = 43687; -- 'Regicide' precede a 'The King Rises'
UPDATE quest_template_addon SET PrevQuestID = 43688, NextQuestID = 43750 WHERE ID = 43688; -- 'The King Rises' precede a 'A Personal Request'
UPDATE quest_template_addon SET PrevQuestID = 43750, NextQuestID = 43573 WHERE ID = 43750; -- 'A Personal Request' precede a 'Advancing the War Effort'
UPDATE quest_template_addon SET PrevQuestID = 43573, NextQuestID = 44243 WHERE ID = 43573; -- 'Advancing the War Effort' precede a 'Champion: Amal'thazad'
UPDATE quest_template_addon SET PrevQuestID = 44243, NextQuestID = 43698 WHERE ID = 44243; -- 'Champion: Amal'thazad' precede a 'The Fourth Horseman'
UPDATE quest_template_addon SET PrevQuestID = 43698, NextQuestID = 0 WHERE ID = 43698; -- 'The Fourth Horseman' es la misión final de la cadena principal

-- Misiones opcionales y de campeones
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 0 WHERE ID = 43785; -- 'Champion: Thoras Trollbane' es opcional
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 0 WHERE ID = 43786; -- 'Champion: Koltira Deathweaver' es opcional
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 0 WHERE ID = 43787; -- 'Champion: High Inquisitor Whitemane' es opcional
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 0 WHERE ID = 43788; -- 'Champion: Rottgut' es opcional
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 0 WHERE ID = 44244; -- 'Champion: Darion Mograine' es opcional

-- Misiones de mejora de la sede
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 0 WHERE ID = 43264; -- 'Rise, Champions' para obtener recursos de la orden
UPDATE quest_template_addon SET PrevQuestID = 43264, NextQuestID = 43265 WHERE ID = 43264; -- 'Rise, Champions' precede a 'Spread the Word'
UPDATE quest_template_addon SET PrevQuestID = 43265, NextQuestID = 43266 WHERE ID = 43265; -- 'Spread the Word' precede a 'Recruiting the Troops'
UPDATE quest_template_addon SET PrevQuestID = 43266, NextQuestID = 43267 WHERE ID = 43266; -- 'Recruiting the Troops' precede a 'Troops in the Field'
UPDATE quest_template_addon SET PrevQuestID = 43267, NextQuestID = 43268 WHERE ID = 43267; -- 'Troops in the Field' precede a 'Tech It Up A Notch'

-- Misiones de montura de clase
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 0 WHERE ID = 43697; -- 'Steeds of the Damned' para obtener la montura de clase
