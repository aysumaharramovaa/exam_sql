SELECT name, COUNT(*) AS count
FROM students
GROUP BY name
HAVING COUNT(*) > 1;