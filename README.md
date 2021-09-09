# 🚀SQL Commands
Collection of SQL commands and theory for DBMS Course at University

## Categories of SQL Commands 
- DDL : Data Definition Language
- DQL - Data Query Language
- DML - Data Manipulation Language
- DCL - Data Control Language

## 🦉Birds Eye View of SQL Commands
<img src = "https://user-images.githubusercontent.com/44313631/132503109-1d37373d-ddfb-430f-9b18-60607d4ab334.png" width = 400px height = 400px/>

## 👩‍💻Data Definition Commands
### 🚀Creating a Database
- 📚CREATE DATABASE dbname;
### 🚀Using a Database
- 📚USE dbname;
### 🚀Creating a Table
- 📚CREATE table tablename(columnname1 datatype(dtype size), columename2 datatype(dtype size));
### 🚀Alter Tables!
- 📚ALTER table table_name add new_column_name column_definition first/after column_name; 
      <br>Similarly multiple columns can be added
### 🚀Modifying Tables
- 📚ALTER table table_name MODIFY column_name1 new_column_definition;<br> Multiple columns can be modified in the same manner
### 🚀Drop Column in Table
- 📚ALTER TABLE table_name DROP COLUMN column_name;
### 🚀Rename Column in Table
-  📚ALTER TABLE table_name RENAME COLUMN old_name TO new_name;
### 🚀Rename Table
- 📚RENAME TABLE old_table TO new_table;
### 🚀Drop the Table
- 📚DROP TABLE table_name;
### 🚀Drop Multiple Tables
- 📚DROP TABLE table_name1, tablename2;
