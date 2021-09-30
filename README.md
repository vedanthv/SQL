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
  
 ### Quiz 1 : 
 
### 1.
![image](https://user-images.githubusercontent.com/44313631/135419849-d40a3297-d196-4ca8-8503-2c96967e5ad6.png)

#### Query : 
`SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000`
 
<hr>

### 2. Pick the result you would obtain from this code:
      `SELECT name, population
      FROM world
      WHERE name LIKE "Al%"`
      
 #### Answer : 

![image](https://user-images.githubusercontent.com/44313631/135420222-606a75bb-4988-4be5-bee8-5b3f8922e558.png)

<hr>
  
### 3.  Select the code which shows the countries that end in A or L

`SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'`
 
<hr>

### 4. Pick the result from the query

`SELECT name,length(name)
FROM world
WHERE length(name)=5 and region='Europe'`

#### Answer : 

![image](https://user-images.githubusercontent.com/44313631/135420566-9700ea12-43a5-4233-82c8-2a36a24602ad.png)

<hr>

### 5.

![image](https://user-images.githubusercontent.com/44313631/135420668-bd96c366-0c6f-41b8-9608-d87be6b986b3.png)

#### Answer : 

![image](https://user-images.githubusercontent.com/44313631/135420791-a9bf3ad5-964f-43e2-84b2-62a0c45a5576.png)

<hr>

### 6. Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000

`SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000`
 <hr>
 
 ### 7. Select the code that shows the population density of China, Australia, Nigeria and France

`SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')`
 
 <hr>
