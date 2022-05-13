-- 1. Find the number of movies each director has directed
SELECT director, COUNT(id) AS Num_movies_directed
FROM movies
GROUP BY director;

-- 2. Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM(domestic_sales + international_sales) AS TotalSales
FROM movies
INNER JOIN boxoffice ON movies.id = boxoffice.movie_id
GROUP BY director;