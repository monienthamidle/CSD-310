-- drop tables if they are present (starting from the bottom up from the create tables)
DROP TABLE IF EXISTS supplyorder; -- last
DROP TABLE IF EXISTS supplierissues;
DROP TABLE IF EXISTS supplyinventory;
DROP TABLE IF EXISTS supplies;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS distributorsorders;
DROP TABLE IF EXISTS distributors;
DROP TABLE IF EXISTS productinventory;
DROP TABLE IF EXISTS managers;
DROP TABLE IF EXISTS payroll;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS position;
DROP TABLE IF EXISTS bacchusproducts; -- first

-- create the bacchusproducts table 
CREATE TABLE `bacchusproducts` (
  `productsID` int NOT NULL AUTO_INCREMENT,
  `productname` varchar(45) NOT NULL,
  `productPrice` varchar(45) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  PRIMARY KEY (`productsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the position table 
CREATE TABLE `position` (
  `positionID` int NOT NULL AUTO_INCREMENT,
  `position_title` varchar(45) DEFAULT NULL,
  `positionType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the employee table 
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `empF_name` varchar(255) NOT NULL,
  `empL_name` varchar(255) NOT NULL,
  `emp_adress` varchar(255) NOT NULL,
  `hired_Date` date NOT NULL,
  `positionID` int NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `fk_positions` (`positionID`),
  CONSTRAINT `fk_positions` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the payroll table 
CREATE TABLE `payroll` (
  `payrollID` int NOT NULL AUTO_INCREMENT,
  `timeCard` int NOT NULL,
  `positionID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  PRIMARY KEY (`payrollID`),
  KEY `FK_position` (`positionID`),
  KEY `FK_employee` (`EmployeeID`),
  CONSTRAINT `FK_employee` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FK_position` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the managers table 
CREATE TABLE `managers` (
  `managerID` int NOT NULL AUTO_INCREMENT,
  `EmployeeID` int NOT NULL,
  `promotionDate` date NOT NULL,
  `positionID` int NOT NULL,
  PRIMARY KEY (`managerID`),
  KEY `fk_employees` (`EmployeeID`),
  KEY `fk_position1` (`positionID`),
  CONSTRAINT `fk_employees` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `fk_position1` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the productinventory table 
CREATE TABLE `productinventory` (
  `productinventoryID` varchar(45) NOT NULL,
  `productsID` int NOT NULL,
  `productQuantity` int NOT NULL,
  PRIMARY KEY (`productinventoryID`),
  KEY `fk_invproduct` (`productsID`),
  CONSTRAINT `fk_invproduct` FOREIGN KEY (`productsID`) REFERENCES `bacchusproducts` (`productsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the distributors table 
CREATE TABLE `distributors` (
  `distributorsID` int NOT NULL AUTO_INCREMENT,
  `distributorsname` varchar(45) NOT NULL,
  `distributors_address` varchar(45) NOT NULL,
  `distributorscity` varchar(45) NOT NULL,
  `distributors_zip` varchar(45) NOT NULL,
  `distributors_email` varchar(45) NOT NULL,
  `distributors_phonenumber` varchar(45) NOT NULL,
  PRIMARY KEY (`distributorsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the distributorsorders table 
CREATE TABLE `distributorsorders` (
  `distributorsordersID` int NOT NULL AUTO_INCREMENT,
  `order_number` int NOT NULL,
  `order_date` date NOT NULL,
  `productinventoryID` int NOT NULL,
  `productsID` int NOT NULL,
  `totalCost` int NOT NULL,
  `distributorsID` int NOT NULL,
  PRIMARY KEY (`distributorsordersID`),
  KEY `fk_productinventory` (`productinventoryID`),
  KEY `fk_bacchusproducts` (`productsID`),
  KEY `fk_orderdis` (`distributorsID`),
  CONSTRAINT `fk_bacchusproducts` FOREIGN KEY (`productsID`) REFERENCES `bacchusproducts` (`productsID`),
  CONSTRAINT `fk_orderdis` FOREIGN KEY (`distributorsID`) REFERENCES `distributors` (`distributorsID`),
  CONSTRAINT `fk_productinventory` FOREIGN KEY (`productinventoryID`) REFERENCES `productinventory` (`productinventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the suppliers table 
CREATE TABLE `suppliers` (
  `suppliersID` int NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(45) NOT NULL,
  `suppliers_address` varchar(45) NOT NULL,
  `suppliers_city` varchar(45) NOT NULL,
  `suppliers_zip` varchar(45) NOT NULL,
  `suppliers_email` varchar(45) NOT NULL,
  `suppliers_phonenumber` varchar(45) NOT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`suppliersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the supplies table 
CREATE TABLE `supplies` (
  `supplyID` int NOT NULL AUTO_INCREMENT,
  `supplyName` varchar(255) NOT NULL,
  `supplyPrice` varchar(45) NOT NULL,
  `supplyDescription` varchar(255) NOT NULL,
  `suppliersID` int NOT NULL,
  PRIMARY KEY (`supplyID`),
  KEY `fk_suppliers` (`suppliersID`),
  CONSTRAINT `fk_suppliers` FOREIGN KEY (`suppliersID`) REFERENCES `suppliers` (`suppliersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the supplyinventory table 
CREATE TABLE `supplyinventory` (
  `supplyinventoryID` varchar(45) NOT NULL,
  `supplyQuantity` int NOT NULL,
  `supplyID` int NOT NULL,
  PRIMARY KEY (`supplyinventoryID`),
  KEY `fk_supply` (`supplyID`),
  CONSTRAINT `fk_supply` FOREIGN KEY (`supplyID`) REFERENCES `supplies` (`supplyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the supplierissues table 
CREATE TABLE `supplierissues` (
  `issueID` int NOT NULL AUTO_INCREMENT,
  `issueDescription` varchar(255) NOT NULL,
  `issue_date` date,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create the supplyorder table 
CREATE TABLE `supplyorder` (
  `supplyorderID` int NOT NULL AUTO_INCREMENT,
  `date_submitted` date,
  `supplyID` int NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `item_price` varchar(45) NOT NULL,
  `expected_delivery` date,
  `issueID` int NOT NULL,
  `actual_delivery` date,
  PRIMARY KEY (`supplyorderID`),
  KEY `fk_supplies` (`supplyID`),
  KEY `fk_supplierissues` (`issueID`),
  CONSTRAINT `fk_supplierissues` FOREIGN KEY (`issueID`) REFERENCES `supplierissues` (`issueID`),
  CONSTRAINT `fk_supplies` FOREIGN KEY (`supplyID`) REFERENCES `supplies` (`supplyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;