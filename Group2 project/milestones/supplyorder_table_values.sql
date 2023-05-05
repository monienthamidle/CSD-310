-- selecting the bacchus database
use bacchus_winery;

-- insert into supply order records
INSERT INTO `supplyorder`(date_submitted, supplyID, quantity, item_price, expected_delivery, issueID, actual_delivery)
	VALUES('2023-01-06',(SELECT supplyID FROM supplies WHERE supplyName = 'bottles'), '75', '19.99', '2023-01-13', (SELECT issueID FROM supplierissues WHERE issueDescription = 'delayed'),'2023-01-15');

INSERT INTO `supplyorder`(date_submitted, supplyID, quantity, item_price, expected_delivery, issueID, actual_delivery)
	VALUES('2023-02-15',(SELECT supplyID FROM supplies WHERE supplyName = 'corks'), '75', '8.50', '2023-02-22', (SELECT issueID FROM supplierissues WHERE issueDescription = 'broken bottles'),'2023-02-27');

INSERT INTO `supplyorder`(date_submitted, supplyID, quantity, item_price, expected_delivery, issueID, actual_delivery)
	VALUES('2023-03-20', (SELECT supplyID FROM supplies WHERE supplyName = 'vats'), '75', '999.99', '2023-03-27', (SELECT issueID FROM supplierissues WHERE issueDescription = 'missing lables'),'2023-03-29');

INSERT INTO `supplyorder`(date_submitted, supplyID, quantity, item_price, expected_delivery, issueID, actual_delivery)
	VALUES('2023-04-10', (SELECT supplyID FROM supplies WHERE supplyName = 'labels'), '75', '0.50', '2023-04-17', (SELECT issueID FROM supplierissues WHERE issueDescription = 'damaged corks'),'2023-04-18');

INSERT INTO `supplyorder`(date_submitted, supplyID, quantity, item_price, expected_delivery, issueID)
	VALUES('2023-05-01', (SELECT supplyID FROM supplies WHERE supplyName = 'tubing'), '75', '15.99', '2023-05-07', (SELECT issueID FROM supplierissues WHERE issueDescription = 'Everything looks good!'));
