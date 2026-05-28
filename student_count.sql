SELECT group_name, COUNT(*) AS student_count
FROM students
GROUP BY group_name;