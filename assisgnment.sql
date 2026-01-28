
SQL> CREATE TABLE student1(RollNo INT, Name VARCHAR(50), Dept VARCHAR(20), Age INT, Phone VARCHAR(15));

Table created.

SQL> CREATE TABLE course(courseID INT , COURSEnAME VARCHAR(50),Credits INT);

Table created.

SQL> ALTER TABLE student1 ADD City VARCHAR(30);

Table altered.

SQL> ALTER TABLE student1 ADD Semester INT;

Table altered.

SQL> ALTER TABLE student1 CHANGE Phone MobileNo VARCHAR(15);
ALTER TABLE student1 CHANGE Phone MobileNo VARCHAR(15)
                     *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option


SQL> ALTER TABLE student1
  2  RENAME COLUMN Phone TO MobileNO;

Table altered.

SQL> DESC student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> INSERT INTO student1(RollNo, Name, Dept, Age, MobileNo, City, Semester)VALUES
  2  (101, 'Asha', 'CSE' ,20, '9142846256', 'Delhi', 3),
  3  (102, 'Malti', 'ECE' ,21, '9142846246', 'Mumbai', 4),
  4  (103, 'Babli', 'CSE' ,22, '9142846756', 'Kolkata', 5),
  5  (104, 'Komal', 'ME' ,19, '9142886256', 'chenai', 2),
  6  (105, 'Ananya', 'CSE' ,23, '9187846256', 'Bhopal', 6);
(101, 'Asha', 'CSE' ,20, '9142846256', 'Delhi', 3),
                                                  *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO student1(101, 'Asha', 'CSE' ,20, '9142846256', 'Delhi', 3);
INSERT INTO student1(101, 'Asha', 'CSE' ,20, '9142846256', 'Delhi', 3)
                     *
ERROR at line 1:
ORA-00928: missing SELECT keyword


SQL> INSERT INTO student1 VALUES (101, 'Asha', 'CSE' ,20, '9142846256', 'Delhi', 3);

1 row created.

SQL> INSERT INTO student1 VALUES (102, 'Malti', 'ME' ,21, '9142846876', 'Mumbai', 4);

1 row created.

SQL> INSERT INTO student1 VALUES (103, 'Babli', 'CSE' ,22, '9142845456', 'Kolkata', 5);

1 row created.

SQL> INSERT INTO student1 VALUES (104, 'Komal', 'ME' ,23, '9142845256', 'Chenai', 2);

1 row created.

SQL> INSERT INTO student1 VALUES (105, 'Ananya', 'Civil' ,25, '9142846298', 'Bhopal', 7);

1 row created.

SQL> SELECT *FROM student1;

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


SQL> SELECT RollNo, Name FROM student1;

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


SQL> SELECT *FROM student1 WHERE Age>20;

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


SQL> UPDATE student1
  2  SET Dept ='ECE'
  3  WHERE RollNo=101;

1 row updated.

SQL> UPDATE student1
  2  SET City = 'Chenai'
  3  WHERE Name='Rahul';

0 rows updated.

SQL> UPDATE student1
  2  SET Age= Age+1;

5 rows updated.

SQL> DELETE FROM Student1
  2  WHERE RollNo=105;

1 row deleted.

SQL> SELECT *FROM student1;

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


SQL>