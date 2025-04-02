SELECT * FROM employee82;
select * from department82;

--  ------------------------------------------------------------------------------------------------ 
-- 7. Join Questions
-- -------------------------------------------------------------------------------------------------
-- Q38: Write an INNER JOIN query to list employee names and their corresponding
-- department names. 
SELECT e.emp_name, d.dept_name FROM employee82 e INNER JOIN department82 d ON e.dept_id = d.dept_id;

-- Q39: Use a LEFT JOIN to list all employees and their department names, including those
-- who do not belong to any department.
INSERT INTO employee82 VALUES(21,'Mavis',56000,TO_DATE('2023-08-05', 'YYYY-MM-DD'), NULL, 'mav@gmail.com');
INSERT INTO employee82 VALUES(22,'Levi',55000,TO_DATE('2024-08-05', 'YYYY-MM-DD'), NULL, 'levi@gmail.com');
SELECT e.emp_name, d.dept_name FROM employee82 e LEFT JOIN department82 d ON e.dept_id = d.dept_id;

-- Q40: Write a RIGHT JOIN to list all departments and their corresponding employees,
-- including departments with no employees.
SELECT e.emp_name, d.dept_name FROM employee82 e RIGHT JOIN department82 d ON e.dept_id = d.dept_id;

-- Q41: Use an OUTER JOIN to list all employees and their department names, showing NULL
-- if there is no corresponding department.
SELECT e.emp_name, d.dept_name FROM employee82 e FULL OUTER JOIN department82 d ON e.dept_id = d.dept_id;

-- ----------------------------------------------------------------------------------------------
-- 8. Arithmetic and String Operation Questions
-- ----------------------------------------------------------------------------------------------
-- Q42: Write a query to increase the salary of all employees by 5000.
UPDATE employee82 SET emp_salary = emp_salary + 5000;
SELECT emp_name,emp_salary FROM employe82;
-- Q43: Use arithmetic operations to find the new salary for employees after a 10% bonus.
-- Q44: Use the CONCAT() function to display department names followed by its location.
-- Q45: Write a query to extract the first 3 letters of the employee name.
-- Q46: Use LENGTH() to find the number of characters in the employee's name.
-- Q47: Use UPPER() to convert the employee's name to uppercase.
-- --------------------------------------------------------------------------------------------------------
-- 9. Set Operations Questions
-- ---------------------------------------------------------------------------------------------------------
-- Q48: Use UNION to combine the lists of employees who joined before 2010 and after
-- 2018.
SELECT emp_name FROM employee82 WHERE emp_join_date < TO_DATE('2010-01-01', 'YYYY-MM-DD') UNION SELECT emp_name FROM employee82 WHERE emp_join_date > TO_DATE('2018-12-31', 'YYYY-MM-DD');
SELECT emp_name FROM employee82 WHERE emp_salary >= 40000 AND emp_salary <= 50000 INTERSECT SELECT emp_name FROM employee82 WHERE emp_salary >= 40000 AND emp_salary <= 50000;

-- Q49: Use INTERSECT to find employees who get salary in the range 40k-50k.
SELECT emp_name FROM employee82 WHERE emp_salary >= 40000 AND emp_salary <= 50000 INTERSECT SELECT emp_name FROM employee82 WHERE emp_salary >= 40000 AND emp_salary <= 50000;

-- Q50: Use EXCEPT to list out the departments not in Ernakulam.
SELECT dept_name FROM department82 MINUS SELECT dept_name FROM department82 WHERE dept_location = 'Ernakulam';


