Use learner;
Create table employee(Emp_id int NOt null  ,
Firste_name varchar(50), 
Department varchar(50),
 Salary int Not null,
 HireDate Date
 );
Insert into employee values(101 ,"AliceSmith","HR",55000,"2020-03-11"),
 (102,"BobJohnson","IT",85000,"2019-11-01"),
 (103,"CharlieBrown","finance",75000,"2021-06-20"),
 (104,"Brown","finance",79000,"2019-06-28"),(105,"Arown","HR",80000,"2021-08-20"),
 (106,"DavidMiller","IT", 90000,"2018-05-12");

alter table employee
add holiday varchar(50);




/*Find employees whose department is either HR or Finance*/
SELECT *
FROM employee
WHERE department = 'HR' OR department = 'Finance';

/*Find the average salary of each department.*/

SELECT department, AVG(salary) 
FROM employee
GROUP BY department
ORDER BY AVG(salary) DESC;





