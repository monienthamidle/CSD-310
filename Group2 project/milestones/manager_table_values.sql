-- selecting the bacchus database
use bacchus_winery;

-- insert into managers records
INSERT INTO `managers`(EmployeeID,promotionDate,positionID)
	VALUES((SELECT EmployeeID FROM employee WHERE empF_name = 'Stan'), '2000-02-02',(SELECT positionID FROM position WHERE position_title = 'inventory_managers'));

INSERT INTO `managers`(EmployeeID,promotionDate,positionID)
	VALUES((SELECT EmployeeID FROM employee WHERE empF_name = 'Davis'), '2000-02-04',(SELECT positionID FROM position WHERE position_title = 'inventory_managers'));

INSERT INTO `managers`(EmployeeID,promotionDate,positionID)
	VALUES((SELECT EmployeeID FROM employee WHERE empF_name = 'Janet'), '2006-06-28',(SELECT positionID FROM position WHERE position_title = 'payroll_manager'));

INSERT INTO `managers`(EmployeeID,promotionDate,positionID)
	VALUES((SELECT EmployeeID FROM employee WHERE empF_name = 'Henry'), '2007-01-02',(SELECT positionID FROM position WHERE position_title = 'production_manager'));

INSERT INTO `managers`(EmployeeID,promotionDate,positionID)
	VALUES((SELECT EmployeeID FROM employee WHERE empF_name = 'Roz'), '2007-11-10',(SELECT positionID FROM position WHERE position_title = 'marketing_manager'));