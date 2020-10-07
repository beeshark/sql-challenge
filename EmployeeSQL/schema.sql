CREATE TABLE Departments (
    dept_no varchar PRIMARY KEY NOT NULL,
    dept_name varchar NOT NULL
);

CREATE TABLE Employees (
    emp_no int PRIMARY KEY  NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    gender varchar NOT NULL,
    hire_date date NOT NULL
);

CREATE TABLE Salaries (
    emp_no int REFERENCES Employees(emp_no),
    salary int NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE Titles (
    emp_no int REFERENCES Employees(emp_no),
    title varchar NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);


CREATE TABLE Dept_Emp (
    emp_no int REFERENCES Employees(emp_no),
    dep_no varchar REFERENCES Departments(dept_no),
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE Dept_Manager (
    emp_no int REFERENCES Employees(emp_no),
    dept_no varchar REFERENCES Departments(dept_no),
    from_date date NOT NULL,
    to_date date NOT NULL
);
