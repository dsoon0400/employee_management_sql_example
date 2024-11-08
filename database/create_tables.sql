-- Create Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    position VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Create Salaries table
CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    salary DECIMAL(10, 2),
    date_of_payment DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
