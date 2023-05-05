-- Selecting the bacchus database
use bacchus_winery;

-- insert into product inventory records
INSERT INTO `productinventory`(productsID, productQuantity)
	VALUES((SELECT productsID FROM bacchusproducts WHERE productname = 'merlot'),'10');

INSERT INTO `productinventory`(productsID, productQuantity)
	VALUES((SELECT productsID FROM bacchusproducts WHERE productname = 'cabernet sauvignon'),'15');

INSERT INTO `productinventory`(productsID, productQuantity)
	VALUES((SELECT productsID FROM bacchusproducts WHERE productname = 'chablis'),'6');

INSERT INTO `productinventory`(productsID, productQuantity)
	VALUES((SELECT productsID FROM bacchusproducts WHERE productname = 'chardonnay'),'25');