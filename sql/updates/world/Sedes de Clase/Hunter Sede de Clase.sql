-- Cazador Sede de Clase - Orden de misiones

-- Etapa inicial
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 42185 WHERE ID = 41541; -- 'Infused with Power' precede a 'Tactical Matters'
UPDATE quest_template_addon SET PrevQuestID = 41541, NextQuestID = 42184 WHERE ID = 42185; -- 'Tactical Matters' precede a 'The Campaign Begins'
UPDATE quest_template_addon SET PrevQuestID = 42185, NextQuestID = 41918 WHERE ID = 42184; -- 'The Campaign Begins' precede a 'Rise, Champions'

-- Primera elección de campeón (dos opciones)
UPDATE quest_template_addon SET PrevQuestID = 42184, NextQuestID = 0, ExclusiveGroup = 41918 WHERE ID IN (41918, 41919); -- 'Rise, Champions' lleva a una elección entre 'A Strong Right Hand' y 'Champion: Loren Stormhoof'

-- Continúa luego de elección
UPDATE quest_template_addon SET PrevQuestID = 41918, NextQuestID = 41920 WHERE ID = 41919; -- 'A Strong Right Hand' o 'Champion: Loren Stormhoof' preceden a 'Making Contact'
UPDATE quest_template_addon SET PrevQuestID = 41919, NextQuestID = 41921 WHERE ID = 41920; -- 'Making Contact' precede a 'Recruiting The Troops'
UPDATE quest_template_addon SET PrevQuestID = 41920, NextQuestID = 41922 WHERE ID = 41921; -- 'Recruiting The Troops' precede a 'Troops in the Field'
UPDATE quest_template_addon SET PrevQuestID = 41921, NextQuestID = 41924 WHERE ID = 41922; -- 'Troops in the Field' precede a 'Tech It Up A Notch'
UPDATE quest_template_addon SET PrevQuestID = 41922, NextQuestID = 41923 WHERE ID = 41924; -- 'Tech It Up A Notch' precede a 'Scouting Reports'

-- Misiones de la campaña principal
UPDATE quest_template_addon SET PrevQuestID = 41924, NextQuestID = 44009 WHERE ID = 41923; -- 'Scouting Reports' precede a 'A Falling Star'
UPDATE quest_template_addon SET PrevQuestID = 41923, NextQuestID = 0 WHERE ID = 44009; -- 'A Falling Star' es una misión independiente

-- Segunda elección de campeón
UPDATE quest_template_addon SET PrevQuestID = 44009, NextQuestID = 0, ExclusiveGroup = 41934 WHERE ID IN (41934, 41945); -- 'A Falling Star' lleva a una elección entre 'Urgent Summons' y 'Recruiting Rexxar'

-- Continúa luego de elección
UPDATE quest_template_addon SET PrevQuestID = 41934, NextQuestID = 41935 WHERE ID = 41945; -- 'Urgent Summons' o 'Recruiting Rexxar' preceden a 'Calling Hilaire Home'
UPDATE quest_template_addon SET PrevQuestID = 41945, NextQuestID = 41936 WHERE ID = 41935; -- 'Calling Hilaire Home' precede a 'Bite of the Beast'
UPDATE quest_template_addon SET PrevQuestID = 41935, NextQuestID = 0 WHERE ID = 41936; -- 'Bite of the Beast' es una misión independiente

-- Misiones adicionales y finales
UPDATE quest_template_addon SET PrevQuestID = 41936, NextQuestID = 0 WHERE ID = 41937; -- 'Champion: Beastmaster Hilaire' es independiente
UPDATE quest_template_addon SET PrevQuestID = 41937, NextQuestID = 41938 WHERE ID = 41937; -- 'Champion: Beastmaster Hilaire' precede a 'Homecoming'
UPDATE quest_template_addon SET PrevQuestID = 41938, NextQuestID = 41948 WHERE ID = 41938; -- 'Homecoming' precede a 'Signaling Trouble'
UPDATE quest_template_addon SET PrevQuestID = 41948, NextQuestID = 0 WHERE ID = 41948; -- 'Signaling Trouble' es una misión independiente
