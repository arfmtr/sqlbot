-- 1. Find the longest time that an employee has been at the studio
SELECT MAX(years_employed) AS Yearemployed
FROM employees;

-- 2. For each role, find the average number of years employed by employees in that role
SELECT role, AVG(years_employed) AS AVGYear
FROM employees
GROUP BY role;

-- 3. Find the total number of employee years worked in each building
SELECT building, SUM(years_employed) AS Totalyr
FROM employees
GROUP BY building;

-- 4. Find the number of Artists in the studio (without a HAVING clause)
SELECT role, COUNT(*) AS NumberOfArtists
FROM employees
WHERE role = "Artist";

-- 5. Find the number of Employees of each role in the studio
SELECT role, COUNT(*)
FROM employees
GROUP BY role;

-- 6. Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";