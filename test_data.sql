INSERT INTO students (name, age, group_name)
VALUES
('Aysu', 19, '234 IT ing'),
('Murad', 20, '234 IT ing'),
('Leyla', 18, '235 IT ing');

INSERT INTO grades (student_id, grade, grade_date)
VALUES
(1, 90, CURDATE()),
(1, 85, CURDATE()),
(2, 76, CURDATE()),
(3, 95, CURDATE());
