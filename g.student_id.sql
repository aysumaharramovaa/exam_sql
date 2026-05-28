SELECT s.name, g.grade
FROM students s
INNER JOIN grades g ON s.id = g.student_id
ORDER BY g.grade DESC
LIMIT 1;