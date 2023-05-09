--1. Retrieve all the movies in the database:
	SELECT *FROM movie
	SELECT DISTINCT *FROM movie		--Fetching unique records only.

--2. Retrieve the title and release year of all the movies in the database:
	SELECT mov_title, mov_year
	FROM movie
	SELECT mov_title, YEAR(mov_dt_rel) AS release_year		--Extracting year from date.
	FROM movie

--3. Retrieve the name and gender of all the actors in the database:
	SELECT *FROM actor
	SELECT act_fname,act_lname, act_gender
	FROM actor

--4. Retrieve the name of all the directors in the database:
	SELECT *FROM director
	SELECT dir_fname, dir_lname
	FROM director

--5. Retrieve the name of all the genres in the database:
	SELECT *FROM genres
	SELECT gen_title
	FROM genres

--6. Retrieve the title, year of release, and average rating of all the movies in the database:
	SELECT m.mov_title, YEAR(m.mov_dt_rel) AS release_year, AVG(r.num_o_ratings) AS average_rating
	FROM movie m
	LEFT JOIN rating r ON m.mov_id = r.mov_id
	GROUP BY m.mov_title, m.mov_dt_rel, r.num_o_ratings

	