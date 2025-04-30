SET VERIFY OFF
DECLARE
    n number;
    i number:=1;
    t number:=0;
    cursor emp is select emp_salary from employee82;
    cemp emp%rowtype;
BEGIN
   n:=&n;
   open emp;
   WHILE (i<=n)
   LOOP
           fetch emp into cemp;
           t:=t+cemp.emp_salary;
           i:=i+1;
   END LOOP;
   dbms_output.put_line('-------------------------------------------------------------');
   dbms_output.put_line('Total salary of ' || n || ' employee is  ' || t );
   dbms_output.put_line('-------------------------------------------------------------');
   close emp;
END;
/

SQL> @pgm4.sql
Enter value for n: 3
-------------------------------------------------------------
Total salary of 3 employee is  168000
-------------------------------------------------------------

PL/SQL procedure successfully completed.


