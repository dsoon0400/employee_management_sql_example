-- Join Employees and Departments to display employee details with department names
SELECT e.employee_name, e.position, d.department_name, d.location
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Calculate the total salary paid per department
SELECT d.department_name, SUM(s.salary) AS total_salary
FROM Salaries s
JOIN Employees e ON s.employee_id = e.employee_id
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Use a window function to rank employees by salary within their department
SELECT e.employee_name, d.department_name, s.salary,
       RANK() OVER (PARTITION BY e.department_id ORDER BY s.salary DESC) AS salary_rank
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id
JOIN Departments d ON e.department_id = d.department_id;

-- Use a Common Table Expression (CTE) to find the highest-paid employee in each department
WITH DepartmentMaxSalaries AS (
    SELECT e.department_id, MAX(s.salary) AS max_salary
    FROM Salaries s
    JOIN Employees e ON s.employee_id = e.employee_id
    GROUP BY e.department_id
)
SELECT e.employee_name, d.department_name, s.salary
FROM Employees e
JOIN Salaries s ON e.employee_id = s.employee_id
JOIN Departments d ON e.department_id = d.department_id
JOIN DepartmentMaxSalaries dms ON e.department_id = dms.department_id AND s.salary = dms.max_salary;
