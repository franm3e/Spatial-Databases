select * from crosstab
('select dis.nombre, edi.tipo_edificio, count(tipo_edificio)
from distrito dis 
inner join seccion sec on dis.cod_distrito = sec.cod_distrito 
inner join edificio edi on sec.cod_seccion = edi.cod_seccion
group by dis.nombre, edi.tipo_edificio
order by dis.nombre',
'select distinct tipo_edificio from edificio order by tipo_edificio') as
("Distrito" text,
"Madera" text,
"Modernista" text,
"Noble" text,
"Tradicional" text);