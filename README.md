# 🚀SQL Practice from SQLZoo

I've compiled the solutions to all of all 10 levels on the [SQL Zoo Tutorial](http://sqlzoo.net/wiki/SQL_Tutorial).  


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
11. The capital of Luxembourg is Luxembourg. Show all the countries where the capital is the same as the name of the country
Find the country where the name is the capital city.

```sql
SELECT name
  FROM world
 WHERE name=capital
 ```

12. Find the country where the capital is the country plus "City".[TRICKY]

```sql
SELECT name
  FROM world
 WHERE capital = concat(name, ' City');
 ```

13. Find the capital and the name where the capital includes the name of the country.
**Tricky ATM will come back to it later!**

14. Find the capital and the name where the capital is an extension of name of the country.
**Tricky ATM will come back to it later!**

15. Show the name and the extension where the capital is an extension of name of the country.
**Tricky ATM will come back to it later!**

## SELECT from WORLD Tutorial

In this tutorial you will use the SELECT command on the table world:

1. Introduction

```sql
SELECT name, continent, population 
    FROM world
```

2. Large Countries
Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

```sql
SELECT name FROM world
    WHERE population > 200000000
```
3. Per capita GDP
Give the name and the per capita GDP for those countries with a population of at least 200 million.

```sql
SELECT name, gdp/population
FROM world 
WHERE population > 200000000
```
4. South America In millions
Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

```sql
select name, population/1000000
from world 
where continent = 'South America'
```

5. Show the name and population for France, Germany, Italy

```sql
select name,population 
from world
where name in ('France','Germany','Italy')
```

6. United
Show the countries which have a name that includes the word 'United'

```sql
select name
from world 
where name like '%United%'
```

7. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.
Show the countries that are big by area or big by population. Show name, population and area.

```sql
select name,population, area
from world
where area > 3000000 or population > 250000000
```

8. Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.

```sql
select name, population, area 
from world
where area > 3000000 xor population > 250000000
```
9. Rounding
For South America show population in millions and GDP in billions both to 2 decimal places.

```sql
select name, ROUND(population/1000000,2), ROUND(gdp/1000000000, 2)
from world
where continent = 'South America'
```

10. Trillion dollar economies[Important]
Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.
**Show per-capita GDP for the trillion dollar countries to the nearest $1000.**

```sql
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1000000000000;
```

11. Show the name and capital where the name and the capital have the same number of characters.

```sql
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)
```

12. Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.

```sql
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) 
AND name != capital;
```

13. Find the country that has all the vowels and no spaces in its name.

```sql
SELECT name
FROM world
WHERE name LIKE '%a%' 
AND name LIKE '%e%' 
AND name LIKE '%i%' 
AND name LIKE '%o%' 
AND name LIKE '%u%' 
AND name NOT LIKE '% %';
```
