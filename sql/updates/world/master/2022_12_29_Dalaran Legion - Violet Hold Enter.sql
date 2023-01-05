SET @ATID := 400000;

DELETE FROM `areatrigger` WHERE `SpawnId` IN (@ATID+0, @ATID+1) AND `IsServerSide` = 1;
INSERT INTO `areatrigger` (`SpawnId`, `AreaTriggerId`, `IsServerSide`, `MapId`, `PosX`, `PosY`, `PosZ`, `Orientation`, `PhaseUseFlags`, `PhaseId`, `PhaseGroup`, `Shape`, `ShapeData0`, `ShapeData1`, `ShapeData2`, `ShapeData3`, `ShapeData4`, `ShapeData5`, `ShapeData6`, `ShapeData7`, `ScriptName`, `Comment`) VALUES
(@ATID+0, @ATID+0, 1, 1544, 4546.60595703125, 4014.895751953125, 86.03781890869140625, 0, 1, 0, 0, 1, 3, 1, 3, 0, 0, 0, 0, 0, '', '7.0 Violet Hold Enterance'),
(@ATID+1, @ATID+1, 1, 1220, -969.8125, 4314.1240234375, 742.1795654296875, 0.908608078956604003, 1, 0, 0, 1, 3, 1, 3, 0, 0, 0, 0, 0, '', '7.0 Violet Hold Exit (Dalaran)');

DELETE FROM `areatrigger_template` WHERE `Id` IN (@ATID+0, @ATID+1);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(@ATID+0, 1, 1, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0),
(@ATID+1, 1, 1, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId` IN (@ATID+0, @ATID+1) AND `IsServerSide` = 1;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `IsServerSide`, `ActionType`, `ActionParam`, `TargetType`) VALUES
(@ATID+0, 1, 2, 5446, 5),
(@ATID+1, 1, 2, 5293, 5);

DELETE FROM `areatrigger_teleport` WHERE `Id` in (@ATID+0, @ATID+1);
INSERT INTO `areatrigger_teleport` (`ID`, `PortLocID`, `Name`) VALUES
(@ATID+0, 5293, '7.0 Violet Hold Enterance Target'),
(@ATID+1, 5446, '7.0 Violet Hold Exit (Dalaran)');
