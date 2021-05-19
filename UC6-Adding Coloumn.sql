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
select * from emplyoee_pay;
--------UC5---------
---retriving specific data from particular table-----
select Name , Salary from emplyoee_payroll where Name='Naina';
---selecting all columns from employee payroll table with condition for date---
select * from employee_payroll where startdate between CAST ('2020-03-05' as date) and getdate();
---for current date with time---
select getdate();
---for getting only date not time---
select convert(date,getdate());
--Cast--
select cast (getdate() as date);
----used to get time from getdate----
select convert (time,getdate());
----UC6---
---Ability to add Column---
Alter table emplyoee_payroll add Gender char(1);
select *from emplyoee_payroll;
update employee_payroll set Salary=20000 where ID=3 ;
select * from employee_payroll;