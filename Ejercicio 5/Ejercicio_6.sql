-- Distrito con mayor superficie por perímetro
select cod_distrito, st_area(geom) / st_perimeter(geom) as r_area_perimetro from distrito_2
order by r_area_perimetro desc
limit 1;

-- Distrito con menor relación superficie / perímetro
select cod_distrito, st_area(geom) / st_perimeter(geom) as r_area_perimetro from distrito_2
order by r_area_perimetro asc
limit 1;