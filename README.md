# 🚀SQL Practice from SQLZoo

I've compiled the solutions to all of all 10 levels on the [SQL Zoo Tutoral](http://sqlzoo.net/wiki/SQL_Tutorial).  


## SELECT basics
Simple queries to get started.

1.Introducing the world table of countries

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
