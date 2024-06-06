use employee1;
select
	   d.name as DepartmentName,
       AVG(e.Salary) AS AverageSalary,
       count(e.DepartmentID) AS NumberOfEmployees
       
    FROM
        employees e
    JOIN 
       department d ON e.DepartmentID = d.DepartmentID
    GROUP BY
       d.Name
     HAVING
       AVG(e.Salary) > (SELECT AVG(Salary) FROM employees);
     
