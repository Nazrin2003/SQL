CREATE OR REPLACE TRIGGER mytrig2
AFTER DELETE OR INSERT OR UPDATE ON employee
FOR EACH ROW
BEGIN
    IF DELETING THEN
        INSERT INTO delemployee(emp_name, dept_id)
        VALUES (:old.emp_name, :old.dept_id);

    ELSIF INSERTING THEN
        INSERT INTO newemployee(emp_name, dept_id)
        VALUES (:new.emp_name, :new.dept_id);

    ELSE
        INSERT INTO modifemployee(emp_name, dept_id, up_sal, up_date)
        VALUES (:old.emp_name, :old.dept_id, :new.emp_sal, sysdate);
    END IF;
END;
/
