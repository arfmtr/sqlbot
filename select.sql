-- 1. Find the title of each film
SELECT title FROM movies;

-- 2. Find the director of each film
SELECT director FROM movies;

-- 3. Find the title and director of each film
SELECT title, director FROM movies;

-- 4. Find the title and year of each film
SELECT title, year FROM movies;

-- 5. Find all the information about each film
SELECT * FROM movies;

--SIMPLE SELECT 
-- 1. List all the Canadian cities and their populations 
SELECT city, population FROM north_american_cities
WHERE country = 'Canada';

-- 2. Order all the cities in the United States by their latitude from north to south
SELECT city, latitude FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

-- 3. List all the cities west of Chicago, ordered from west to east
SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

-- 4. List the two largest cities in Mexico (by population)
SELECT city FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

-- 5. List the third and fourth largest cities (by population) in the United States and their population
SELECT city, population FROM North_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;