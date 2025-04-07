SET SERVEROUTPUT ON;
ACCEPT a
DECLARE
    a NUMBER;
    b NUMBER;
BEGIN
    a := &a;
    b := &b;
    DBMS_OUTPUT.PUT_LINE('Sum :'|| (a+b));
END;
/