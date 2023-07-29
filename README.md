#Pewlett-Hackard-Analysis
#Overview of the analysis:

The purpose of the analysis is to determine from data tables present in the data folder of this github repositories the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program


![image](https://user-images.githubusercontent.com/57809798/130852248-12074871-1333-4bc2-8ffd-435e6868f236.png)

Result Tables (Data Folder):

**unique_titles** :  Table containing list of people eligible for retirement retreived based on the  birth_date
**retiring_titles** : Table shows the number of staff with the different positions in the company
**mentorship_eligibilty**  :  Table shows the list of employees eligible for mentorship which are current employees who were born between January 1, 1965 and December 31, 1965


The analysis involved retreiving  the a list retiring employee number, name, title, joining date and last date
Retreived the number of  different position within the Pwelet Hackard Company 
Table mentorship elgibility retreieve  list of employees eligible for mentorship which are current employees 

93098 roles need to be filled out as the "silver tsunami" begins to make an impact
There are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees

Queries:

select count(emp_no) from unique_titles

select count(emp_no) from mentorship_eligibilty






--A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.

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

--Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder
SELECT DISTINCT on (e.emp_no)
 e.emp_no, e.first_name,
e.last_name, ti.title, ti.from_date, ti.to_date
into unique_titles
from employees as e 
inner join  titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no asc, ti.to_date desc;

--Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
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

--A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring
select count(title), title
into retiring_titles
from unique_titles 
group by title 
order by count desc

--A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. 
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


