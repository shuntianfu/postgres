DROP TABLE IF EXISTS departments;

DROP TABLE IF EXISTS employees;

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(255),
    department_id INTEGER
);

INSERT INTO departments (department_name)
    VALUES ('Sales'), ('Marketing'), ('HR'), ('IT'), ('Production');

INSERT INTO employees (employee_name, department_id)
    VALUES ('Bette Nicholson', 1), ('Christian Gable', 1), ('Joe Swank', 2), ('Fred Costner', 3), ('Sandra Kilmer', 4), ('Julia Mcqeen', NUll);
