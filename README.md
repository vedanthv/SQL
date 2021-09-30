# 🚀SQL Practice from SQLZoo

## 1. SELECT Basics

[Link to the Tutorial](https://sqlzoo.net/wiki/SELECT_basics)

1. **WHERE Clause**:<br>
Show population of Germany<br>
`SELECT population FROM world WHERE name = 'Germany'`

2. **IN Clause** :
Checking a list The word IN allows us to check if an item is in a list<br>
`SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');`

3. **Between Clause**:<br>
Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values).<br>
`SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000`
  
 ### Quiz 1 [Link](https://sqlzoo.net/wiki/SELECT_Quiz)
 
# 2. SELECT FROM WORLD
<hr>

### Sample Select Statement

`SELECT name, continent, population FROM world`

### Large Countries

`SELECT name FROM world
WHERE population > 200000000`

### per capita gdp

Give the name and the per capita GDP for those countries with a population of at least 200 million.

`SELECT name, gdp/population
FROM world 
WHERE population > 200000000`

### South America In millions

Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

`select name, population/1000000
from world 
where continent = 'South America'`

### France, Germany, Italy

`select name,population 
from world
where name in ('France','Germany','Italy')`

### United

Show the countries which have a name that includes the word 'United'

`select name
from world 
where name like '%United%'`

### Two ways to be big

Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.

Show the countries that are big by area or big by population. Show name, population and area.

`select name,population, area
from world
where area > 3000000 or population > 250000000`

### One or the other (but not both)

Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
