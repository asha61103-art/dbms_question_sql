PART-A.
SELECT Name
FROM Studentsssss1
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Studentsssss1
    WHERE StudentID = '23105128008'
);

SELECT Name
FROM Studentsssss1
WHERE Gender = (
    SELECT Gender
    FROM Studentsssss1
    WHERE StudentID = '23105128008'
);

SELECT Name
FROM Studentsssss1
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Studentsssss1
    WHERE StudentID = '23105128008'
);

PART-B.

SELECT Name
FROM Studentsssss1
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Studentsssss1
    WHERE Gender = 'F'
);

SELECT Name
FROM Studentsssss1
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment1
);

SELECT Name
FROM Studentsssss1
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment1
);

PART C: Aggregate Subqueries.

SELECT CourseName
FROM Course11
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course11
);

SELECT Name
FROM Studentsssss1
WHERE StudentID > (
    SELECT AVG(StudentID)
    FROM Studentsssss1
);

SELECT DepartmentID
FROM Studentsssss1
GROUP BY DepartmentID
HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Studentsssss1
        GROUP BY DepartmentID
    )
);

Part D: Subqueries Instead of JOIN
SELECT Name
FROM Studentsssss1
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment1
);

SELECT Name
FROM Studentsssss1
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Department
);

SELECT CourseName
FROM Course11
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollment1
);

PART E: Analytical Subqueries

SELECT CourseName
FROM Course11
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course11
);

SELECT Name
FROM Studentsssss1
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment1
    GROUP BY StudentID
    HAVING COUNT(CourseID) > 1
);

SELECT DepartmentID
FROM Studentsssss1
GROUP BY DepartmentID
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Studentsssss1
        GROUP BY DepartmentID
    )
);

PART F: Challenging.

SELECT Name
FROM Studentsssss1
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment1
    WHERE CourseID IN (
        SELECT CourseID
        FROM Enrollment1
        WHERE StudentID = '23105128012'
    )
);

SELECT Name
FROM Studentsssss1
WHERE StudentID NOT IN (
    SELECT StudentID
    FROM Enrollment1
);

SELECT CourseName
FROM Course11
WHERE CourseID NOT IN (
    SELECT CourseID
    FROM Enrollment1
);