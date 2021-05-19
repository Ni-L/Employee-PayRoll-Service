create database emplyoee_pay;
use emplyoee_pay;
----UC2-----
create table employee_payroll 
(ID int NOT NULL identity(1,1) primary key,
Name varchar (200),
Salary float,
startdate date,
);