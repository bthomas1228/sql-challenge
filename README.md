# sql-challenge

Instructions for reviewing the Module 9 Sql-challenge homework:
1. Open PgAdmin and create a new database called 'employee_data'.
2. Open the 'QuickDBD-Module 9' schema in the EmployeeSQL folder in the repo. 
3. Open a Query tool in PgAdmin within the 'employee_data' database. Copy the schema into Query tool window.
4. Run the schema to create the tables in the order listed to ensure the foreign keys map correctly: 'titles', 'employees', 'departments', 'dept_emp', 'dept_manager', 'salaries'
5. Import data into each table in the same order they were created (see list above). Import the data into each table from the csv file of the same name located in the 'data' folder within the 'EmployeeSQL' folder in the repo.
6. Verify the data imported by executing the following code one by one:

SELECT * FROM titles;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;

SELECT * FROM departments;

7. Open a new Query tool within the 'employee_data' database. 
8. Open the 'data_analysis_schema' within the 'EmployeeSQL' folder in the repo. 
9. Copy the schema into the new Query tool. 
10. Run each segment of code pertaining to the numbered homework question to produce the desired output (list). 
11. To view a copy of the Entity Relationship Diagram created in the Quick Database Diagrams app, open the 'Module 9 ERD' file within the 'EmployeeSQL' folder in the repo. The 'QuickDBD-Module9' schema was exported from Quick DBD; please review the schema as well to verify appropriate table creation.

Stackoverflow and pgadmin.org were used as external sources to complete the homework. Review of the zoom and activities for module 9 were also consulted. 
