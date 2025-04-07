SET SERVEROUTPUT ON;
DECLARE
    name VARCHAR2(50); 
BEGIN
    name := 'Alice';    
    dbms_output.put_line('Hi');
    DBMS_OUTPUT.PUT_LINE('Hello, ' || name);  
END;
/
