SELECT s.name, AVG(g.grade) AS average_grade
FROM students s
INNER JOIN grades g ON s.id = g.student_id
GROUP BY s.id, s.name
HAVING AVG(g.grade) > 80;