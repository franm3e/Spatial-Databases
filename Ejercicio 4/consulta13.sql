select * from crosstab ('select cod_distrito, destino, sum(superficie) from centro group by cod_distrito, destino ORDER BY cod_distrito',
					   'select distinct destino from centro order by destino') as
					   ("distrito" text,
					   "Administrativo" text,
					   "Deportista" text,
					   "Enseñanza" text,
					   "Religioso" text,
					   "Sanitario" text)