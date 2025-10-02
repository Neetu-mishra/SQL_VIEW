DROP DATABASE school;
CREATE DATABASE school;
USE school;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(10)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(30),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
INSERT INTO students VALUES
(1, 'Alice', '10A'),
(2, 'Bob', '10A'),
(3, 'Charlie', '10B');

INSERT INTO marks (student_id, subject, marks) VALUES
(1, 'Math', 85),
(1, 'Science', 90),
(2, 'Math', 75),
(3, 'Math', 95),
(3, 'Science', 80);
SELECT* FROM students;
SELECT* FROM marks;
CREATE VIEW student_marks AS
SELECT s.name, s.class, m.subject, m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id;
CREATE VIEW top_students AS
SELECT s.name, m.subject, m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.marks > 80; 
SELECT * FROM student_marks;
SELECT * FROM top_students;

