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


