-- Department
INSERT INTO department (name)
VALUES
('Butcher'),
('Frozen Foods'),
('Dry Foods'),
('Dairy'),
('Beverages'),
('Floral'),
('Pharmacy'),
('Checkout');

-- Role
INSERT INTO role (title, salary, department_id)
VALUES
('Senior Butcher', 500000.00, 1),
('Junior Butcher', 400000.00, 1),
('Frozen Foods Manager', 250000.00, 2),
('Frozen Foods Associate', 100000.00, 2),
('Dry Foods Manager', 150000.00, 3),
('Dry Foods Associate', 50000.00, 3),
('Dairy Manager', 600000.00, 4),
('Dairy Associate', 300000.00, 4),
('Beverages Manager', 500000.00, 5),
('Beverages Associate', 400000.00, 5),
('Floral Department Manager', 350000.00, 6),
('Floral Department Associate', 300000.00, 6),
('Lead Pharmacist', 2000000.00, 7),
('Junior Pharmacist', 1500000.00, 7),
('Trainee Pharmacist', 1000000.00, 7),
('Senior Checkout Associate', 100000.00, 8),
('Junior Checkout Associate', 75000.00, 8),
('Trainee Checkout Associate', 50000.00, 8);

-- Employee
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('John', 'Smith', 1, NULL),
('Emily', 'Johnson', 2, 1),
('Michael', 'Davis', 3, NULL),
('Sarah', 'Anderson', 4, 3),
('Christopher', 'Wilson', 5, NULL),
('Olivia', 'Martinez', 6, 5),
('Matthew', 'Taylor', 7, NULL),
('Sophia', 'Brown', 8, 7),
('David', 'Thompson', 9, NULL),
('Ava', 'Garcia', 10, 9),
('Andrew', 'Thomas', 11, NULL),
('Emma', 'Clark', 12, 11),
('James', 'Rodriguez', 13, NULL),
('Isabella', 'Lewis', 14, 13),
('Benjamin', 'Lee', 15, 13),
('Mia', 'Hall', 16, NULL),
('William', 'White', 17, 16),
('Charlotte', 'Moore', 18, 16);