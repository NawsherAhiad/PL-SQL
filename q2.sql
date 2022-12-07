--Question 2
CREATE OR REPLACE PROCEDURE Proc_2_2018_1_60_028(s1 IN number, s2 IN number,s3 IN number)
IS
 
BEGIN
	dbms_output.put_line('Student ID: 2018-1-60-028');
	IF(S1 + S2 > S3) AND (S2+S3>S1) AND (S3+S1>S2) THEN
		dbms_output.put_line('they form a valid triangle');
	ELSE
		dbms_output.put_line('they do not form a valid triangle');
	END IF;
END;
/
EXECUTE Proc_2_2018_1_60_028(10,20,20);


