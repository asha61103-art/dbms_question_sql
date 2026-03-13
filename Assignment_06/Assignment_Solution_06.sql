--part A-Basic Aggregate Queries.

SELECT COUNT(*) AS Total_Students
FROM Studentsssss1;

SELECT COUNT(*) AS Total_Faculty
FROM Faculty1;

SELECT COUNT(*) AS Total_Courses
FROM Course11;

SELECT MAX(Credits) AS Maximum_Credits
FROM Course11;

SELECT MIN(Credits) AS Minimum_Credits
FROM Course11;

--Part-B GROUP BY ON Single TABLE.

SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Studentsssss1
GROUP BY DepartmentID;

SELECT DepartmentID, COUNT(*) AS Total_Faculty
FROM Faculty1
GROUP BY DepartmentID;

SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course11
GROUP BY DepartmentID;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment1
GROUP BY Semester;


SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment1
GROUP BY Grade;

--PART C – GROUP BY with HAVING.
SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Studentsssss1
GROUP BY DepartmentID
HAVING COUNT(*) > 3;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment1
GROUP BY Semester
HAVING COUNT(*) > 2;

SELECT Grade, COUNT(*) AS Total
FROM Enrollment1
GROUP BY Grade
HAVING COUNT(*) > 1;

SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course11
GROUP BY DepartmentID
HAVING COUNT(*) > 1;

--PART D – Aggregation with JOIN.

SELECT CourseID, COUNT(StudentID) AS Enrolled_Students
FROM Enrollment1
GROUP BY CourseID;

SELECT Course11.CourseName,
COUNT(Enrollment1.StudentID) AS Enrolled_Students
FROM Course11
JOIN Enrollment1
ON Course11.CourseID = Enrollment1.CourseID
GROUP BY Course11.CourseName;

SELECT DepartmentID, COUNT(StudentID) AS Total_Students
FROM Studentsssss1
GROUP BY DepartmentID;

SELECT Faculty1.Name,
COUNT(Course11.CourseID) AS Total_Courses
FROM Faculty1
JOIN Course11
ON Faculty1.FacultyID = Course11.FacultyID
GROUP BY Faculty1.Name;

--PART E – Analytical Queries.

SELECT Course11.CourseName,
MAX(Enrollment1.Grade) AS Highest_Grade
FROM Course11
JOIN Enrollment1
ON Course11.CourseID = Enrollment1.CourseID
GROUP BY Course11.CourseName;

SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course11
GROUP BY DepartmentID;

SELECT CourseID, COUNT(StudentID) AS Total_Students
FROM Enrollment1
GROUP BY CourseID
HAVING COUNT(StudentID) > 2;