-- Guerrero Sede de Clase - Orden de misiones

-- Etapa inicial
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 38904 WHERE ID = 41052;
UPDATE quest_template_addon SET PrevQuestID = 41052, NextQuestID = 39654 WHERE ID = 38904;

-- Primera elección de artefacto (tres opciones)
UPDATE quest_template_addon SET PrevQuestID = 38904, NextQuestID = 41105, ExclusiveGroup = 39654 WHERE ID IN (39654, 40579, 40043);

-- Continúa luego de elección
UPDATE quest_template_addon SET PrevQuestID = 39654, NextQuestID = 39191 WHERE ID = 41105;
UPDATE quest_template_addon SET PrevQuestID = 41105, NextQuestID = 39530 WHERE ID = 39191;

-- Progresión lineal
UPDATE quest_template_addon SET PrevQuestID = 39191, NextQuestID = 39192 WHERE ID = 39530;
UPDATE quest_template_addon SET PrevQuestID = 39530, NextQuestID = 39214 WHERE ID = 39192;
UPDATE quest_template_addon SET PrevQuestID = 39192, NextQuestID = 40585 WHERE ID = 39214;
UPDATE quest_template_addon SET PrevQuestID = 39214, NextQuestID = 42484 WHERE ID = 40585;

-- Cadena de Drek'Thar y armas adicionales
UPDATE quest_template_addon SET PrevQuestID = 40585, NextQuestID = 42598 WHERE ID = 42484;
UPDATE quest_template_addon SET PrevQuestID = 42484, NextQuestID = 42607 WHERE ID = 42598;
UPDATE quest_template_addon SET PrevQuestID = 42598, NextQuestID = 42609 WHERE ID = 42607;
UPDATE quest_template_addon SET PrevQuestID = 42607, NextQuestID = 42610 WHERE ID = 42609;
UPDATE quest_template_addon SET PrevQuestID = 42609, NextQuestID = 42611 WHERE ID = 42610;
UPDATE quest_template_addon SET PrevQuestID = 42610, NextQuestID = 42194 WHERE ID = 42611;
UPDATE quest_template_addon SET PrevQuestID = 42611, NextQuestID = 42650 WHERE ID = 42194;
UPDATE quest_template_addon SET PrevQuestID = 42194, NextQuestID = 42651 WHERE ID = 42650;
UPDATE quest_template_addon SET PrevQuestID = 42650, NextQuestID = 42110 WHERE ID = 42651;
UPDATE quest_template_addon SET PrevQuestID = 42651, NextQuestID = 42204 WHERE ID = 42110;

-- Misiones varias
UPDATE quest_template_addon SET PrevQuestID = 42110, NextQuestID = 43975 WHERE ID = 42204;
UPDATE quest_template_addon SET PrevQuestID = 42204, NextQuestID = 44255 WHERE ID = 43975;
UPDATE quest_template_addon SET PrevQuestID = 43975, NextQuestID = 43888 WHERE ID = 44255;
UPDATE quest_template_addon SET PrevQuestID = 44255, NextQuestID = 43586 WHERE ID = 43888;
UPDATE quest_template_addon SET PrevQuestID = 43888, NextQuestID = 44667 WHERE ID = 43586;

-- Segunda elección (tres opciones)
UPDATE quest_template_addon SET PrevQuestID = 44667, NextQuestID = 43506, ExclusiveGroup = 42918 WHERE ID IN (42918, 42616, 42618);

-- Misiones finales
UPDATE quest_template_addon SET PrevQuestID = 42918, NextQuestID = 43577 WHERE ID = 43506;
UPDATE quest_template_addon SET PrevQuestID = 43506, NextQuestID = 42974 WHERE ID = 43577;
UPDATE quest_template_addon SET PrevQuestID = 43577, NextQuestID = 42619 WHERE ID = 42974;
UPDATE quest_template_addon SET PrevQuestID = 42974, NextQuestID = 43425 WHERE ID = 42619;

-- Última misión
UPDATE quest_template_addon SET PrevQuestID = 42619, NextQuestID = 0 WHERE ID = 43425;
