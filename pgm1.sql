
1. Write a PL/SQL code to calculate total and percentage of marks of a student in four subjects.
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
end;
total:=mark1+mark2+mark3+mark4;
percentage:=total*0.25;
dbms_output.put_line ('Student Marklist');
dbms_output.put_line ('Total Mark = '|| total); dbms_output.put_line ('Percentage
=
'Il percentage);
