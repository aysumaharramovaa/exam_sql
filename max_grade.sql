SELECT s.name, MAX(g.grade) AS max_grade
FROM students s
INNER JOIN grades g ON s.id = g.student_id
GROUP BY s.id, s.name;