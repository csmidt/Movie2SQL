--Get the average rating for a movie
SELECT movies.title,movies.movieid, avg(ratings.rating)
FROM movies
  JOIN ratings ON movies.movieid = ratings.movieid
WHERE movies.movieid = '485'
GROUP BY movies.movieid;

--Get the total ratings for a movie
SELECT movies.title, movies.movieid, count(ratings.rating)
FROM movies
  JOIN ratings ON movies.movieid = ratings.movieid
WHERE movies.movieid = '485'
GROUP BY movies.movieid;

--Get the total movies for a genre
SELECT genre.genres, count(movies.genres)
FROM movies
  JOIN genre ON movies.genres = genre.genres
WHERE movies.genres like'%Comedy%'
GROUP BY genre.genres;

--Get the average rating for a user
Select ratings.userid, avg(ratings.rating)
FROM ratings
Group By ratings.userid;

--Find the user with the most ratings
Select ratings.userid, count(ratings.rating)
FROM ratings
GROUP BY ratings.userid
ORDER BY count ASC;

--Find the user with the highest average rating
SELECT ratings.userid, avg(ratings.rating)
FROM ratings
GROUP BY ratings.userid
ORDER BY avg DESC
LIMIT '1';

--Find the user with the highest average rating with more than 50 reviews
SELECT ratings.userid, avg(ratings.rating)
FROM ratings
GROUP BY ratings.userid
HAVING COUNT(ratings.id) > 50;

--Find the movies with an average rating over 4
SELECT movies.title, movies.movieid, avg(ratings.rating)
FROM ratings
  JOIN movies ON ratings.movieid = movies.movieid
WHERE ratings.rating > 4
GROUP BY movies.movieid;

--For each genre find the total number of reviews as well
-- as the average review sort by highest average review.

SELECT genres, count(ratings.rating)as reviews ,avg(ratings.rating)
FROM ratings
  JOIN movie_genre ON ratings.movieid = movie_genre.movieid
  JOIN genre ON movie_genre.genre_id = genre.id
GROUP BY genre.genres
ORDER BY avg DESC;

select *
from actors;

INSERT INTO actors
(name, character_name, movieid, dob, id)
values
('Clooney', 'Seth', 70, 3-27-1963, 1 );

INSERT INTO actors
(name, character_name, movieid, dob, id)
values
('Quentin', 'Richard', 70,3/27/1963, 1 );

INSERT INTO actors
(name, character_name, movieid, dob, id)
values
('Juliette', 'Kate', 70, 1973-06-23 , 3 );

INSERT INTO actors
(name, character_name, movieid, dob, id)
values
('Salma', 'Santanico', 70, September 2 1966, 4 );

INSERT INTO actors
(name, character_name, movieid, date_of_birth, id)
values
('Clooney', 'Seth', 70, 'March 27 1963', 1 ),

('Quentin', 'Richard', 70, 'March 27 1963', 2 );

INSERT INTO actors
(name, character_name, movieid, date_of_birth, id, MPAA_rating)
values
('Jon', 'Napoleon', 0374900, 'May 13 1939', 21, 'PG'),
('Jon', 'Uncle Rico', 0374900, 'May 20 1975', 22, 'PG'),
('Aaron', 'Kip', 0374900, 'July 13 1946', 23, 'PG'),
('Efren', 'Pedro', 0374900, 'May 16 1944', 24, 'PG' ),
('Diedrich', 'Rex', 0374900, 'Nov 3 1946', 25, 'PG'),
('Tina', 'Deb', 0374900, 'March 5 1938', 26, 'PG'),
('Sandy', 'Granma', 0374900, 'May 13 1939', 27, 'PG'),
('Haylie', 'Summer', 0374900, 'May 20 1975',28, 'PG'),
('Trevor', 'Don', 0374900, 'July 13 1946', 29, 'PG'),
('Shondrella', 'Lafawnduh', 0374900, 'May 16 1944', 30, 'PG');


select *
from movies
where title like '%Napoleon%';

update movies
set mpaa = 'R'
WHERE movieid = 70;

update movies
set mpaa = 'PG'
WHERE movieid = 374900;

update movies
set mpaa = 'PG'
WHERE movieid = 241527;

update movies
set mpaa = 'R'
WHERE movieid = 0100405;

update movies
set mpaa = 'PG'
WHERE movieid = 0092099;









