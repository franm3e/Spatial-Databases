-- Vista con el sexratio de los distritos
select sum(varones)/sum(mujeres) as sexratio, cod_distrito from seccion
group by cod_distrito;

-- Capa vecinos / sexratio
select avg(sexratio), distrito_2.geom from tabla_vecinos tv, distrito_sexratio ds, distrito_2
where tv.v2 = ds.cod_distrito
and distrito_2.cod_distrito = tv.v1
group by geom;