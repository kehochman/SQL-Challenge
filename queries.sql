--Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
s.emp_no=e.emp_no;

--Question 2
SELECT first_name, last_name FROM employees 
WHERE hire_date between '1986-01-01' and '1986-12-31'

--Question 3
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, de.from_date, de.to_date  
FROM employees AS e
INNER JOIN dept_manager AS dm ON
dm.emp_no=e.emp_no
INNER JOIN departments AS d ON
dm.dept_no=d.dept_no
INNER JOIN dept_emp AS de ON
de.emp_no=e.emp_no;

--Question 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no=e.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no;

--Question 5
SELECT e.last_name, e.first_name
FROM employees AS e
WHERE e.first_name='Hercules'
AND e.last_name LIKE 'B%'

--Question 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no=e.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE de.emp_no IN(
	SELECT de.emp_no FROM dept_emp
	WHERE d.dept_no IN(
		SELECT d.dept_no FROM departments AS d
		WHERE d.dept_name = 'Sales'))

--Question 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no=e.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE de.emp_no IN(
	SELECT de.emp_no FROM dept_emp
	WHERE d.dept_no IN(
		SELECT d.dept_no FROM departments AS d
		WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'))
		

--Question 8
SELECT COUNT(last_name), last_name from employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC




