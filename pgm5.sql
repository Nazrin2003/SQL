accept v_id prompt 'Enter the id to search :';
DECLARE
   emp employee82%rowtype;
   v_id number;
BEGIN
   v_id:=&v_id;
   select * into emp from employee82 where emp_id=v_id;
   dbms_output.put_line('-----------------------------------------------------');
    dbms_output.put_line('Name :' ||emp.emp_name);
    dbms_output.put_line('Join date :' ||emp.emp_join_date);
    dbms_output.put_line('Salary:' ||emp.emp_salary);
    dbms_output.put_line('-----------------------------------------------------');
    EXCEPTION
         when no_data_found then
          dbms_output.put_line('No details for the employee with id  ' || v_id);
END;
/


SQL> @pgm5.sql
Enter the id to search :14
No details for the employee with id  14

PL/SQL procedure successfully completed.

SQL> @pgm5.sql
Enter the id to search :12
-----------------------------------------------------
Name :Neha
Join date :08-AUG-22
Salary:83000
-----------------------------------------------------

PL/SQL procedure successfully completed.


