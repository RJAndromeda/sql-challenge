---1
select E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM employees as E
INNER JOIN salaries as S ON E.emp_no=S.emp_no;

----2 
select first_name, last_name, hire_date 
FROM employees 
where date_part('year',hire_date) = 1986;
Select *
From Hires_1986;

----3: 

SELECT DM.dept_no, D.dept_name, DM.emp_no as "Manager Emp_No", E.last_name as "Manager Last Name", E.first_name as "Manager First Name"
FROM dept_manager AS DM
left join departments as D
	on DM.dept_no = D.dept_no 
left join employees as E
	on DM.emp_no = E.emp_no 
ORDER BY dept_no ASC;


----4 
SELECT E.emp_no as "Employee Number", E.first_name as "Employee First Name", E.last_name as "Employee Last Name", DE.dept_no as "Department Number", D.dept_name as "Department Name"
FROM Employees as E
left Join (dept_emp as DE
		   left join departments as D
		   			ON D.dept_no = DE.dept_no)
			ON E.emp_no = DE.emp_no;

----5 
select first_name, last_name, sex 
FROM employees 
where first_name = 'Hercules' and last_name like 'B%';

----6 
select E.emp_no, E.last_name, E.first_name
from Employees as E
Join dept_emp as DE
ON (E.emp_no = DE.emp_no)
where DE.dept_no = 'd007';


---7: 
SELECT E.emp_no as "Employee Number", E.last_name as "Employee Last Name", E.first_name as "Employee First Name", D.dept_name as "Department Name"
FROM Employees as E
left Join (dept_emp as DE
		   left join departments as D
		   			ON D.dept_no = DE.dept_no)
			ON E.emp_no = DE.emp_no
where DE.dept_no = 'd007' 
or DE.dept_no = 'd005'
ORDER BY "Department Name" ASC;

-- 8: 
SELECT last_name, 
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC



