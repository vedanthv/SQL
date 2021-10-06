-- Primary Key is a single attribute or small set of attributes used to maintain distinct tuples in a relation and to identify
-- tuples in a relation.

-- create persons table
CREATE TABLE persons 
(
	Id INT, 
	lastname VARCHAR(50) NOT NULL ,
	Firstname VARCHAR(50) NOT NULL,
	age INT ,
	PRIMARY KEY(Id)
);

-- observe id is primary key

DESC persons;

-- inserting values

INSERT INTO persons VALUES(1,'ambani','mukesh',70);
INSERT INTO persons VALUES(2,'ambani','anil',50);
INSERT INTO persons VALUES(3,'ambani','nita',40);
INSERT INTO persons VALUES(4,'ambani','mukesh',70);

-- Primary key cannot have null values
INSERT INTO persons VALUES (null,'ambani', 'nita', 40); -- shows error Column id cannot be null

-- Unique Constraint : The attribute specified as Unique contains distinct values for its row but it can accept null values.

-- Modifying persons table
DROP TABLE persons;
CREATE TABLE persons 
(
	Id INT UNIQUE, 
	lastname VARCHAR(50) NOT NULL ,
	Firstname VARCHAR(50) NOT NULL,
	age INT
);

-- Description
DESC persons;

-- Id can be null also now
INSERT INTO persons VALUES(null,'ambani','anil',50);

-- Not Null and Unique together means column cannot be null

DROP TABLE persons;

CREATE TABLE persons 
(
	Id int NOT NULL UNIQUE, 
	lastname varchar(50) not null, 
	firstname varchar(50), age int
);

-- Foreign keys

-- Recreate table persons

DROP TABLE persons;

CREATE TABLE persons 
(Id int, 
lastname varchar(50) not null, 
firstname varchar(50), 
age int , 
primary key (Id)
);

-- Creating orders that references column of persons

create table orders 
(	oid int, 
	onumber varchar(30) NOT NULL ,
	pid int , 
	primary key (oid) ,
	foreign key (pid) references persons(Id)
);




