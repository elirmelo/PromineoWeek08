SELECT titles.title, count(titles.title) AS Total 
FROM titles 
LEFT JOIN employees ON titles.emp_no=employees.emp_no 
WHERE employees.birth_date > "1965-01-01" 
GROUP BY titles.title;

SELECT titles.title, avg(salaries.salary) AS Average 
FROM titles 
LEFT JOIN salaries ON titles.emp_no = salaries.emp_no 
GROUP BY titles.title;


SELECT departments.dept_name, sum(salaries.salary) 
FROM departments, salaries LEFT JOIN employees ON salaries.emp_no = employees.emp_no
LEFT JOIN dept_emp ON salaries.emp_no = dept_emp.emp_no
WHERE departments.dept_name = "marketing" 
AND dept_emp.from_date BETWEEN "1990-01-01" AND "1992-12-31";