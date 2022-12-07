
Drop table tempp cascade constraints;
create table tempp(
	item number,
	square number,
	CUBIC number
	

);

CREATE OR REPLACE PROCEDURE Proc_1_2018_1_60_028
IS
 num number:=028;
BEGIN
    dbms_output.put_line('Student ID: 2018-1-60-028');
	insert into tempp values(num, num*num,num*num*num);

 
END;
/
EXECUTE Proc_1_2018_1_60_028;
select * from tempp;
