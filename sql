sqlplus mca82/mca82@172.16.50.33/FISAT

create table Instructor82(Id int,Name varchar(20),Dept_Name varchar(20),Salary numeric(8,2));

insert into Instructor82 values(3,'Nimal','MBA',40000);

select * from Instructor82;

select * from Instructor82 where dept_name='MCA';

select Name,Salary from Instructor82;

select Name,Salary/12 as monthly_salary from Instructor82;


