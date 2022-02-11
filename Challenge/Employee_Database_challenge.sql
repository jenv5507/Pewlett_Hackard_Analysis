SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no) r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles
FROM retirement_titles as r
JOIN titles as t
ON r.emp_no = t.emp_no
WHERE (r.to_date = '9999-01-01')
ORDER BY r.emp_no;

SELECT COUNT(title) as count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER by count DESC;

--Create Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, d.from_date, d.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as d
ON (e.emp_no = d.emp_no)
JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (d.to_date = '9999-01-01' )
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

--Total employees eligible for Mentorship Program
SELECT COUNT(title) as count, title
INTO mentorship_titles
FROM mentorship_eligibility
GROUP BY title 
ORDER by count DESC;

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO current_employee
FROM employees as e
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (t.to_date = '9999-01-01' )
ORDER BY e.emp_no;

SELECT count(title) as count, title
FROM current_employee
GROUP BY title
ORDER by count DESC

