-- Tabla de referencia cruzada
select * from crosstab
('select v1.cod_distrito as origen, v2.cod_distrito as destino, st_distance(v1.geom, v2.geom) as distancia
from centroides_distrito_2 as v1, centroides_distrito_2 as v2
order by origen asc',
'select distinct cod_distrito from centroides_distrito_2 order by cod_distrito') as
("0_D" text,
"D01" text,
"D02" text,
"D03" text,
"D04" text,
"D05" text,
"D06" text,
"D07" text,
"D08" text,
"D09" text)