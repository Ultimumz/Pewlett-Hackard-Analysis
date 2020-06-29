-- Module 7 Challenge
-- Deliverable 1: Number of Retiring Employees by Title
SELECT 	e.emp_no, 
		e.first_name, 
		e.last_name, 
		ti.title, 
		ti.from_date, 
		s.salary
INTO retiring_emp_by_title
FROM employees AS e
INNER JOIN titles AS ti 
	ON (e.emp_no = ti.emp_no)
INNER JOIN salaries AS s
	ON (e.emp_no = s.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (ti.to_date = '9999-01-01')
GROUP BY (ti.title, e.emp_no, ti.from_date, s.salary);

-- Deliverable 2: Mentorship Eligibility
SELECT  e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		de.from_date,
		de.to_date
INTO mentorship
FROM employees AS e
INNER JOIN titles AS ti ON (e.emp_no = ti.emp_no)
INNER JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (ti.to_date = '9999-01-01');






