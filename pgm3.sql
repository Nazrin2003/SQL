--3. Write a PL/SQL code to display the job details of the person with employee number 12. 
--(Use the concept of "%rowtype")
DECLARE
	v_emp employee82%rowtype;
BEGIN
	select * into v_emp from employee82 where emp_id = 12;
	DBMS_OUTPUT.PUT_LINE ('***********************************');
	DBMS_OUTPUT.PUT_LINE ('Faculty Name: '||v_emp.emp_name); 
	DBMS_OUTPUT.PUT_LINE ('Joining Date: '||v_emp.emp_join_date);
	DBMS_OUTPUT.PUT_LINE ('Salary: '||v_emp.emp_salary); 
	DBMS_OUTPUT.PUT_LINE ('************************************');
END;
/


SQL> @pgm3.sql
***********************************
Faculty Name: Neha
Joining Date: 08-AUG-22
Salary: 83000
************************************

PL/SQL procedure successfully completed.


