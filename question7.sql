/*
(Iteration) Write a PL/SQL Procedure that examines all the numbers from 1 to 999, displaying all those 
for which the sum of the cubes of the digits equal the number itself. Display the output on the screen 
using dbms_output.put_line.

*/


declare
    summ number;
    cubic number;
    numm number;
    l_digit number;
begin
    for i in 1..999 loop
        numm:=i;
        summ:=0;
        while numm!=0 loop
            l_digit:= mod(numm,10);
            cubic:= l_digit*l_digit*l_digit;
            summ:= summ+cubic;
            numm:= floor(numm/10);
            end loop;
        if summ=i then
            dbms_output.put_line(i);
            end if;
    end loop;

end;