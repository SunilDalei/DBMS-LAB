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
    PRIMARY KEY (Ssn),
    FOREIGN KEY (Dept_num) REFERENCES Departments(Dept_num) on delete set NULL,
    FOREIGN KEY (Super_Ssn) REFERENCES Employee(Ssn) on delete set NULL
    );
  
  ALTER TABLE Departments
  ADD CONSTRAINT FK_Mgr_Ssn
  FOREIGN KEY(Mgr_Ssn)
  REFERENCES Employee(Ssn) on delete set NULL;

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

-- Create the Employee_Project table
CREATE TABLE Employee_Project (
        Ssn CHAR(9),
        Proj_num INT,
        Hours DECIMAL(5, 2),
        PRIMARY KEY (Ssn, Proj_num),
        FOREIGN KEY (Ssn) REFERENCES Employee(Ssn) on delete cascade,
        FOREIGN KEY (Proj_num) REFERENCES Project(Proj_num) on delete cascade
        );

-- Create the Dependent table
CREATE TABLE Dependent (
    Ssn CHAR(9),
    Dept_name VARCHAR(20),
    Gender CHAR(1),
    Bdate DATE,
    Relationship VARCHAR(20),
    PRIMARY KEY (Ssn, Dept_name),
    FOREIGN KEY (Ssn) REFERENCES Employee(Ssn) on delete cascade,
    FOREIGN KEY (Dept_name) REFERENCES Departments(Dept_name) on delete NULL
    );







