set serveroutput on;

create or replace function tot_sal (did number) return number as
    tot number;
begin
    select sum(emp_salary) into tot from employee where dept_id = did;
    return(tot);
end;
/
accept dept_id prompt 'Enter Department No.:';

Declare
    dept_id number;
    tot1 number;
Begin
    dept_id := &dept_id;
    tot1 := tot_sal(dept_id);
    dbms_output.put_line('Total salary of the given department is:' || tot1);
End;
/
