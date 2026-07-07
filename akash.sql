

CREATE DATABASE CollegeDB;

USE CollegeDB;



CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Course VARCHAR(50),
    Email VARCHAR(100)
);

DESC Students;
ALTER TABLE Students
ADD Phone VARCHAR(15);


ALTER TABLE Students
MODIFY Course VARCHAR(100);


RENAME TABLE Students TO StudentInfo;


INSERT INTO StudentInfo (StudentID, Name, Age, Course, Email, Phone)
VALUES (1, 'Ranjeet', 20, 'BCA', 'ranjeet@gmail.com', '9876543210');


INSERT INTO StudentInfo VALUES
(2, 'Aman', 21, 'BCA', 'aman@gmail.com', '9123456780'),
(3, 'Priya', 19, 'BBA', 'priya@gmail.com', '9988776655'),
(4, 'Neha', 22, 'MCA', 'neha@gmail.com', '9090909090');

SELECT * FROM StudentInfo;


SELECT Name, Course FROM StudentInfo;


SELECT * FROM StudentInfo
WHERE Age > 20;

UPDATE StudentInfo
SET Course = 'MCA'
WHERE StudentID = 1;


DELETE FROM StudentInfo
WHERE StudentID = 3;

 

SELECT COUNT(*) AS TotalStudents FROM StudentInfo;
SELECT MAX(Age) AS MaxAge FROM StudentInfo;
SELECT MIN(Age) AS MinAge FROM StudentInfo;
SELECT AVG(Age) AS AverageAge FROM StudentInfo;

SELECT Course, COUNT(*) AS Total
FROM StudentInfo
GROUP BY Course;


SELECT * FROM StudentInfo
ORDER BY Age DESC;


TRUNCATE TABLE StudentInfo;


DROP TABLE StudentInfo;

DROP DATABASE CollegeDB;
