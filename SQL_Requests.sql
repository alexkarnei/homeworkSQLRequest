1.   
SELECT *
FROM public."Departments"
ORDER BY id DESC;

2.
SELECT (name, rating) AS group_with_rating
FROM public."Groups";

3.
SELECT surname AS surname, (premium+salary) AS solary_with_premium,
(salary/premium*100) AS persent_solary, (salary/(premium+salary)*100) AS percent_solary_with_premium
FROM public."Teachers";

4.
SELECT STRING_AGG ( '"The dean of faculty '||name||' is '||dean||'."','. ' )
FROM public."Faculties";

5.
SELECT surname
FROM public."Teachers"
WHERE is_professor ='1' AND salary >CAST(1050 AS money); 

6.
SELECT name
FROM public."Departments"
WHERE financing < CAST(11000 AS money) OR financing > CAST(25000 AS money );

7.
SELECT name
FROM public."Faculties"
WHERE name NOT LIKE 'Computer Science';

8.
SELECT surname, position 
FROM public."Teachers"
WHERE is_professor = '0';

9.
SELECT surname, position,salary,premium 
FROM public."Teachers"
WHERE is_assistant= '1' AND premium BETWEEN '160' AND '550';

10.
SELECT surname, salary
FROM public."Teachers"
WHERE is_assistant= '1' ;

11.
SELECT surname, position
FROM public."Teachers"
WHERE employment_date < '01-01-2000' ;

12.
SELECT name AS Name_of_Department
FROM public."Departments"
WHERE (SELECT name ORDER BY name)<'Software Development';

13.
SELECT surname 
FROM public."Teachers"
WHERE is_assistant = '1' AND (premium+salary)< CAST(1200 AS money);

14.
SELECT name 
FROM public."Groups"
WHERE year =5 AND rating BETWEEN '2' AND '4';

15.
SELECT surname 
FROM public."Teachers"
WHERE (is_assistant = '1' AND salary <CAST (500 AS money)) 
OR (is_assistant = '1' AND premium < CAST (200 AS money));
