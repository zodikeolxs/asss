-- Mago - Campaña de la sede de clase - Blizzlike

-- Inicio común
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 41114 WHERE ID = 40755; -- Felstorm's Plea → The Dreadlord's Prize

-- Selección de artefacto (exclusive group = 1)
UPDATE quest_template_addon SET PrevQuestID = 40755, NextQuestID = 0, ExclusiveGroup = 1 WHERE ID IN (41114, 41113, 41115);

-- Felo'melorn (Fuego)
UPDATE quest_template_addon SET PrevQuestID = 41114, NextQuestID = 41121 WHERE ID = 41114;
UPDATE quest_template_addon SET PrevQuestID = 41121, NextQuestID = 41123 WHERE ID = 41121;
UPDATE quest_template_addon SET PrevQuestID = 41123, NextQuestID = 41124 WHERE ID = 41123;
UPDATE quest_template_addon SET PrevQuestID = 41124, NextQuestID = 42663 WHERE ID = 41124;

-- Aluneth (Arcano)
UPDATE quest_template_addon SET PrevQuestID = 41113, NextQuestID = 41125 WHERE ID = 41113;
UPDATE quest_template_addon SET PrevQuestID = 41125, NextQuestID = 41126 WHERE ID = 41125;
UPDATE quest_template_addon SET PrevQuestID = 41126, NextQuestID = 41127 WHERE ID = 41126;
UPDATE quest_template_addon SET PrevQuestID = 41127, NextQuestID = 41128 WHERE ID = 41127;
UPDATE quest_template_addon SET PrevQuestID = 41128, NextQuestID = 41129 WHERE ID = 41128;
UPDATE quest_template_addon SET PrevQuestID = 41129, NextQuestID = 41130 WHERE ID = 41129;
UPDATE quest_template_addon SET PrevQuestID = 41130, NextQuestID = 41131 WHERE ID = 41130;
UPDATE quest_template_addon SET PrevQuestID = 41131, NextQuestID = 42663 WHERE ID = 41131;

-- Ebonchill (Escarcha)
UPDATE quest_template_addon SET PrevQuestID = 41115, NextQuestID = 41132 WHERE ID = 41115;
UPDATE quest_template_addon SET PrevQuestID = 41132, NextQuestID = 41133 WHERE ID = 41132;
UPDATE quest_template_addon SET PrevQuestID = 41133, NextQuestID = 41134 WHERE ID = 41133;
UPDATE quest_template_addon SET PrevQuestID = 41134, NextQuestID = 41135 WHERE ID = 41134;
UPDATE quest_template_addon SET PrevQuestID = 41135, NextQuestID = 41136 WHERE ID = 41135;
UPDATE quest_template_addon SET PrevQuestID = 41136, NextQuestID = 42663 WHERE ID = 41136;

-- Campaña común
UPDATE quest_template_addon SET PrevQuestID = 42663, NextQuestID = 42665 WHERE ID = 42663; -- The Champion's Return → Unlocked Potential
UPDATE quest_template_addon SET PrevQuestID = 42665, NextQuestID = 42666 WHERE ID = 42665; -- → The Great Akazamzarak
UPDATE quest_template_addon SET PrevQuestID = 42666, NextQuestID = 42669 WHERE ID = 42666; -- → The Only Way to Travel
UPDATE quest_template_addon SET PrevQuestID = 42669, NextQuestID = 42670 WHERE ID = 42669; -- → The Tirisgarde Reborn
UPDATE quest_template_addon SET PrevQuestID = 42670, NextQuestID = 42671 WHERE ID = 42670; -- → A Conjuror's Duty
UPDATE quest_template_addon SET PrevQuestID = 42671, NextQuestID = 42673 WHERE ID = 42671; -- → Rise, Champions
UPDATE quest_template_addon SET PrevQuestID = 42673, NextQuestID = 42674 WHERE ID = 42673; -- → Champion: Archmage Modera
UPDATE quest_template_addon SET PrevQuestID = 42674, NextQuestID = 42675 WHERE ID = 42674; -- → Champion: Archmage Kalec
UPDATE quest_template_addon SET PrevQuestID = 42675, NextQuestID = 42677 WHERE ID = 42675; -- → Technical Wizardry
UPDATE quest_template_addon SET PrevQuestID = 42677, NextQuestID = 42680 WHERE ID = 42677; -- → Archmage Omniara
UPDATE quest_template_addon SET PrevQuestID = 42680, NextQuestID = 42681 WHERE ID = 42680; -- → Building Our Troops
UPDATE quest_template_addon SET PrevQuestID = 42681, NextQuestID = 42704 WHERE ID = 42681; -- → Tech It Up A Notch
