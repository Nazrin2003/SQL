sqlplus mca82/mca82@172.16.50.33/FISAT

create table Instructor82(Id int,Name varchar(20),Dept_Name varchar(20),Salary numeric(8,2));

insert into Instructor82 values(3,'Nimal','MBA',40000);

select * from Instructor82;

select * from Instructor82 where dept_name='MCA';

select Name,Salary from Instructor82;

select Name,Salary/12 as monthly_salary from Instructor82;


SET LINESIZE 120
SET PAGESIZE 50

COLUMN emp_id        FORMAT 99999
COLUMN emp_name      FORMAT A20
COLUMN emp_email     FORMAT A30
COLUMN emp_salary    FORMAT 999999
COLUMN emp_join_date FORMAT A15
COLUMN dept_id       FORMAT 999

SELECT emp_id, emp_name, emp_email, emp_salary, emp_join_date, dept_id
FROM employee82;
