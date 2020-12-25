-- Cálculo del área en función del perímetro de los distritos
select cod_distrito, (st_area(geom) / st_perimeter(geom)) as r_area_perimetro, geom from distrito_2
order by r_area_perimetro asc;