select title,rating
from imdb
where 
imdb.movie_id in (select movie_id from genre where genre like 'C%') and
title like '%(2014)' and 
budget > 40000000;