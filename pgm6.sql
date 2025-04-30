create or replace procedure c_string(str1 in varchar, str2 in varchar) as
str3 varchar(20);
begin
str3 := CONCAT(str1, str2);
dbms_output.put_line('Concatenated string is: ' || str3);
end;
/
accept str1 prompt 'Enter the value of first string:';
accept str2 prompt 'Enter the value of second string:';
declare
str1 varchar(20);
str2 varchar(20);
begin
str1 := '&str1';
str2 := '&str2';
c_string(str1, str2);
end;
/