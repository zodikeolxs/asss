-- Demon Hunter Class Hall Campaign (Blizzlike) - TrinityCore 7.3.5

-- INICIO
UPDATE quest_template_addon SET PrevQuestID = 0, NextQuestID = 40222 WHERE ID = 39047; -- Call of the Illidari → The Power to Survive
UPDATE quest_template_addon SET PrevQuestID = 39047, NextQuestID = 0, ExclusiveGroup = 40373 WHERE ID IN (40373, 40247); -- Elección de Twinblades o Aldrachi Warblades

-- TWINBLADES (opcional: usar si elige 40373)
UPDATE quest_template_addon SET PrevQuestID = 40373, NextQuestID = 40249 WHERE ID = 40373; -- Making Arrangements
UPDATE quest_template_addon SET PrevQuestID = 40373, NextQuestID = 40374 WHERE ID = 40249;
UPDATE quest_template_addon SET PrevQuestID = 40249, NextQuestID = 40375 WHERE ID = 40374;
UPDATE quest_template_addon SET PrevQuestID = 40374, NextQuestID = 40376 WHERE ID = 40375;

-- ALDRACHI (opcional: usar si elige 40247)
UPDATE quest_template_addon SET PrevQuestID = 40247, NextQuestID = 40250 WHERE ID = 40247;
UPDATE quest_template_addon SET PrevQuestID = 40247, NextQuestID = 40378 WHERE ID = 40250;
UPDATE quest_template_addon SET PrevQuestID = 40250, NextQuestID = 40379 WHERE ID = 40378;
UPDATE quest_template_addon SET PrevQuestID = 40378, NextQuestID = 40380 WHERE ID = 40379;

-- COMÚN POST ARTEFACTO
UPDATE quest_template_addon SET PrevQuestID = 40376, NextQuestID = 42682 WHERE ID = 40376;
UPDATE quest_template_addon SET PrevQuestID = 40380, NextQuestID = 42682 WHERE ID = 40380;

-- CADENA PRINCIPAL
UPDATE quest_template_addon SET PrevQuestID = 40376, NextQuestID = 42683 WHERE ID = 42682;
UPDATE quest_template_addon SET PrevQuestID = 42682, NextQuestID = 42684 WHERE ID = 42683;
UPDATE quest_template_addon SET PrevQuestID = 42683, NextQuestID = 42685 WHERE ID = 42684;
UPDATE quest_template_addon SET PrevQuestID = 42684, NextQuestID = 42687 WHERE ID = 42685;
UPDATE quest_template_addon SET PrevQuestID = 42685, NextQuestID = 42688 WHERE ID = 42687;
UPDATE quest_template_addon SET PrevQuestID = 42687, NextQuestID = 42689 WHERE ID = 42688;

-- CAMPAÑA Y CAMPEONES
UPDATE quest_template_addon SET PrevQuestID = 42688, NextQuestID = 42691 WHERE ID = 42689; -- Return to Fel Hammer → Rise, Champions
UPDATE quest_template_addon SET PrevQuestID = 42689, NextQuestID = 42692 WHERE ID = 42691; -- → Things Gaardoun Needs
UPDATE quest_template_addon SET PrevQuestID = 42691, NextQuestID = 42693 WHERE ID = 42692;
UPDATE quest_template_addon SET PrevQuestID = 42692, NextQuestID = 42694 WHERE ID = 42693;
UPDATE quest_template_addon SET PrevQuestID = 42693, NextQuestID = 42695 WHERE ID = 42694;
UPDATE quest_template_addon SET PrevQuestID = 42694, NextQuestID = 42696 WHERE ID = 42695;
UPDATE quest_template_addon SET PrevQuestID = 42695, NextQuestID = 42697 WHERE ID = 42696;
UPDATE quest_template_addon SET PrevQuestID = 42696, NextQuestID = 42698 WHERE ID = 42697;
UPDATE quest_template_addon SET PrevQuestID = 42697, NextQuestID = 42699 WHERE ID = 42698;
UPDATE quest_template_addon SET PrevQuestID = 42698, NextQuestID = 42700 WHERE ID = 42699;
UPDATE quest_template_addon SET PrevQuestID = 42699, NextQuestID = 42701 WHERE ID = 42700;
UPDATE quest_template_addon SET PrevQuestID = 42700, NextQuestID = 42702 WHERE ID = 42701;
UPDATE quest_template_addon SET PrevQuestID = 42701, NextQuestID = 42703 WHERE ID = 42702;
UPDATE quest_template_addon SET PrevQuestID = 42702, NextQuestID = 42704 WHERE ID = 42703;
UPDATE quest_template_addon SET PrevQuestID = 42703, NextQuestID = 42705 WHERE ID = 42704;
UPDATE quest_template_addon SET PrevQuestID = 42704, NextQuestID = 42706 WHERE ID = 42705;

