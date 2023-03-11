SELECT IMDB.Title,IMDB.Rating FROM IMDB,earning 
where IMDB.Movie_id = earning.Movie_id
AND IMDB.Title like '%(2012)%'
AND earning.Domestic > 100000000
AND IMDB.MetaCritic > 60;