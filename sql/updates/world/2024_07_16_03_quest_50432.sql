-- PrevQuestID:48440 Original
-- questtype: 0 Original Autocompleta
-- RewardCurrencyID1: Recompensa moneda: 1533 
-- RewardCurrencyQty1: Cantidad de moneda: 5 

-- agregue moneda como recompensa
UPDATE `quest_template` SET `questtype`=0,`RewardCurrencyID1`=1533,`RewardCurrencyQty1`=5 WHERE `id`=50432; 

-- Esta es la modificada para que no pida de requisito la mision anterior: 
UPDATE `quest_template_addon` SET `PrevQuestID`=0 WHERE `id`=50432;  -- PrevQuestID:48440 Original