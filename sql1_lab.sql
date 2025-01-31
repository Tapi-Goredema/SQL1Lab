-- SQL Exercises (With Answers)

-- 1. Retrieve all students who enrolled in 2023.
SELECT * FROM students
WHERE YEAR(EnrollmentDate) = 2023;

-- 2. Find students whose email contains 'gmail.com'.
SELECT * FROM students
WHERE Email LIKE '%gmail.com';

-- 3. Count how many students are enrolled in the database.
SELECT count(*) FROM students;

-- 4. Find students born between 2000 and 2005.
SELECT * FROM students
WHERE YEAR(DateOfBirth) BETWEEN 2000 and 2005;

-- 5. List students sorted by last name in descending order.
SELECT * FROM students
ORDER BY LastName desc;

-- 6. Find the names of students and the courses they are enrolled in.
SELECT students.StudentID, students.FirstName, students.LastName, courses.CourseName
FROM students
INNER JOIN enrollments on students.StudentID = enrollments.StudentID
INNER JOIN courses on enrollments.CourseID = courses.CourseID;

-- 7. List all students and their courses, ensuring students without courses are included (LEFT JOIN).
SELECT students.StudentID, students.FirstName, students.LastName, courses.CourseName
FROM students
LEFT JOIN enrollments on students.StudentID = enrollments.StudentID
LEFT JOIN courses on enrollments.CourseID = courses.CourseID;

-- 8. Find all courses with no students enrolled (LEFT JOIN).
SELECT courses.CourseName
FROM courses
LEFT JOIN enrollments on courses.CourseID = enrollments.CourseID
WHERE enrollments.StudentID is null;




-- 10. List courses and show the number of students enrolled in each course.
SELECT courses.CourseName, COUNT(enrollments.StudentID) AS enrolled_students
FROM courses
LEFT JOIN enrollments ON courses.CourseID = enrollments.CourseID
GROUP BY courses.CourseName;



