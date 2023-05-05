-- selecting the bacchus database
use bacchus_winery;

-- insert into supplier issues records
INSERT INTO `supplierissues`(issueDescription, issue_date)
	VALUES('broken bottles', '2022-12-22');

INSERT INTO `supplierissues`(issueDescription, issue_date)
	VALUES('missing lables', '2023-01-13');

INSERT INTO `supplierissues`(issueDescription, issue_date)
	VALUES('damaged corks', '2023-02-27');

INSERT INTO `supplierissues`(issueDescription)
	VALUES('Everything looks good!');	
