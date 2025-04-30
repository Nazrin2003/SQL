SET SERVEROUTPUT ON;

DECLARE
    a NUMBER;
    c NUMBER;
    n NUMBER;
    rev NUMBER := 0;
    r NUMBER;

    FUNCTION reverse_it(x IN NUMBER) RETURN NUMBER AS
        z NUMBER;
    BEGIN
        n := x;
        WHILE (n > 0) LOOP
            r := MOD(n, 10);
            rev := rev * 10 + r;
            n := FLOOR(n / 10);
        END LOOP;
        z := rev;
        RETURN z;
    END;

BEGIN
    a := &a;
    c := reverse_it(a);
    DBMS_OUTPUT.PUT_LINE('The reverse of number is ' || c);
END;
/


SQL> @pgm8.sql
Enter value for a: 23
old  22:     a := &a;
new  22:     a := 23;
The reverse of number is 32

PL/SQL procedure successfully completed.
