SELECT s.name, g.grade
FROM students s
INNER JOIN grades g ON s.id = g.student_id;