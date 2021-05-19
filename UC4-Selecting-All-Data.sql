create database emplyoee_pay;
use emplyoee_pay;
----UC2-----
create table employee_payroll 
(ID int NOT NULL identity(1,1) primary key,
Name varchar (200),
Salary float,
startdate date,
);
-----UC3-----
----inserting data in table----
insert into employee_payroll
values('Nilima' , 2000 , '2020-03-03'),
('Naina' ,4000,'2020-03-02'),
('Snehal',5000 ,'2020-03-04'),
('Aishwarya',7000 ,'2020-03-05');
------UC4-------
--------Selecting all data from database---------
select * from emplyoee_pay;
