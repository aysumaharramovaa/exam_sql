SELECT DISTINCT s.name
FROM students s
INNER JOIN grades g ON s.id = g.student_id
WHERE g.grade_date >= CURDATE() - INTERVAL 30 DAY;