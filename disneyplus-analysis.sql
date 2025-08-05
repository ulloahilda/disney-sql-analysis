
-- Movie SQL Analysis Project by Hilda Ulloa
-- Goal: Analyze movie ratings and trends using SQL

-- 1. Change disneyplus table column names 
ALTER TABLE disneyplus RENAME COLUMN field1 TO show_id;
ALTER TABLE disneyplus RENAME COLUMN field2 TO type;
ALTER TABLE disneyplus RENAME COLUMN field3 TO title;
ALTER TABLE disneyplus RENAME COLUMN field4 TO director;
ALTER TABLE disneyplus RENAME COLUMN field5 TO "cast";
ALTER TABLE disneyplus RENAME COLUMN field6 TO country;
ALTER TABLE disneyplus RENAME COLUMN field7 TO date_added;
ALTER TABLE disneyplus RENAME COLUMN field8 TO release_year;
ALTER TABLE disneyplus RENAME COLUMN field9 TO rating;
ALTER TABLE disneyplus RENAME COLUMN field10 TO duration;
ALTER TABLE disneyplus RENAME COLUMN field11 TO listed_in;
ALTER TABLE disneyplus RENAME COLUMN field12 TO description;

-- 2. Preview disneyplus table
SELECT * FROM disneyplus LIMIT 10;

-- 3. Find most common genres on Disney plus





-- 4. How has the number of new releases changed over the years?
SELECT 
	release_year,
	COUNT (*) AS repeat_count
FROM disneyplus 
GROUP BY 	
	release_year	
Order by 
	repeat_count DESC;

--5. How has the number of new releases changed over the years TV vs. Movies?
-- This data set shows both Movies and TV show count
SELECT 
	release_year,
	type,
	COUNT (*) AS repeat_count
FROM disneyplus 
GROUP BY 	
	release_year, type	
Order by 
	repeat_count DESC ;

-- 5. Are movies or TV shows more dominant?
--Query to only find movies count
SELECT 
	release_year,
	type,
	COUNT (*) AS repeat_count
FROM disneyplus 
WHERE type = 'Movie'
GROUP BY 	
	release_year, type 
Order by 
	repeat_count DESC ;

-- Query to only find TV show count 
SELECT 
	release_year,
	type,
	COUNT (*) AS repeat_count
FROM disneyplus 
WHERE type = 'TV Show'
GROUP BY 	
	release_year, type 
Order by 
	repeat_count DESC ;







