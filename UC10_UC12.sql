---Creating Database
create database emplyoee_payroll_database;
use emplyoee_payroll_database;
---Creating tableof name employeepayroll
create table employee_payrolll
(EmployeeID int NOT NULL identity(1,1) primary key,
EmployeeName varchar (200),
PhoneNumber varchar(300),
Address varchar(255),
Department varchar(255),
Gender char (1),
BasicPay float,
Deduction float,
Taxablepay float,
Tax float,
Netpay float,
Startdate date,
City varchar(255),
Country varchar (255),
);
--for showing table
select * from employee_payrollser;
----inserting data in table----
insert into employee_payrollser
values('Nilima' ,8787878787,'Pune','IT','F' ,20000 ,2000,500,200,2000, 
'2020-03-03','Pune','India');
insert into employee_payrollser
values('Terisa' ,89884878477,'post chohotta','HR','F' ,50000 ,2000,500,200,2000, 
'2020-05-06','Pune','India');
insert into employee_payrollser
values('Ritesh' ,7485742637,'Akot','Development','M' ,70000 ,2000,500,200,2000, 
'2020-07-06','Mumbai','India');
insert into employee_payrollser
values('Shiivam' ,87797857637,'yeoda','Testing','M' ,30000 ,2000,500,200,2000, 
'2020-07-08','Nagpur','India');
---showing table
select * from employee_payrollser;
--showing specific data of employee name
select * from employee_payrollser where EmployeeName='Terisa';
-----------------------------------------------------------

---------------create tables for ER Diagram --------------
---Employeee,Employee+Department,Department,Address,Payroll
--Insert Data into that tables
-------UC11-12------
create table Employeee
(EmployeeID int NOT NULL identity(1,1) primary key,
EmployeeName varchar (200),
PhoneNumber varchar(300),
Gender char(1),
payrollid int NOT NULL FOREIGN KEY REFERENCES EmployeeePayroll(payrollid),
startdate date, 
);
----Showing table
select * from Employeee;
-------------------------------------------------------------------
-----Create Address Table
create table Addresss(EmployeeID int NOT NULL primary key  FOREIGN KEY REFERENCES Employee(EmployeeID),
City varchar(200),
State varchar(200),
);
select * from Addresss;
-----------------------------------------------------------------
-----Create table 
CREATE TABLE EmployeeePayroll(payrollid int NOT NULL primary key,
Basicsalary int ,
Deduction int,
tax as (Basicsalary-Deduction)persisted,
Netpay as (Basicsalary-Deduction-0.02 *(Basicsalary-Deduction)) persisted,
IncomeTax as 0.02*(Basicsalary-Deduction)persisted
);
----Table for EmployeePayroll
select * from EmployeeePayroll;
---------------------------------------------------------------
CREATE TABLE DEPARTMENT(DepartmentId int NOT NULL identity(1,1)primary key,
DepartmentName varchar(200)not null UNIQUE
);
----show table
select * from DEPARTMENT;
-------------------------------------------------------------------
CREATE TABLE EMPLOYEEDEPARTTMENT(EmployeeID INT NOT NULL FOREIGN KEY REFERENCES Employee(EmployeeID),DepartmentId int not null foreign key references Department(DepartmentId));
select * from EMPLOYEEDEPARTTMENT;
------------------------------------------------------------------
INSERT INTO Employeee Values
('Nilima',9877668899,'F','3','2020-05-06'),
('Ritesh',9877644899,'M','3','2020-03-06'),
('Snehal',98765678,'F','3','2020-02-06'),
('Aish',9822224449,'F','3','2020-07-06'),
('Khush',98773566499,'F','3','2020-08-06');
select * from Employeee;
----------------------------------------------------------
INSERT INTO EmployeeePayroll VALUES
(1,50500,2000),
(2,55000,3000),
(3,70000,4000);
select * from EmployeeePayroll;
----------------------------------------------------------
INSERT INTO DEPARTMENT VALUES
('IT'),
('HR'),
('SALES')
;
select * from DEPARTMENT;
-----------------------------------------------------------
INSERT INTO EMPLOYEEDEPARTTMENT VALUES
(1,3);
SELECT * from EMPLOYEEDEPARTTMENT;
-----------------------------------------------------------
INSERT INTO  Addresss  VALUES
(1,'Pune','Maharashtra');
select * from Addresss;
-----------------------------------------------------------
-----For Employeee.payrollid == EmployeeePayroll.payrollid
select EmployeeID,EmployeeName,IncomeTax
from Employeee,EmployeeePayroll 
where Employeee.payrollid=EmployeeePayroll.payrollid;
-----------------------------------------------------------
select EmployeeID,EmployeeName,IncomeTax 
from Employeee,EmployeeePayroll
where EmployeeName='Ritesh' and 
Employeee.payrollid=EmployeeePayroll.payrollid;
-----------------------------------------------------------
select EmployeeID,EmployeeName,IncomeTax 
from Employeee,EmployeeePayroll
where startdate between CAST('2012-06-02' as date) and 
GETDATE() and Employeee.payrollid=EmployeeePayroll.payrollid;

---------------------------------------------------------------

