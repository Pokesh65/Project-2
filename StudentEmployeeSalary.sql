CREATE TABLE Employee (
  eid NUMBER PRIMARY KEY,      -- Primary Key
  date_of_join DATE,           -- Date of joining
  salary NUMBER(10)         -- Salary with precision for decimal values
);

drop table Employee;

select * from Employee;

desc Employee;

insert into Employee(eid,date_of_join,salary) values(1,'12-10-2024',50000);
insert into Employee(eid,date_of_join,salary) values(2,'04-04-2024',60000);
insert into Employee(eid,date_of_join,salary) values(3,'30-08-2024',45000);
insert into Employee(eid,date_of_join,salary) values(4,'23-10-2024',75000);
insert into Employee(eid,date_of_join,salary) values(5,'19-09-2024',80000);

--total Count of data we entered
select COUNT(*) as count from Employee;

--salary avg as average
select AVG(salary) as Average_Salary from Employee;

--minimum salary
select MIN(salary) as Minimum_Salary from Employee;

--Maximum salary
select MAX(salary) as Minimum_Salary from Employee;

--Sum Of Salary
select SUM(salary) as Sum_Of_Salary from Employee;