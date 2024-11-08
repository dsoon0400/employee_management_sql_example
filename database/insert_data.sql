-- Insert sample data into Departments
INSERT INTO Departments (department_id, department_name, location) VALUES
(1, 'Human Resources', 'New York'),
(2, 'Engineering', 'San Francisco'),
(3, 'Sales', 'Chicago');

-- Insert sample data into Employees
INSERT INTO Employees (employee_id, employee_name, department_id, position) VALUES
(1, 'Alice Johnson', 1, 'HR Manager'),
(2, 'Bob Smith', 2, 'Software Engineer'),
(3, 'Charlie Davis', 2, 'Data Scientist'),
(4, 'Diana Prince', 3, 'Sales Representative');

-- Insert sample data into Salaries
INSERT INTO Salaries (salary_id, employee_id, salary, date_of_payment) VALUES
(1, 1, 70000, '2024-01-01'),
(2, 2, 90000, '2024-01-01'),
(3, 3, 95000, '2024-01-01'),
(4, 4, 60000, '2024-01-01');
