---Creating Database
create database emplyoee_payroll_database;
use emplyoee_payroll_database;
---Creating tableof name employeepayroll
create table employee_payroll 
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
select * from employee_payroll;
----inserting data in table----
insert into employee_payroll
values('Nilima' ,8787878787,'Pune','IT','F' ,20000 ,2000,500,200,2000, 
'2020-03-03','Pune','India');
insert into employee_payroll
values('Terisa' ,89884878477,'post chohotta','HR','F' ,50000 ,2000,500,200,2000, 
'2020-05-06','Pune','India');
insert into employee_payroll
values('Ritesh' ,7485742637,'Akot','Development','M' ,70000 ,2000,500,200,2000, 
'2020-07-06','Mumbai','India');
insert into employee_payroll
values('Shiivam' ,87797857637,'yeoda','Testing','M' ,30000 ,2000,500,200,2000, 
'2020-07-08','Nagpur','India');
---showing table
select * from employee_payroll;
--showing specific data of employee name
select * from employee_payroll where EmployeeName='Terisa';