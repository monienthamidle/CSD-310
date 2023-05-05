CREATE TABLE `bacchus products` (
  `productsID` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_price` varchar(45) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  PRIMARY KEY (`productsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `distributors` (
  `distributorsID` int NOT NULL,
  `distributorsname` varchar(45) NOT CREATE TABLE `distributorsorders` (
  `distributorsordersID` int NOT NULL,
  `order_number` int NOT NULL,
  `order_date` int NOT NULL,
  PRIMARY KEY (`distributorsordersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `managers` (
  `managerID` int NOT NULL,
  PRIMARY KEY (`managerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `position` (
  `positionID` int NOT NULL,
  PRIMARY KEY (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `productinventory` (
  `productinventoryID` int NOT NULL,
  PRIMARY KEY (`productinventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `suppliers` (
  `suppliersID` int NOT NULL,
  `suppliers_name` varchar(45) NOT NULL,
  `suppliers_address` varchar(45) NOT NULL,
  `suppliers_city` varchar(45) NOT NULL,
  `suppliers_zip` varchar(45) NOT NULL,
  `suppliers_email` varchar(45) NOT NULL,
  `suppliers_phonenumber` int NOT NULL,
  PRIMARY KEY (`suppliersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `supplyorder` (
  `supplyorderID` int NOT NULL,
  `supplyID` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `item_price` varchar(45) NOT NULL,
  `supply_date` int NOT NULL,
  PRIMARY KEY (`supplyorderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `supply inventory` (
  `supplyinventoryID` int NOT NULL,
  PRIMARY KEY (`supplyinventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
NULL,
  `distributors_address` varchar(45) NOT NULL,
  `distributorscity` varchar(45) NOT NULL,
  `distributors_zip` varchar(45) NOT NULL,
  `distributors_email` varchar(45) NOT NULL,
  `distributors_phonenumber` int NOT NULL,
  PRIMARY KEY (`distributorsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
