CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    department TEXT
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    courses_name TEXT,
    student_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

CREATE VIEW student_courses AS
SELECT s.name, c.courses_name
FROM students s
JOIN courses c ON s.id = c.student_id;
