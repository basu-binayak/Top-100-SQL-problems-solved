select genre, max(netprofit) as net_profit
from(
	select earning.movie_id, domestic+worldwide-budget as netprofit, title
	from earning 
	inner join imdb 
	on earning.movie_id = imdb.movie_id 
	where title like '%(2012)'
    and
    domestic+worldwide-budget is not null) as derivedTable
inner join genre
on genre.movie_id = derivedTable.movie_id
where genre is not null
group by genre
order by genre



