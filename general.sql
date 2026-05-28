-- 1 students cədvəlindəki bütün tələbələri yaşa görə artan sırada çıxarın.
SELECT * FROM students ORDER BY age ASC;

-- 2 234 IT ing qrupunda oxuyan tələbələrin siyahısını çıxarın.
SELECT * FROM students
WHERE group_name = '234 IT ing';

-- 3 grades cədvəlində tələbələrin orta balını hesablayan SQL sorğusu yazın.
SELECT AVG(grade) AS average_grade
FROM grades;

-- 4 Ən yüksək bal alan tələbənin adını və balını çıxarın.
SELECT s.name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
ORDER BY g.grade DESC
LIMIT 1;

-- 5 Hər qrup üzrə neçə tələbə olduğunu göstərən sorğu yazın.
SELECT group_name, COUNT(*) AS student_count
FROM students
GROUP BY group_name;

-- 6 students və grades cədvəllərini INNER JOIN ilə birləşdirərək tələbə adı və qiymətini çıxarın.
SELECT s.name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id;

-- 7 Orta balı 80-dən yüksək olan tələbələrin siyahısını çıxarın.
SELECT s.name, AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id, s.name
HAVING AVG(g.grade) > 80;

-- 8 Eyni adda olan tələbələri çıxarın.
SELECT name, COUNT(*) AS count
FROM students
GROUP BY name
HAVING COUNT(*) > 1;

-- 9 Hər tələbənin maksimum balını göstərən sorğu yazın.
SELECT s.name, MAX(g.grade) AS max_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id, s.name;

-- 10 Son 30 gündə qiymət alan tələbələrin siyahısını çıxarın.
SELECT DISTINCT s.name
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE g.grade_date >= CURDATE() - INTERVAL 30 DAY;
