----1
select E.emp_no, e.last_name, E.first_name, E.sex, S.salary
FROM employees as E
INNER JOIN salaries as S ON E.emp_no=S.emp_no;

----2 (create view to test it)
CREATE VIEW Hires_1986 AS
select first_name, last_name, hire_date 
FROM employees 
where date_part('year',hire_date) = 1986;
Select *
From Hires_1986;

----3: manager of every department along with department number, department name,
-----employee number, last name and first name
dept_manager as DM : DM.dept_no, DM.emp_no, E.last_name, E.first_name
Inner join employees as E on DM.emp_no = E.emp_no
another join on dept_manager and departments

----4 Dept No for each employee along with that employee's number, last name, 
-----first name, department name
From departments - D.dept_no and D.dept_name 
from dept_emp (needsjoin on DE.dept_no and DE.emp_no)
From employees - E.emp_no, E.last_name, E.first_name, ;


----5 
select first_name, last_name, sex 
FROM employees 
where first_name = 'Hercules' and last_name like 'B%';

----6 
select E.emp_no, E.last_name, E.first_name
from Employees as E
Join dept_emp as DE
ON (E.emp_no = DE.emp_no)
where DE.dept_no = 'd007' ;


---7: every employee in sales and development, including: 
----employee number, last name, first name, department name
select E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees as E
WHERE 
	(select DE.emp_no, DE.dept_no, D.dept_name
	FROM dept_emp AS DE
	join departments AS D on DE.dept_no=D.dept_no);

-- 8: 
SELECT last_name, 
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC



