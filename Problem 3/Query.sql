select genre, max(new_rating) as weighted_rating
from (select genre, (rating+metacritic/10.0)/2.0 as new_rating 
      from imdb 
      inner join genre
      on genre.movie_id = imdb.movie_id
      where (rating+metacritic/10.0)/2 is not null 
      and genre is not null
      and title like '%2014%') as derivedTable
group by genre
order by genre