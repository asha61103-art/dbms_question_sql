
 CREATE TABLE student1(RollNo INT, Name VARCHAR(50), Dept VARCHAR(20), Age INT, Phone VARCHAR(15));
 CREATE TABLE course(courseID INT , COURSEnAME VARCHAR(50),Credits INT);
ALTER TABLE student1 ADD City VARCHAR(30);
 ALTER TABLE student1 ADD Semester INT;

 ALTER TABLE student1
  2  RENAME COLUMN Phone TO MobileNO;

 DESC student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

 INSERT INTO student1 VALUES (101, 'Asha', 'CSE' ,20, '9142846256', 'Delhi', 3);
 INSERT INTO student1 VALUES (102, 'Malti', 'ME' ,21, '9142846876', 'Mumbai', 4);
 INSERT INTO student1 VALUES (103, 'Babli', 'CSE' ,22, '9142845456', 'Kolkata', 5);
INSERT INTO student1 VALUES (104, 'Komal', 'ME' ,23, '9142845256', 'Chenai', 2);
 INSERT INTO student1 VALUES (105, 'Ananya', 'Civil' ,25, '9142846298', 'Bhopal', 7);

 SELECT *FROM student1;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Asha
CSE                          20 9142846256      Delhi
         3

       102 Malti
ME                           21 9142846876      Mumbai
         4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       103 Babli
CSE                          22 9142845456      Kolkata
         5

       104 Komal
ME                           23 9142845256      Chenai

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

       105 Ananya
Civil                        25 9142846298      Bhopal
         7


 SELECT RollNo, Name FROM student1;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Asha
       102 Malti
       103 Babli
       104 Komal
       105 Ananya

SQL> SELECT *FROM student1 WHERE Dept='CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Asha
CSE                          20 9142846256      Delhi
         3

       103 Babli
CSE                          22 9142845456      Kolkata
         5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------


 SELECT *FROM student1 WHERE Age>20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       102 Malti
ME                           21 9142846876      Mumbai
         4

       103 Babli
CSE                          22 9142845456      Kolkata
         5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       104 Komal
ME                           23 9142845256      Chenai
         2

       105 Ananya
Civil                        25 9142846298      Bhopal

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         7


 UPDATE student1
  2  SET Dept ='ECE'
  3  WHERE RollNo=101;

 UPDATE student1
  2  SET City = 'Chenai'
  3  WHERE Name='Rahul';

 UPDATE student1
  2  SET Age= Age+1;

 DELETE FROM Student1
  2  WHERE RollNo=105;

 SELECT *FROM student1;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Asha
ECE                          21 9142846256      Delhi
         3

       102 Malti
ME                           22 9142846876      Mumbai
         4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       103 Babli
CSE                          23 9142845456      Kolkata
         5

       104 Komal
ME                           24 9142845256      Chenai

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2


