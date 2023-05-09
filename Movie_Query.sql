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

--7. Retrieve the name of all the actors and movie title who acted in a particular movie (movie_id = 912):
	SELECT a.act_fname, a.act_lname, m.mov_title
	FROM actor a
	INNER JOIN movie_cast mc ON a.act_id = mc.act_id
	INNER JOIN movie m ON m.mov_id = mc.mov_id
	WHERE mc.mov_id = 912

--8. Retrieve the name of all the directors who directed a particular movie (movie_id = 908):
	SELECT d.dir_fname, d.dir_lname, m.mov_title
	FROM director d
	INNER JOIN movie_direction md ON d.dir_id = md.dir_id
	INNER JOIN movie m ON md.mov_id = m.mov_id
	WHERE md.mov_id = 908

--9. Retrieve the name of all the reviewers, review stars, number of ratings for a particular movie (movie_id = 906):
	SELECT r.rev_name, ra.rev_stars, ra.num_o_ratings
	FROM reviewer r
	INNER JOIN rating ra ON r.rev_id = ra.rev_id
	WHERE ra.mov_id = 903