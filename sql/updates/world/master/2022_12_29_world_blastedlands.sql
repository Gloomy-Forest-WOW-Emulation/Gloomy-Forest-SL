-- Condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 0 AND `SourceEntry` = 1190);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(25, 0, 1190, 0, 0, 26, 0, 2801, 0, 0, 0, 0, 0, '', 'TerrainSwap if Phase 2801 (6.0 Invasion - Blasted Lands (A) Phase) IS applied'),
(25, 0, 1190, 0, 1, 26, 0, 3146, 0, 0, 0, 0, 0, '', 'TerrainSwap if Phase 3146 (6.0 Invasion - Blasted Lands (H) Phase) IS applied');
