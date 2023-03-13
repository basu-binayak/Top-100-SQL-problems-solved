
select title,rating 
from (select title, dense_rank() over(partition by year order by rating desc) as r_rank, rating 
      from (select title, rating, substring(title,length(title)-5) as year 
	    from imdb) as t1) as t2
where r_rank = 1 or r_rank = 2
	


