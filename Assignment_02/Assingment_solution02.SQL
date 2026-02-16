
SQL> CREATE TABLE Department (
  2      DepartmentID INT PRIMARY KEY,
  3      DepartmentName VARCHAR(50),
  4      OfficeLocation VARCHAR(50)
  5  );

Table created.

SQL> CREATE TABLE Course11(
  2    CourseID INT PRIMARY KEY,
  3  CourseName VARCHAR(50),
  4   Credits INT,
  5  DepartmentID INT,
  6  FacultyID INT,
  7   FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
  8  FOREIGN KEY (FacultyID) REFERENCES Faculty1(FacultyID)
  9  );

Table created.


SQL> CREATE TABLE Studentsssss1 (
  2   StudentID INT PRIMARY KEY,
  3    Name VARCHAR(50),
  4   DateOfBirth DATE,
  5   Gender CHAR(1),
  6   ContactNumber VARCHAR(15),
  7   DepartmentID INT,
  8  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
  9  );

Table created.

SQL> CREATE TABLE Faculty1 (
  2    FacultyID INT PRIMARY KEY,
  3   Name VARCHAR(50),
  4  Designation VARCHAR(30),
  5   Email VARCHAR(50),
  6   DepartmentID INT,
  7   FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
  8  );

Table created.

CREATE TABLE Enrollment1 (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Semester VARCHAR2(10),
    Grade CHAR(2),

    CONSTRAINT fk_student 
    FOREIGN KEY (StudentID) 
    REFERENCES Studentssss1(StudentID),

    CONSTRAINT fk_course 
    FOREIGN KEY (CourseID) 
    REFERENCES course11(CourseID)
);
Table created.



 