-- FINALES
UPDATE quest_template_addon SET PrevQuestID = 42705, NextQuestID = 42801 WHERE ID = 42706;
UPDATE quest_template_addon SET PrevQuestID = 42801, NextQuestID = 42802 WHERE ID = 42801;
UPDATE quest_template_addon SET PrevQuestID = 42802, NextQuestID = 42808 WHERE ID = 42802;
UPDATE quest_template_addon SET PrevQuestID = 42808, NextQuestID = 42809 WHERE ID = 42808;
UPDATE quest_template_addon SET PrevQuestID = 42809, NextQuestID = 42810 WHERE ID = 42809;
UPDATE quest_template_addon SET PrevQuestID = 42810, NextQuestID = 42811 WHERE ID = 42810;
UPDATE quest_template_addon SET PrevQuestID = 42811, NextQuestID = 42812 WHERE ID = 42811;
UPDATE quest_template_addon SET PrevQuestID = 42812, NextQuestID = 42813 WHERE ID = 42812;
UPDATE quest_template_addon SET PrevQuestID = 42813, NextQuestID = 42814 WHERE ID = 42813;
UPDATE quest_template_addon SET PrevQuestID = 42814, NextQuestID = 42815 WHERE ID = 42814;
UPDATE quest_template_addon SET PrevQuestID = 42815, NextQuestID = 42816 WHERE ID = 42815;
UPDATE quest_template_addon SET PrevQuestID = 42816, NextQuestID = 42817 WHERE ID = 42816;
UPDATE quest_template_addon SET PrevQuestID = 42817, NextQuestID = 42818 WHERE ID = 42817;
UPDATE quest_template_addon SET PrevQuestID = 42818, NextQuestID = 42819 WHERE ID = 42818;
UPDATE quest_template_addon SET PrevQuestID = 42819, NextQuestID = 42820 WHERE ID = 42819;
UPDATE quest_template_addon SET PrevQuestID = 42820, NextQuestID = 42821 WHERE ID = 42820;
UPDATE quest_template_addon SET PrevQuestID = 42821, NextQuestID = 42822 WHERE ID = 42821;
UPDATE quest_template_addon SET PrevQuestID = 42822, NextQuestID = 42823 WHERE ID = 42822;
UPDATE quest_template_addon SET PrevQuestID = 42823, NextQuestID = 42824 WHERE ID = 42823;
UPDATE quest_template_addon SET PrevQuestID = 42824, NextQuestID = 42825 WHERE ID = 42824;
UPDATE quest_template_addon SET PrevQuestID = 42825, NextQuestID = 42826 WHERE ID = 42825;
UPDATE quest_template_addon SET PrevQuestID = 42826, NextQuestID = 42827 WHERE ID = 42826;
UPDATE quest_template_addon SET PrevQuestID = 42827, NextQuestID = 42828 WHERE ID = 42827;
UPDATE quest_template_addon SET PrevQuestID = 42828, NextQuestID = 42829 WHERE ID = 42828;
UPDATE quest_template_addon SET PrevQuestID = 42829, NextQuestID = 0 WHERE ID = 42829; -- Última

-- Hero’s Weapon y final opcional
UPDATE quest_template_addon SET PrevQuestID = 42829, NextQuestID = 43496 WHERE ID = 42829; -- One More Thing...
UPDATE quest_template_addon SET PrevQuestID = 43496, NextQuestID = 0 WHERE ID = 43496; -- A Hero's Weapon
