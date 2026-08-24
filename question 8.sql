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
select department
from employee
where department <>'HR';

select Salary
from employeeFROM employee 
WHERE Salary < 60000 OR Salary > 75000;


/*Display employees hired before 2020.*/
SELECT * 
FROM employee
WHERE hiredate < '2020-01-01';



Find the average salary of each department.

SELECT department, AVG(salary) 
FROM employee
GROUP BY department
ORDER BY AVG(salary) DESC;


/*Display employees whose salary is greater than the average salary*/
Select *
from employee
where salary>(select avg(salary) from employee);






