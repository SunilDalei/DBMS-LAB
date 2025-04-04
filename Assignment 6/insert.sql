-->  Employee Detials
INSERT INTO Employee_Details VALUES ('John', 'A', 'Doe', '111223333', '15-MAR-1995', '123 Main St', 'M', 3500.00, NULL, 1, 'A+');
INSERT INTO Employee_Details VALUES ('Jane', 'B', 'Smith', '222334555', '20-JUL-1990', '456 Oak Ave', 'F', 4500.00, NULL, 2, 'B-');
INSERT INTO Employee_Details VALUES ('Alice', 'C', 'Johnson', '333445666', '11-JUN-1982', '789 Pine Blvd', 'F', 6000.00, NULL, 3, 'O+');
INSERT INTO Employee_Details VALUES ('Bob', 'D', 'Williams', '444556777', '29-AUG-1975', '101 Maple Rd', 'M', 5500.00, NULL, 1, 'B+');
INSERT INTO Employee_Details VALUES ('Charlie', 'E', 'Brown', '555667888', '17-FEB-1992', '202 Cedar St', 'M', 3000.00, NULL, 2, 'A+');

-->> Departments
INSERT INTO Departments VALUES (1, 'Marketing', '111223333', '01-MAY-2010');
INSERT INTO Departments VALUES (2, 'Sales', '222334555', '14-AUG-2015');
INSERT INTO Departments VALUES (3, 'Engineering', '333445666', '21-SEP-2019'); 
INSERT INTO Departments VALUES (4, 'Legal Advisors', '444555666', '21-SEP-2009'); 
INSERT INTO Departments VALUES (5, 'Productions', '666666777', '21-SEP-2009'); 


-->>Department_locations
INSERT INTO Department_locations VALUES (1, 'New York');
INSERT INTO Department_locations VALUES (1, 'San Francisco');
INSERT INTO Department_locations VALUES (2, 'Chicago');
INSERT INTO Department_locations VALUES (2, 'Los Angeles');
INSERT INTO Department_locations VALUES (3, 'Seattle');


-->>Project Table 
INSERT INTO Project VALUES (1, 'Super', 'New York', 1);
INSERT INTO Project VALUES (2, 'TechUpgrade', 'Seattle', 3);
INSERT INTO Project VALUES (3, 'AdCampaign', 'San Francisco', 1);
INSERT INTO Project VALUES (4, 'SalesBoost', 'Los Angeles', 2);


-->> Employee_Project
INSERT INTO Employee_Project VALUES ('111223333', 1, 40);
INSERT INTO Employee_Project VALUES ('222334555', 3, 35);
INSERT INTO Employee_Project VALUES ('333445666', 2, 50);
INSERT INTO Employee_Project VALUES ('444556777', 4, 45);
INSERT INTO Employee_Project VALUES ('555667888', 2, 30);


-->>Dependent Values;
INSERT INTO Dependent VALUES ('111223333', 'Marketing', 'F', '10-MAR-2010', 'Wife');
INSERT INTO Dependent VALUES ('222334555', 'Sales', 'M', '19-AUG-1993', 'Son');
INSERT INTO Dependent VALUES ('333445666', 'Engineering', 'F', '22-APR-2017', 'Daughter');
INSERT INTO Dependent VALUES ('444556777', 'Marketing', 'F', '02-JAN-2005', 'Daughter');
INSERT INTO Dependent VALUES ('555667888', 'Sales', 'M', '15-JUL-2002', 'Son');

