CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    group_name VARCHAR(100)
);

CREATE TABLE grades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    grade INT,
    grade_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
