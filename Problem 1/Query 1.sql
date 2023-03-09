-- print the title and rating of those movies
-- conditions:
  -- genre starting with 'C'
  -- released in 2014
  -- budget higher than 4 crore

select title, rating
from imdb
inner join genre
on imdb.movie_id = genre.movie_id
where
genre.genre like 'C%' and 
imdb.title like '%(2014)' and 
imdb.budget > 40000000;