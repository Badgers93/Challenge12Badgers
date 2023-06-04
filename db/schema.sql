DROP DATABASE IF EXISTS employmentTracker_db;
CREATE DATABASE employmentTracker_db;

USE employmentTracker_db;

-- Department
CREATE TABLE department(
    id INT AUTO_INCREMENT PRIMARY_KEY,
    name VARCHAR(30)
);

-- Roles
CREATE TABLE role(
    id INT AUTO_INCREMENT PRIMARY_KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Employees
CREATE TABLE employee(
    id INT AUTO_INCREMENT PRIMARY_KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);
