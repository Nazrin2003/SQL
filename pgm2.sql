declare
     max_sal number(8,2);
     v_empcount number(4);
     v_empname employee82.emp_name%type;
     v_deptid employee82.dept_id%type;
begin
   select max(emp_salary) into max_sal from employee82;
   dbms_output.put_line('Employee details:');
   dbms_output.put_line('The highest salary is ' || max_sal);
   
   select count(emp_id) into v_empcount from employee82 where emp_salary =max_sal;
   if v_empcount > 1 then
       dbms_output.put_line('There are more than one employees');
   else
       select emp_name,dept_id into v_empname,v_deptid from employee82 where emp_salary=max_sal;
       dbms_output.put_line('----------------------------------------------');
       dbms_output.put_line('Employee :' ||v_empname);
       dbms_output.put_line('Department id :' ||v_deptid);
       dbms_output.put_line('----------------------------------------------');
   end if;
end;
/


SQL> @pgm2.sql
SP2-0310: unable to open file "pgm2.sql"
SQL> @pgm2.sql
Employee details:
The highest salary is 90000
----------------------------------------------
Employee :Niya
Department id :102
----------------------------------------------

PL/SQL procedure successfully completed.

    
