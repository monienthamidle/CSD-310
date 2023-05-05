INSERT INTO `supplyinventory`(supplyinventoryID, supplyQuantity, supplyID)
	VALUES('4415','200',(SELECT supplyID FROM supplies WHERE supplyName = 'bottles'));
INSERT INTO `supplyinventory`(supplyinventoryID, supplyQuantity, supplyID)
	VALUES('31521','200',(SELECT supplyID FROM supplies WHERE supplyName = 'corks'));
INSERT INTO `supplyinventory`(supplyinventoryID, supplyQuantity, supplyID)
	VALUES('3002','200',(SELECT supplyID FROM supplies WHERE supplyName = 'labels'));
INSERT INTO `supplyinventory`(supplyinventoryID, supplyQuantity, supplyID)
	VALUES('31152','200',(SELECT supplyID FROM supplies WHERE supplyName = 'boxes'));
INSERT INTO `supplyinventory`(supplyinventoryID, supplyQuantity, supplyID)
	VALUES('31421','200',(SELECT supplyID FROM supplies WHERE supplyName = 'vats'));
INSERT INTO `supplyinventory`(supplyinventoryID, supplyQuantity, supplyID)
	VALUES('317821','200',(SELECT supplyID FROM supplies WHERE supplyName = 'tubing'));
