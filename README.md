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








