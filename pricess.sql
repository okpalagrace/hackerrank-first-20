-- Ques 1 Query all columns for all American cities in the CITY
--table with populations larger than 100000.
--The CountryCode for America is USA.

SELECT ID, NAME, COUNTRYCODE, DISTRICT, POPULATION FROM CITY
WHERE POPULATION > 100000
and COUNTRYCODE = "USA"

-- Ques 2 Query the NAME field for all American cities in the CITY
--table with populations larger than 120000.
--The CountryCode for America is USA.

select NAME
FROM CITY
where POPULATION > 120000
and COUNTRYCODE = 'USA'

-- Ques 3Query all columns (attributes) for every row in the CITY table.
select  ID,NAME,COUNTRYCODE,DISTRICT, POPULATION
FROM CITY;

-- QUES 4 Query all columns for a city in CITY with the ID 1661.

select ID, NAME, COUNTRYCODE, DISTRICT, POPULATION
FROM CITY
WHERE ID = 1661;
-- Ques 5 Query all attributes of every Japanese city in the CITY table.
--The COUNTRYCODE for Japan is JPN.

select ID, NAME, COUNTRYCODE, DISTRICT, POPULATION
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- QUES 6 Query the names of all the Japanese cities in the CITY table. 
--The COUNTRYCODE for Japan is JPN.


SELECT  NAME
FROM CITY 
WHERE COUNTRYCODE = 'JPN';


-- Ques 7 Query a list of CITY and STATE from the STATION table.
SELECT CITY,STATE
FROM STATION;

-- Ques 8 Query a list of CITY names from STATION
--for cities that have an even ID number. Print the results in any order,
--but exclude duplicates from the answer.

SELECT DISTINCT(CITY)
FROM STATION
WHERE MOD(ID, 2)=0;

-- Ques 9 Find the difference between the total number of CITY entries
--in the table and the number
--of distinct CITY entries in the table.

select count(CITY) - count(DISTINCT (CITY)) difference
FROM STATION;

-- Ques 10 Query the two cities in STATION 
--with the shortest and longest CITY names,
--as well as their respective lengths 
--(i.e.: number of characters in the name).
--If there is more than one smallest or largest city, 
--choose the one that comes first when ordered alphabetically.

select city, length(city)
from station
order by length(city) asc, city limit 1;
select city, length(city)
from station
order by length(city) desc, city limit 1;

--QUEST 11 Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u)
--from STATION. Your result cannot contain duplicates.

select  distinct (city) 
from station
where city like 'A%'or
city like 'E%' or
city like 'I%' or
city like 'O%' or
city like 'U%';

-- Ques 12 Query the list of CITY names ending with vowels (a, e, i, o, u) 
--from STATION. Your result cannot contain duplicates
select distinct (city)
from station
where city like '%a' or
city like '%e' or
city like '%i' or
city like '%o' or
city like '%u';

-- Ques 13 Query the list of CITY names from STATION 
--which have vowels (i.e., a, e, i, o, and u) 
--as both their first and last characters. 
--Your result cannot contain duplicates.

select distinct city from station 
where left(city,1) in ('A','E','I','O','U')
and right (city, 1) in ('a','e','i','o','u')
order by city asc;

-- QUES 14 Query the list of CITY names from STATION
--that do not start with vowels.
--Your result cannot contain duplicates.
select distinct (CITY)
from station 
where left(CITY,1) not in ('A','E','I','O','U');

--Que 15 Query the list of CITY names from STATION that do not end with
--vowels Your result cannot contain duplicates.

select distinct city from station 
where right(city,1) not in ('a','e','i','o','u')
order by city asc;

-- Ques 16 Query the list of CITY names from STATION that either 
--do not start with vowels or do not end with vowels.
--Your result cannot contain duplicate
select distinct city from station 
where left(city,1) not in ('A','E','I','O','U')
or right (city, 1) not in ('a','e','i','o','u')
order by city asc;

-- Ques 17 Query the list of CITY names from STATION 
--that do not start with vowels and do not end with vowels.
--Your result cannot contain duplicates
select distinct city from station 
where left(city,1) not in ('A','E','I','O','U')
and right (city, 1) not in ('a','e','i','o','u')
order by city asc;


--Ques 18 Query the Name of any student in STUDENTS who scored higher 
--than 75 Marks.Order your output by the last
--three characters of each name. If two or more students
--both have names ending in the 
--same last three characters (i.e.: Bobby, Robby, etc.), 
--secondary sort them by ascending ID.

select name from students
where marks > 75
order by right (name, 3) ,id asc;



-- Ques 19 Write a query that prints a list of employee
--(i.e.: the name attribute) from the Employee 
--table in alphabetical order.

select name from employee
order by name asc;

-- Ques 20 Write a query that prints a list of employee names
--(i.e.: the name attribute) for employees in Employee having 
--a salary greater $2000 than per month who have been employees for 
--less than 10  months. Sort your result by ascending employee_id.

select name from employee
where salary > 2000
and months < 10
order by employee_id asc;






