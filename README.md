# 🚀SQL Practice from SQLZoo

I've compiled the solutions to all of all 10 levels on the [SQL Zoo Tutoral](http://sqlzoo.net/wiki/SQL_Tutorial).  


## SELECT basics
Simple queries to get started.

1. Introducing the world table of countries

```sql
SELECT population FROM world
  WHERE name = 'Germany'
```
2. Scandinavia

```sql
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
```

3. Just the right size

```sql
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
  ```
## Select Names

Some pattern matching queries

1. Find the country that start with Y

```sql
SELECT name FROM world
  WHERE name LIKE 'Y%'
  ```

2. Find the countries that end with y

```sql
SELECT name FROM world
  WHERE name LIKE '%Y' 
  ```

3. Find the countries that contain the letter x

```sql
SELECT name FROM world
  WHERE name LIKE '%x%'
  ```

4. Find the countries that end with land

```sql
SELECT name FROM world
  WHERE name LIKE '%land'
  ```

5. Find the countries that start with C and end with ia

```sql
SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE '%ia' 
  ```

6. Find the country that has oo in the name

```sql
SELECT name FROM world
  WHERE name LIKE '%oo%'
  ```

7. FInd the Countries with Three or more `a` in name [TRICKY]

```sql
SELECT name FROM world
  WHERE name LIKE '%a%a%a%';
  ```

8. Find the countries that have "t" as the second character.

```sql
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
```

9. Lesotho and Moldova both have two o characters separated by two other characters.
Find the countries that have two "o" characters separated by two others.

```sql
SELECT name FROM world
 WHERE name LIKE '%o__o%'
 ```

10. Find the countries that have exactly four characters.

```sql
SELECT name FROM world
 WHERE name LIKE '____'
 ```
