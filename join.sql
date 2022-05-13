-- 1. Find the domestic and international sales for each movie
SELECT title, domestic_sales, international_sales 
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id;

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, domestic_sales, international_sales
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- 3. List all the movies by their ratings in descending order
SELECT title
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;

--OUTER JOIN 
-- 1. Find the list of all buildings that have employees 
SELECT DISTINCT building FROM employees;

-- 2. Find the list of all buildings and their capacity
SELECT building_name, capacity
FROM buildings;

-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, role 
FROM buildings 
LEFT JOIN employees ON buildings.building_name = employees.building;
