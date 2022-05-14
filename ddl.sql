--INSERT INTO 
-- 1. Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

-- 2. Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table. 
INSERT INTO boxoffice
(movie_id, rating, domestic_sales, international_sales)
VALUES (4, 8.7, 340000000, 270000000);

--UPDATE
-- 1. The director for A Bug's Life is incorrect, it was actually directed by John Lasseter 
UPDATE movies SET director = 'John Lasseter'
WHERE title = 'A Bug''s Life';

-- 2. The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies SET year = 1999
WHERE title = 'A Bug''s Life';

-- 3. Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
UPDATE movies SET title = 'Toy Story 3', director = 'Lee Unkrich'
WHERE ID = 11;

--DELETE 
-- 1. This database is getting too big, lets remove all movies that were released before 2005.
DELETE FROM movies 
WHERE year < 2005;

-- 2. Andrew Stanton has also left the studio, so please remove all movies directed by him.
DELETE FROM movies 
WHERE director = 'Andrew Stanton';

--CREATE TABLE 
-- 1. Create a new table named Database with the following columns:
--Name A string (text) describing the name of the database
--Version A number (floating point) of the latest version of this database
--Download_count An integer count of the number of times this database was downloaded. This table has no constraints.
CREATE TABLE Database (
    name TEXT,
    version FLOAT,
    download_count INTEGER,
);

--ALTER TABLE 
-- 1. Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
ALTER TABLE Movies
ADD COLUMN aspect_ratio FLOAT DEFAULT 2.39;

-- 2. Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
ALTER TABLE Movies
ADD COLUMN Language TEXT DEFAULT english;

--DROP TABLE 
-- 1. We've sadly reached the end of our lessons, lets clean up by removing the Movies table
DROP TABLE IF EXISTS movies;

-- 2. And drop the BoxOffice table as well
DROP TABLE IF EXISTS boxoffice;