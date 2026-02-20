--PART A:Student-Enrollment Relationship
SELECT S.StudentID, S.Name, E.CourseID
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID;

SELECT S.Name, E.Semester
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID;

SELECT S.Name, E.Grade
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID;

--PART B: COURSE-Faculty Relationship

SELECT C.CourseName, C.Credits, F.Name
FROM Course11 C
INNER JOIN Faculty1 F
ON C.FacultyID = F.FacultyID;

SELECT C.CourseName
FROM Course11 C
INNER JOIN Faculty1 F
ON C.FacultyID = F.FacultyID
WHERE F.FacultyID = '101';

SELECT F.Name, F.Designation, C.CourseName
FROM Faculty1 F
INNER JOIN Course11 C
ON F.FacultyID = C.FacultyID;

--PART C: Student-Course-Enrollment Relationship
SELECT S.Name, C.CourseName
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID
INNER JOIN Course11 C
ON E.CourseID = C.CourseID;

SELECT S.Name, C.CourseName, E.Semester
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID
INNER JOIN Course11 C
ON E.CourseID = C.CourseID;

SELECT S.Name, C.CourseName, E.Grade
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID
INNER JOIN Course11 C
ON E.CourseID = C.CourseID
WHERE E.Semester = '5th';

SELECT C.CourseName
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID
INNER JOIN Course11 C
ON E.CourseID = C.CourseID
WHERE S.StudentID = '23105128008';

--PART D: Department-Based JOIN Queries

SELECT S.Name, S.DepartmentID, C.CourseName
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID
INNER JOIN Course11 C
ON E.CourseID = C.CourseID;

SELECT D.DepartmentID, D.DepartmentName, C.CourseName
FROM Department D
INNER JOIN Course11 C
ON D.DepartmentID = C.DepartmentID;

SELECT F.Name, D.DepartmentName
FROM Faculty1 F
INNER JOIN Department D
ON F.DepartmentID = D.DepartmentID;

--PART E: Filtering and Sorting

SELECT S.Name, C.CourseName
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID
INNER JOIN Course11 C
ON E.CourseID = C.CourseID
WHERE S.DepartmentID = '101';

SELECT S.Name, C.CourseName
FROM Studentsssss1 S
INNER JOIN Enrollment1 E
ON S.StudentID = E.StudentID
INNER JOIN Course11 C
ON E.CourseID = C.CourseID
ORDER BY S.Name ASC;

SELECT F.Name, C.CourseName
FROM Faculty1 F
INNER JOIN Course11 C
ON F.FacultyID = C.FacultyID
ORDER BY C.Credits DESC;

--PART F:Analytical JOIN Queries
SELECT C.CourseName, COUNT(E.StudentID) AS Total_Students
FROM Course11 C
INNER JOIN Enrollment1 E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;

SELECT F.Name, COUNT(C.CourseID) AS Total_Courses
FROM Faculty1 F
INNER JOIN Course11 C
ON F.FacultyID = C.FacultyID
GROUP BY F.Name;

SELECT D.DepartmentName, COUNT(S.StudentID) AS Total_Students
FROM Department D
INNER JOIN Studentsssss1 S
ON D.DepartmentID = S.DepartmentID
GROUP BY D.DepartmentName;

SELECT C.CourseName, MAX(E.Grade) AS Max_Grade
FROM Course11 C
INNER JOIN Enrollment1 E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;
