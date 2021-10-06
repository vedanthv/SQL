-- DBMS Course - Module 2 - SQL Commands

-- Create Database

CREATE DATABASE university;

-- USE DATABASE university; this is automatic by MySQL no need to execute

-- Creating Table
CREATE TABLE students
(
name VARCHAR(30) ,
studentnumber INT ,
class VARCHAR(30) ,
major VARCHAR(30)
);

CREATE TABLE section
(
sectionid INT,
coursenumber VARCHAR(30),
semester VARCHAR(30),
Year INT,
instructor VARCHAR(30)
);

CREATE TABLE GradeReport
(
studentnumber INT,
SectionIdentifier INT,
grade CHAR(1)
);

CREATE TABLE prerequisite
(
coursenumber VARCHAR(30),
prerequisitenumber VARCHAR(30)
);

-- Description of table
DESC students;

-- Alter table to add column
ALTER table students ADD address VARCHAR(30) AFTER studentnumber;

-- Add Multiple Columns
ALTER TABLE students ADD middlename VARCHAR (30) after
name , ADD lastname VARCHAR (30) after middlename;

-- Drop Column[IMP]
ALTER table students DROP COLUMN major;

-- Rename Column and give it new definition
ALTER TABLE students CHANGE COLUMN name fname VARCHAR(55) first;

-- Rename a table
-- Rename Table: to rename a table in MySQL is:
-- ALTER TABLE table_name RENAME TO new_table_name;

-- Drop Table: to drop a table in MySQL is:
-- DROP TABLE table_name;

-- DML Statements

-- Create table student
CREATE TABLE student
(
name VARCHAR(30) ,
studentnumber INT ,
class VARCHAR(30) ,
major VARCHAR(30)
);

-- Inserting Values 
INSERT INTO student(name, studentnumber,class,major) values ('smith',17,'5 Semester','CS');
INSERT INTO student(name, studentnumber,class,major) values ('Brown',8,'6 Semester','CS');
INSERT INTO student(name, studentnumber,class,major) values ('Raj',10,'1 Semester','CS');
INSERT INTO student(name, studentnumber,class,major) values ('Rohit',5,'2 Semester','CS');

-- Data Querying
-- Display all records

SELECT * FROM student;

-- Particular Column
SELECT name FROM student;

SELECT name,studentnumber from student;

-- With WHERE clause
SELECT name FROM student WHERE studentnumber = 17;
Select studentnumber ,class ,major from student where studentnumber
= 17 ;

-- Data Manipulation Commands
-- Update Command : The MySQL UPDATE statement is used to update existing data within a table

-- Toggle safe mode off
SET SQL_SAFE_UPDATES = 0;

UPDATE student SET name = 'Jamie' WHERE studentnumber = 17;

-- Deleting records
DELETE FROM student WHERE name = 'Smith';

-- Retrival Queries

-- Creating db for shop
CREATE DATABASE shop;

USE shop;

-- create stock table 
CREATE table stock(
	item_id INT,
    itemname VARCHAR(30),
    opening_stock INT,
    amt_unit INT
);
-- inserting values
INSERT INTO stock VALUES(1,'fewiquik',80,12);
INSERT INTO stock VALUES(2,'a4sheet',90,3);
INSERT INTO stock VALUES(3,'stapler',70,10);
INSERT INTO stock VALUES(4,'pen',90,10);
INSERT INTO stock VALUES(5,'pencil',10,5);

-- retrival queries
SELECT itemname,item_id 
FROM stock 
WHERE amt_unit =10;

-- and clause for more than one condition
-- Retrieve the name and itemid of the items whose amount per unit is Rs. 10
SELECT * 
FROM STOCK 
WHERE OPENING_STOCK > 50 
AND AMT_UNIT < 10;

-- Retrieve the details of the items whose opening stock is greater than 50 and amount per unit less than 10.
SELECT * FROM STOCK 
WHERE OPENING_STOCK > 50 
AND AMT_UNIT<10;

-- Retrieve the itemid and itemname of the items whose itemname is A4SHEET or amount per unit in not equal to 10.

SELECT ITEM_ID,ITEMNAME 
FROM STOCK 
WHERE ITEMNAME='a4sheet' OR AMT_UNIT != 10;

-- Create company db

CREATE database company;

USE company;

-- Creating required tables
CREATE table employee(
	NO INT,
	NAME VARCHAR(30),
    AGE INT,
    SALARY BIGINT,
    DNO INT
);

CREATE table employee(
	NO INT,
	NAME VARCHAR(30),
    AGE INT,
    SALARY BIGINT,
    DNO INT
);

CREATE table department(
	NO INT,
	DNAME VARCHAR(30),
    LOCATION VARCHAR(55)
);

-- Inserting Values
INSERT INTO employee VALUES(1,'Eric',29,35000,10);
INSERT INTO employee VALUES(2,'Zhen',30,40000,10);
INSERT INTO employee VALUES(3,'Anna',28,35000,20);
INSERT INTO employee VALUES(4,'Rashmi',32,50000,30);

INSERT INTO department VALUES(10,'Software','India');
INSERT INTO department VALUES(20,'Finance','US');
INSERT INTO department VALUES(30,'Research','Spain');

-- Retrival Queries
-- Retrieve the name of employee who works in Research department
SELECT NAME, DNAME
FROM employee, department
WHERE employee.DNO = department.NO
AND department.DNAME = 'Research';

