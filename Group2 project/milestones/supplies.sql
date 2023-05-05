INSERT INTO `supplies`(supplyName,supplyPrice,supplyDescription,suppliersID)
	VALUES ('bottles', '3.99', 'bottles for wine', (SELECT suppliersID FROM suppliers WHERE suppliers_name = 'ABC'));
INSERT INTO `supplies`(supplyName,supplyPrice,supplyDescription,suppliersID)
	VALUES ('corks', '.99', 'corks for wine', (SELECT suppliersID FROM suppliers WHERE suppliers_name = 'ABC'));
 INSERT INTO `supplies`(supplyName,supplyPrice,supplyDescription,suppliersID)
	VALUES ('labels', '.99', 'labels for wine', (SELECT suppliersID FROM suppliers WHERE suppliers_name = 'BCE'));
INSERT INTO `supplies`(supplyName,supplyPrice,supplyDescription,suppliersID)
	VALUES ('boxes', '.89', 'boxes for wine', (SELECT suppliersID FROM suppliers WHERE suppliers_name = 'BCE')); 
INSERT INTO `supplies`(supplyName,supplyPrice,supplyDescription,suppliersID)
	VALUES ('vats', '1.89', 'vats for wine', (SELECT suppliersID FROM suppliers WHERE suppliers_name = 'zyx'));
INSERT INTO `supplies`(supplyName,supplyPrice,supplyDescription,suppliersID)
	VALUES ('tubing', '1.05', 'tubing for wine', (SELECT suppliersID FROM suppliers WHERE suppliers_name = 'zyx'));