--(1)List the employee number, last name, first name, sex, and salary of each employee.
SELECT * FROM employees;
SELECT * FROM salaries;

SELECT employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--(2)List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE 
	hire_date >='1986-01-01'
	AND hire_date <='1986-12-31';

--(3)List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT * FROM dept_manager

--(3a) check that all emp_no listed in dept_managers have the title "manager"
CREATE VIEW managers AS
SELECT dept_manager.emp_no, employees.emp_title
FROM dept_manager
JOIN employees
ON (dept_manager.emp_no = employees.emp_no)
	JOIN titles
	ON (titles.title_id=employees.emp_title);

SELECT * FROM managers; --m0001

SELECT title_id FROM titles
WHERE title = 'Manager';

--(3b) create the requested list:
CREATE VIEW manager_list AS
SELECT employees.emp_no, employees.last_name, employees.first_name, dept_manager.dept_no, departments.dept_name
FROM employees
RIGHT JOIN dept_manager
ON dept_manager.emp_no=employees.emp_no
	JOIN departments
	ON (departments.dept_no=dept_manager.dept_no);

SELECT * FROM manager_list;

--(4)List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
CREATE VIEW employee_list AS
SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no=employees.emp_no
	JOIN departments
	ON (departments.dept_no=dept_emp.dept_no);

SELECT * FROM employee_list; --row number matches row number in dept_emp

--(5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%';

--(6)List each employee in the Sales department, including their employee number, last name, and first name.
SELECT * FROM employee_list; --review the previously created view called "employee_list", use to filter and produce desired list

SELECT emp_no, last_name, first_name 
FROM employee_list
WHERE dept_name = 'Sales';

--to check the dept name, re-run and include 'dept_name'
SELECT emp_no, last_name, first_name, dept_name
FROM employee_list
WHERE dept_name = 'Sales';

--(7)List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name
FROM employee_list
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--(8)List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "last_name frequency"
FROM employees
GROUP BY last_name
ORDER BY "last_name frequency" DESC;

	