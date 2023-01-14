/*
 All the procedures used in the code should be named according to the following format.
Proc_<question-number>_<student-id>
Suppose, you are answering question 1 and your student ID is 2022-1-60-001 then the procedure 
name should be – Proc_1_2022-1-60-001
Consider the following Procedure.
-- Question 1
CREATE OR REPLACE PROCEDURE Proc_1_2022_1_60_001 IS
BEGIN
 dbms_output.put_line('Student ID: 2022-1-60-001');
 dbms_output.put_line('The rest of the computation will 
follow.');
 
END;
/
EXECUTE Proc_1_2022_1_60_001;



Inside the body of the Procedure it must display your student id first as shown in the above 
procedure. 
• The function and the trigeers should be also named in the same way. 
• You must create the related tables and put sufficient rows into the table, if required. 

*/





-- Question 1

/*
(Basic Table Manipulation) Write a PL/SQL Procedure that declares an integer variable called num, 
assigns a value to it, and computes and inserts into the tempp table the value of the variable itself, its 
square, and its cube. Consider the following DDL statements to create tempp table.
CREATE TABLE tempp ( item number, square number, CUBE number );


*/

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




--Question 2
/*


(Conditional Statements) Write a PL/SQL Procedure that asks for three positive integers representing 
the sides of a triangle, and determine whether they form a valid triangle. Hint: In a triangle, the sum of 
any two sides must always be greater than the third side. Display the output on the screen using 
dbms_output.put_line.


*/
CREATE OR REPLACE PROCEDURE Proc_2_2018_1_60_028(s1 IN number, s2 In number,s3 IN number)
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






--Question 3

/*
(Conditional Statements) Suppose the grade obtained by a student depends upon his scores and the 
grading rule is as follows. :-
Scores Grades
95-100 A
70-84  B
70-84  C
60-69  D
0-59   F
Write a PL/SQL Procedure that accepts a student’s marks and output his grade. Display the output on 
the screen using dbms_output.put_line


*/

CREATE OR REPLACE PROCEDURE Proc_3_2018_1_60_028(score In number)
IS
		
BEGIN
	dbms_output.put_line('Student ID: 2018-1-60-028');
	IF SCORE>=95 AND SCORE<=100 THEN
		dbms_output.put_line('Grade: A');
	ELSIF SCORE>=85 AND SCORE<=94 THEN
		dbms_output.put_line('Grade: B');
	ELSIF SCORE>=70 AND SCORE<=84 THEN
		dbms_output.put_line('Grade: C');
	ELSIF SCORE>=60 AND SCORE<=69 THEN
		dbms_output.put_line('Grade: D');
	
	ELSIF SCORE>=0 AND SCORE<=59 THEN
		dbms_output.put_line('Grade: F');
	ELSE
	    dbms_output.put_line('WRONG INPUT');
	END IF;
END;
/

EXECUTE Proc_3_2018_1_60_028(85);




--Question 4
CREATE OR REPLACE PROCEDURE Proc_4_2018_1_60_028(product_code IN NUMBER, amount IN number)
IS
	
	discount number;
	final_amount number;
BEGIN
    dbms_output.put_line('Student ID: 2018-1-60-028');
    IF product_code=1 and amount>=5000 THEN
        discount:=amount*0.12;
        final_amount:=amount-discount;
       
        
    ELSIF product_code=1 and amount>=3000 THEN
        discount:=amount*0.08;
        final_amount:=amount-discount;
       
        
    ELSIF product_code=1 and amount<3000 THEN
        discount:=amount*0.02;
        final_amount:=amount-discount;

        
        
    
    ELSIF product_code=2 and amount>=20000 THEN
        discount:=amount*0.10;
        final_amount:=amount-discount;
        
        
    ELSIF product_code=2 and amount>=15000 THEN
        discount:=amount*0.05;
        final_amount:=amount-discount;
        
        
    ELSIF product_code=3 and amount>=50000 THEN
        discount:=amount*0.10;
        final_amount:=amount-discount;
        
    ELSIF product_code=3 and amount>=25000 THEN
        discount:=amount*0.05;
        final_amount:=amount-discount;
        
    ELSE
    
        dbms_output.put_line(amount);
        
    END IF;
    dbms_output.put_line('Net order amount: '|| final_amount);
    
END;
/

EXECUTE Proc_4_2018_1_60_028(1,6000);





--Question 5
CREATE OR REPLACE FUNCTION Func_5_2018_1_60_028 (r NUMBER)
RETURN number
IS
BEGIN
    RETURN r*r*r;
END;
/


CREATE OR REPLACE PROCEDURE Proc_5_2018_1_60_028
IS
    num number;
    summation number;
    r number ;
BEGIN
	dbms_output.put_line('Student ID: 2018-1-60-028');
    FOR i IN 1..999
    LOOP
        num:= i;
        summation:=0;
        WHILE num!=0
        LOOP
            r:= num mod 10;
            r:=Func_5_2018_1_60_028(r);
            summation:=summation+r;
            num:= Trunc(num / 10); 
        END LOOP;
        
        IF summation= i THEN
             dbms_output.put_line(summation);
        END IF;       
    
    END LOOP;

END;
/
EXECUTE Proc_5_2018_1_60_028;





--Question 6
CREATE OR REPLACE PROCEDURE Proc_6_2018_1_60_028 (word IN varchar2)
IS
i number;
flag BOOLEAN:=FALSE;
BEGIN
    dbms_output.put_line('Student ID: 2018-1-60-028');
    i := length(word);
    
    FOR j IN 1..length(word)
    LOOP
        IF NOT(substr(word,i,1) = substr(word,j,1)) THEN
            flag := TRUE;
            EXIT;
        END IF;
        i := i-1;
    END LOOP;
    
    IF flag = FALSE THEN
        dbms_output.put_line(word|| ' is Palindrome');  
    ELSE
        dbms_output.put_line(word|| ' is not Palindrome');
    
    END IF;
END;
/
EXECUTE Proc_6_2018_1_60_028('LOL');





--Question 7
Drop table CUSTOMER cascade constraints;
CREATE TABLE CUSTOMER (
    Meter_Number varchar2(4), 
    Meter_Type char(1),
    Previous_Reading number, 
    Current_Reading number, 
    Customer_Type char(1), 
    Last_Bill_payment char(1),
    check(Last_Bill_payment = 'Y' OR Last_Bill_payment = 'N') 
);

INSERT INTO CUSTOMER  VALUES(1000, 'S', 3000, 5000, 'A', 'Y');
INSERT INTO CUSTOMER  VALUES(1001, 'T', 3000, 5000, 'R', 'Y');
INSERT INTO CUSTOMER  VALUES(1002, 'S', 400,  2000, 'R', 'Y');

Drop table BILL cascade constraints;
CREATE TABLE BILL (
    Meter_Number varchar2(4) PRIMARY KEY, 
    units number, 
    rate number, 
    amount number, 
    surcharge number, 
    Excise number, 
    Net number 
);


CREATE OR REPLACE PROCEDURE Proc_7_2018_1_60_028
IS

CURSOR arr IS
    SELECT *
    FROM CUSTOMER;

units_used number;
rate number;
amount number;
surcharge number;
excise number;
net number;

BEGIN
    dbms_output.put_line('Student ID: 2018-1-60-028');
    FOR i IN arr
    LOOP
        units_used:= i.current_reading -i.previous_reading;
        IF i.customer_type ='A' THEN
            rate:=1;
        ELSIF i.customer_type ='I' THEN
            rate:=1.25;
        ELSIF i.customer_type ='C' THEN
            rate:=1.50;
        ELSIF i.customer_type ='R' THEN
            rate:=1.30;
        END IF;
        
        amount:=rate*units_used;
        
        IF i.meter_type='S' THEN
            surcharge:=amount*0.05;
        ELSIF i.meter_type='S' THEN
            surcharge:=amount*0.10;
        END IF;
        excise:= 0.30*(amount+surcharge);
        net:=amount+surcharge+excise;
        INSERT INTO BILL VALUES(i.meter_number,units_used, rate, amount, surcharge, excise, net);
        
    END LOOP;


END;
/

EXECUTE Proc_7_2018_1_60_028;
SELECT * FROM BILL;





--Question 8

CREATE OR REPLACE FUNCTION Func_8_2018_1_60_028 (S1 NUMBER, S2 number, S3 number)
RETURN BOOLEAN
IS
BEGIN
	dbms_output.put_line('Student ID: 2018-1-60-028');
    IF(S1 + S2 > S3) AND (S2+S3>S1) AND (S3+S1>S2) THEN
		return TRUE;
	ELSE
	    return FALSE; 
		
	END IF;
END;
/


CREATE OR REPLACE PROCEDURE Proc_8_2018_1_60_028
IS
    s1 number:=10;
    s2 number:=20;
    s3 number:=20;
    ANS BOOLEAN;
BEGIN
    
    ANS:= Func_8_2018_1_60_028(s1,s2,s3);
    IF ANS=TRUE THEN
        dbms_output.put_line('they form a valid triangle');
    ELSE
        dbms_output.put_line('they do not form a valid triangle');
    END IF;
    
    
END;
/

EXECUTE Proc_8_2018_1_60_028;



--Question 9
drop table account cascade constraints;
CREATE TABLE ACCOUNT (
    Account_no varchar2(20),
    Account_Name varchar2(20),
    Account_Balance number
);


INSERT INTO ACCOUNT VALUES ('A1', 'C1', 5000);
INSERT INTO ACCOUNT VALUES ('A2', 'C2', 15000);

drop table  Transactions cascade constraints;
CREATE TABLE Transactions(
    Transaction_no NUMBER PRIMARY KEY,
    Src_Acc_no varchar2(20),
    Dst_Acc_No varchar2(20),
    Transaction_Type char(1),
    Amount number
);

CREATE OR REPLACE TRIGGER Trig_9_2018_1_60_028
AFTER INSERT
ON Transactions
FOR EACH ROW
DECLARE
    acc_bal number;
    final_acc_bal number;
    dest_acc_bal number;
    dest_final_acc_bal number;
BEGIN

    dbms_output.put_line('Student ID: 2018-1-60-028');
    SELECT Account_Balance INTO acc_bal
    FROM ACCOUNT
    WHERE account_no = :NEW.Src_Acc_no; 
    
    IF :NEW.Transaction_Type = 'W' THEN
        final_acc_bal := acc_bal - :NEW.Amount;
        
    ELSIF :NEW.Transaction_Type = 'D' THEN
        final_acc_bal := acc_bal + :NEW.Amount;
        
    ELSIF :NEW.Transaction_Type = 'T' THEN
        
        SELECT Account_Balance INTO dest_acc_bal
        FROM ACCOUNT
        WHERE Account_no = :NEW.Dst_Acc_No;

        final_acc_bal := acc_bal - :NEW.Amount;
        dest_final_acc_bal:= dest_acc_bal + :NEW.Amount;
        
        UPDATE ACCOUNT
        SET Account_Balance = dest_final_acc_bal
        WHERE Account_no = :NEW.Dst_Acc_No;
    END IF;
    
    UPDATE ACCOUNT
    SET Account_Balance = final_acc_bal
    WHERE Account_no = :NEW.Src_Acc_no;


END;
/

INSERT INTO Transactions VALUES (1,'A1', NULL, 'W', 1000);
INSERT INTO Transactions VALUES (2,'A2', NULL, 'D', 3000);
INSERT INTO Transactions VALUES (3,'A2', 'A1', 'T', 5000);

select * from account;


















	
	