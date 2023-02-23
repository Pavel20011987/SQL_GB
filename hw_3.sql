USE lesson3;

select * from staff;


-- 1. Отсортируйте данные по полю заработная плата (salary) 
-- в порядке: убывания; возрастания 

select *
FROM staff
ORDER BY salary DESC;

select *
FROM staff
ORDER BY salary ASC;

-- 2.Выведите 5 максимальных заработных плат (saraly)

select firstname, lastname, max(salary)
FROM staff
group by firstname, lastname
LIMIT 5;

SELECT * FROM staff;
-- Вывести 2 максимальные зарплаты по отделам

SELECT post, salary
FROM staff
where post = 'Рабочий'
ORDER BY salary DESC
LIMIT 2;

/*

3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)

*/
select post, SUM(salary)
FROM staff
GROUP BY POST;


/*
4. Найдите кол-во сотрудников с специальностью (post) «Рабочий»
 в возрасте от 24 до 49 лет включительно.

*/

SELECT * FROM staff;

SELECT COUNT(*)
FROM staff
WHERE post = 'Рабочий' AND  (age > 24 and age <= 49);

/*
5. Найдите количество специальностей

*/
SELECT COUNT(DISTINCT post)
FROM staff;


/*
6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 
*/

SELECT DISTINCT post
FROM staff
where age < (select avg(age) FROM staff);



