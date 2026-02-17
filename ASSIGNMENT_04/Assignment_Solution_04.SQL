PART A-BASIC OF DATA DISPLAY(ALIASES).

SELECT DepartmentID AS Dept_ID,
  2         DepartmentName AS Dept_Name,
  3         OfficeLocation AS Office_Location
  4  FROM Department;


SQL> SELECT StudentID AS Roll_No,
  2         Name AS Student_Name,
  3         DepartmentID AS Dept_ID
  4  FROM Studentsssss1;


SQL> SELECT FacultyID AS Faculty_ID,
  2         Name AS Faculty_Name,
  3         Designation AS Faculty_Designation,
  4         Email AS Faculty_Email
  5  FROM Faculty1;


SQL> SELECT CourseID AS Course_ID,
  2         CourseName AS Course_Name,
  3         Credits AS Course_Credits,
  4         DepartmentID AS Dept_ID,
  5         FacultyID AS Faculty_ID
  6  FROM Course11;


SQL> SELECT EnrollmentID AS Enroll_ID,
  2         StudentID AS Student_ID,
  3         CourseID AS Course_ID,
  4         EnrollmentDate AS Enroll_Date,
  5         Semester AS Semester_No,
  6         Grade AS Final_Grade
  7  FROM Enrollment1;

PART B-WHERE CLAUSE.

SQL> SELECT * FROM Studentsssss1
  2  WHERE DepartmentID = 101;


SQL> SELECT * FROM Studentsssss1
  2  WHERE Gender = 'F';


SQL> SELECT * FROM Faculty1
  2  WHERE Designation = 'Associate Professor';


SQL> SELECT * FROM Faculty1
  2  WHERE DepartmentID = 102;


SQL> SELECT * FROM Course11
  2  WHERE Credits >= 4;


SQL> SELECT * FROM Studentsssss1
  2  WHERE DateOfBirth > '2003-02-01';



 SELECT * FROM Enrollment1
  2  WHERE Semester = '5th';

PART-C SORTING AND LIMITING.

SQL> SELECT * FROM Studentsssss1
  2  ORDER BY Name ASC;


SQL> SELECT * FROM Studentsssss1
  2  ORDER BY DateOfBirth DESC;

 SELECT * FROM Faculty1
  2  ORDER BY Designation ASC;


SQL> SELECT * FROM Course11
  2  ORDER BY Credits DESC;


SQL> SELECT * FROM Course11
  2  FETCH FIRST 3 ROWS ONLY;

PART-D 








