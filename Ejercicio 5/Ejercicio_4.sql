-- Vecinos colindantes
select vecino1.cod_distrito as v1, vecino2.cod_distrito as v2 from distrito_2 as vecino1, distrito_2 as vecino2
where st_intersects(vecino1.geom, vecino2.geom)
and vecino1.cod_distrito != vecino2.cod_distrito
order by v1 asc;

-- Contador número de vecinos
select vecino1.cod_distrito as v1, count(vecino2.cod_distrito) as n_vecinos from distrito_2 as vecino1, distrito_2 as vecino2
where st_intersects(vecino1.geom, vecino2.geom)
and vecino1.cod_distrito != vecino2.cod_distrito
group by v1
order by v1 asc;

-- Cargar capa para representar en el mapa
select n_vecinos, geom from vecinos_colindantes, distrito_2
where vecinos_colindantes.v1 = distrito_2.cod_distrito;