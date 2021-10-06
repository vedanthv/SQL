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

-- Inserting Values

INSERT INTO persons VALUES(1,'ambani','mukesh',70);
INSERT INTO persons VALUES(2,'ambani','anil',50);
INSERT INTO persons VALUES(3,'ambani','nita',40);
INSERT INTO persons VALUES(4,'ambani','mukesh',70);

INSERT INTO orders VALUES(101,'O001',1);
INSERT INTO orders VALUES(102,'O002',1);
INSERT INTO orders VALUES(103,'O003',2);
INSERT INTO orders VALUES(104,'O004',3);

-- does not work as pid in orders references id in persons and id of 4 already there in persons
INSERT INTO orders VALUES(105,'O005',4);

-- since ON DELETE RESTRICT is default constraint for foreign key, we can't delete from persons table
DELETE FROM persons WHERE id = 2;

-- on delete cascade, on delete restrict, on update cascade constraints
DROP table orders;
DROP table persons;

CREATE table persons(
	id int,
    lastname varchar(50) not null,
    firstname varchar(50),
    age int,
    primary key(Id)
);

create table orders 
(	oid int, 
	onumber varchar(30) NOT NULL ,
	pid int , 
	primary key (oid) ,
	foreign key (pid) references persons(Id) on delete cascade
);

-- inserting values

INSERT INTO persons VALUES(1,'ambani','mukesh',70);
INSERT INTO persons VALUES(2,'ambani','anil',50);
INSERT INTO persons VALUES(3,'ambani','nita',40);
INSERT INTO persons VALUES(4,'ambani','mukesh',70);

INSERT INTO orders VALUES(101,'O001',1);
INSERT INTO orders VALUES(102,'O002',1);
INSERT INTO orders VALUES(103,'O003',2);
INSERT INTO orders VALUES(104,'O004',3);

-- deleting from orders(child to persons)
delete from orders 
where pid = 1 and oid = 101;

-- the record deleted from orders
select * from orders;

-- but not from persons!
select * from persons;

-- delete from persons with on update cascade
delete from persons where id = 2;

-- on viewing records, the record with id = 2 is deleted from persons(master) as well as orders(child)
select * from persons;
select * from orders;

-- updating orders table when there is no matching pid in persons table gives error.
-- there should be matching values in both tables
-- refer 64th slide here https://classroom.google.com/c/MzIwNTAyODU4MDIx/m/NDA2NDQyMzMyMjE1/details
-- for demo


