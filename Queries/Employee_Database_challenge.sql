SELECT DISTINCT ON e.emp_no,
e.first_name,
e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e 
inner join  titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no


SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name	 
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
where dept_name='Sales' or  dept_name = 'Development';


SELECT DISTINCT on (e.emp_no)
 e.emp_no, e.first_name,
e.last_name, ti.title, ti.from_date, ti.to_date
into unique_titles
from employees as e 
inner join  titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no asc, ti.to_date desc;


select count(title), title
from unique_titles 
group by title 
order by count desc



SELECT DISTINCT on (e.emp_no)
 e.emp_no, e.first_name,
e.last_name, ti.title, ti.from_date, ti.to_date
into unique_titles
from employees as e 
inner join  titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no asc, ti.to_date desc;


select count(title), title
into retiring_titles
from unique_titles 
group by title 
order by count desc

SELECT DISTINCT on (e.emp_no)
e.emp_no, e.first_name,
e.last_name, e.birth_date, de.from_date, de.to_date,
ti.title
into mentorship_eligibilty
from employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)

inner join  titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') and de.to_date = ('9999-01-01')
order by e.emp_no asc ;