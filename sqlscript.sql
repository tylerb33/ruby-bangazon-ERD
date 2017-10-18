CREATE TABLE Customers (
    'CustomerId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'LastName' varchar(255),
    'FirstName' varchar(255),
    'AccountCreatedDate' date,
    'Active?' boolean 
),

CREATE TABLE Departments (
    'DepartmentId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'SupLastName' varchar(255),
    'SupFirstName' varchar(255),
    'Budget' money
),
CREATE TABLE Employees (
    'EmployeeId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'LastName' varchar(255),
    'FirstName' varchar(255),
    'TrainingProgramsEnrolledId' int,
    'Manager?' boolean
),
CREATE TABLE Order (
    'OrderId' int,
    'CustomerId' int
),
CREATE TABLE Products (
    'ProductId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
    'TypeId' int,
    'Price' money,
    'Title' varchar(255),
    'Description' varchar(255)
),
CREATE TABLE ProductTypes (
    'ProductTypeId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'ProductTypeTitle' varchar(255),
    'ProductId' int
),
CREATE TABLE PaymentTypes (
    'PaymentTypeId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'PaymentTypeTitle' varchar(255),
    'PaymentAccountNmbr' int
),
CREATE TABLE TrainingPrograms (
    'ProgramId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'StartDate' date,
    'EndDate' date,
    'MaxAttendance' int
),
CREATE TABLE Computers (
    'ComputerId' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'PurchaseDate' date,
    'DecommisionDate' date,
    'AssignedTo' int
)