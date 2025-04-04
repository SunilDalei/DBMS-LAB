-- Create the Departments table
CREATE TABLE Departments ( 
    Dept_num INT PRIMARY KEY,
    Dept_name VARCHAR(20) UNIQUE NOT NULL,
    Mgr_Ssn CHAR(9),
    Mgr_startdate DATE
    );

-- Create the Employee table
CREATE TABLE Employee (
    Fname VARCHAR(10), 
    Mname VARCHAR(10),
    Lname VARCHAR(10) NOT NULL,
    Ssn CHAR(9) NOT NULL,
    Bdate DATE,
    Address VARCHAR(30),
    Gender CHAR(1), Salary DECIMAL(10, 2),
    Super_Ssn CHAR(9),
    Dept_num INT NOT NULL,
    PRIMARY KEY (Ssn)
    );

-- Create the Department_locations table
CREATE TABLE Department_locations (
           Dept_num INT,
           Location VARCHAR(30),
           PRIMARY KEY (Dept_num, Location),
           FOREIGN KEY (Dept_num) REFERENCES Departments(Dept_num)  on delete cascade
           );

-- Create the Project table
CREATE TABLE Project (
              Proj_num INT PRIMARY KEY,
              Proj_name VARCHAR(20),Proj_location VARCHAR(30),
              Dept_num INT,
              FOREIGN KEY (Dept_num) REFERENCES Departments(Dept_num) on delete set NULL
              );
INSERT INTO Departments VALUES (4, 'Legal Advisors', '444555666', '21-SEP-2009'); 
INSERT INTO Departments VALUES (5, 'Productions', '666666777', '21-SEP-2009'); 
-- Create the Employee_Project table
CREATE TABLE Employee_Project (
        Ssn CHAR(9),
        Proj_num INT,
        Hours DECIMAL(5, 2),
        PRIMARY KEY (Ssn, Proj_num)
        );

-- Create the Dependent table
CREATE TABLE Dependent (
    Ssn CHAR(9),
    Dept_name VARCHAR(20),
    Gender CHAR(1),
    Bdate DATE,
    Relationship VARCHAR(20),
    PRIMARY KEY (Ssn, Dept_name)
    );







