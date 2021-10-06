-- Joins in SQL

-- Equijoin - When two or more tables are joined by the equality opperator in one or more columns it is caled equijoin

SELECT * FROM employee;
SELECT * from department;

SELECT E.NAME,D.DNAME from employee as E, department as D WHERE E.DNO = D.NO;

-- Non-Equi Join
-- When two or more tableas are joined without the euality operator using some other operator, it is called 
-- non-equi join

CREATE table salgrade
(
	grade char(1),
    lowsal int,
    highsal int
);

INSERT INTO salgrade VALUES
	('A',20000,29999),
    ('B', 30000,39999),
    ('C', 40000, 49999);
    
-- Retrieve the employee name and the grade

SELECT E.NAME, S.grade 
FROM employee AS E, salgrade AS S 
WHERE E.SALARY BETWEEN S.lowsal AND S.highsal;

-- Left Outer Join
-- Used when user wants to project all the tuples including the non matchin tupples of the first table in the resluting relation
-- Resulting relation will have all the matching tuples in first table as well as the non matching null tuples

CREATE DATABASE joins;
USE joins;
CREATE table student
(
	SNO int,
    SNAME varchar(30),
    SEM char(3),
    CNO int
);

CREATE table course
(
	COURSE_NO int,
    CNAME varchar(30)
);

INSERT into student VALUES
	(10,'Eric','3',10),
	(20,'Jamie','5',10),
    (30,'Alter','7',20),
    (40,'Paul','5',30),
    (50,'Darren','6',10),
    (60,'Peter','2',NULL),
    (70,'Gary','8',NULL);
    
INSERT INTO course VALUES
	(10,'Maths'),
    (20,'Physics'),
    (30,'Chemistry'),
    (40,'Biology');
    
-- left outer join

SELECT S.SNAME, C.CNAME 
FROM student AS S 
LEFT OUTER JOIN course AS C 
ON S.CNO = C.COURSE_NO;

-- right outer join
-- When user wants to project all tuples including the non matching tuples of the second table in the resulting relation

SELECT S.SNAME, C.CNAME 
FROM student AS S 
RIGHT OUTER JOIN course AS C 
ON S.CNO = C.COURSE_NO;


