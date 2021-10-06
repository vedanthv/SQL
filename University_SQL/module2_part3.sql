-- Check constraint
DROP table orders, persons;	

CREATE table persons(id int primary key, lastname varchar(30) not null, firstname varchar(30), age int check (age >=18));

INSERT INTO persons VALUES(1,'ambani','mukesh',70);
INSERT INTO persons VALUES(2,'ambani','anil',50);
INSERT INTO persons VALUES(3,'ambani','nita',40);
INSERT INTO persons VALUES(4,'ambani','mukesh',70);
INSERT INTO persons VALUES(5,'ambani','baby',4); -- does not execute as check constraint violated! age 4 not greater than 18

-- DEFAULT CONSTRAINT
ALTER table persons ADD COLUMN city VARCHAR(50) DEFAULT 'Mumbai';

-- Checking to see if city is defaulted
select * from persons;

-- is null operator
ALTER table persons ADD COLUMN address VARCHAR(50);

UPDATE persons SET address = 'Antilla, Mumbai' WHERE id = 1;

-- check which addresses are null

SELECT firstname, lastname from persons WHERE address IS NULL;
SELECT firstname, lastname from persons WHERE address IS NOT NULL;

-- group functions

-- Group Functions

SELECT * FROM employee;

-- SUM Group Function
SELECT SUM(SALARY) AS totalSalary FROM employee;

-- Count Function
SELECT count(*) AS numberOfEmp FROM employee;

-- Retrival with changed column names

SELECT NO AS emp_no, NAME AS emp_name FROM employee;

-- Using Alias Names when two or more tables involved

CREATE table project
(
	pno int,
    pname varchar(30),
    dno int
);

INSERT into project values(1,'pro1',10);
INSERT into project values(2,'pro2',10);
INSERT into project values(3,'pro3',20);

SELECT * from department;

SELECT p.pname as project_name, 
d.DNAME as department_name 
from department as d, 
project as p 
where p.pno = d.NO;