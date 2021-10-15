-- Topics Covered

-- Sub Queries
-- ALL Operator
-- ANY Operator
-- EXISTS and NON EXISTS

-- Sub Queries
CREATE TABLE employee
(
	eno INT,
    ename varchar(30),
	salary int,
    city varchar(30)
);

INSERT INTO employee VALUES
(1,'mohit',5000,'Nagpur'),
(2,'ravi',6000,'Mumbai'),
(3,'manoj',4000,'Nagpur'),
(4,'umesh',3000,'Mumbai'),
(5,'yash',3500,'Pune');

-- query to project names of employees whose salary > umesh's salary
select ename from employee where 
salary > (select salary from employee where ename = 'Umesh');

select * from employee;

-- List Name of All employees who are in same city as ravi
select ename from employee where
city in (select city from employee where ename = 'ravi');

-- List of All employees who are in same city as ravi but don't show ravi in projection
select ename from employee where
city in (select city from employee where ename = 'ravi') and ename not in ('ravi');

-- All operator - ALL operator is used when a value has to be compared with all the values in the list.
select ename from employee where 
salary > all(select salary from employee where ename = 'umesh');

-- ANY operator is used when a value has to be compared with all the values in the list.It
-- returns true if any of the expressions evaluate to true.

select ename from employee where 
salary > any(select salary from employee where ename = 'yash');

-- exists and not exists
create table supplier(
	sno int,
    sname varchar(30),
    location varchar(30)
);

create table parts(
	pno int,
    pname varchar(30),
    sno int
);

insert into supplier values
(1,'Yoko','Singapore'),
(2,'ABC','India'),
(3,'Honeywell','USA'),
(4,'Hughes','India');

insert into parts values
(10,'PRM',1),
(20,'centum',1),
(30,'isae',2),
(40,'rpo',3);

select * from parts;
-- Q) retrive the supplier who has supplied atleast one part
select * from parts p INNER JOIN supplier s where p.sno = s.sno;
select sname as supplierName from supplier where exists(select * from supplier,parts where parts.sno = supplier.sno);

-- Q) retrieve the name of supplier who has not supplied any part
select sname as supplierName from supplier where not exists(select * from supplier, parts where parts.sno = supplier.sno);
