
---1. Write a PL/SQL code to calculate total and percentage of marks of a student in four subjects.
set serveroutput on;
declare
rollno number;
mark1 number;
mark2 number;
mark3 number;
mark4 number;
total number;
percentage number(8,2);
begin
rollno:=&rollno;
mark1:=&mark1;
mark2:=&mark2;
mark3:=&mark3;
mark4:=&mark4;
total:=mark1+mark2+mark3+mark4;
percentage:=(total/400)*100;
dbms_output.put_line ('Student Marklist:');
dbms_output.put_line ('Total Mark = '|| total); 
dbms_output.put_line ('Percentage ='||percentage);
end;
/

SQL> @pgm1.sql
Enter value for rollno: 1
old  10: rollno:=&rollno;
new  10: rollno:=1;
Enter value for mark1: 23
old  11: mark1:=&mark1;
new  11: mark1:=23;
Enter value for mark2: 24
old  12: mark2:=&mark2;
new  12: mark2:=24;
Enter value for mark3: 23
old  13: mark3:=&mark3;
new  13: mark3:=23;
Enter value for mark4: 28
old  14: mark4:=&mark4;
new  14: mark4:=28;
Student Marklist:
Total Mark = 98
Percentage =24.5

PL/SQL procedure successfully completed.

