-- EXPERIMENT 7:
-- AIM: Write a PL/SQL procedure to find the number of employees who draw salary
-- ranging from 1000-10000, 10001-20000, 20001-30000 & above 30k from the
-- employee table.
set serveroutput on;
create or replace procedure check_count as
cursor cur_emp is select emp_salary from employee82;
c_10k number;
c_20k number;
c_30k number;
c_more number;
v_cur cur_emp%rowtype;
begin
c_10k := 0;
c_20k := 0;
c_30k := 0;
c_more := 0;
open cur_emp;
loop
fetch cur_emp into v_cur;
exit when cur_emp%notfound;
if (v_cur.emp_salary >= 1000) and (v_cur.emp_salary <= 10000) then
c_10k := c_10k + 1;
elsif (v_cur.emp_salary >= 10001) and (v_cur.emp_salary <= 20000) then
c_20k := c_20k + 1;
elsif (v_cur.emp_salary >= 20001) and (v_cur.emp_salary <= 30000) then
c_30k := c_30k + 1;
else
c_more := c_more + 1;
end if;
end loop;
close cur_emp;
dbms_output.put_line('No. of employees with salary in the range 1000-10000 ' ||c_10k);
dbms_output.put_line('No. of employees with salary in the range 10001-20000 ' ||c_20k);
dbms_output.put_line('No. of employees with salary in the range 20001-30000 ' ||c_30k);
dbms_output.put_line('No. of employees with salary more than 30000 ' || c_more);
end;
/
begin
dbms_output.put_line('Count of Employees in a particular salary range');
dbms_output.put_line('-----------------------------------------------');
check_count();
end;
/
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
SQL> @pgm7.sql

Procedure created.

Count of Employees in a particular salary range
-----------------------------------------------
No. of employees with salary in the range 1000-10000 0
No. of employees with salary in the range 10001-20000 0
No. of employees with salary in the range 20001-30000 0
No. of employees with salary more than 30000 17

PL/SQL procedure successfully completed.
