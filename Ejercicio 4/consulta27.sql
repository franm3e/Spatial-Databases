select * from crosstab
('select edi.ano_construccion, dis.nombre, round(avg(edi.plantas), 0)
from distrito dis 
inner join seccion sec on dis.cod_distrito = sec.cod_distrito 
inner join edificio edi on sec.cod_seccion = edi.cod_seccion
group by edi.ano_construccion, dis.nombre
order by edi.ano_construccion',
'select distinct nombre from distrito order by nombre') as
("Año" text,
"Centro" text,
"Este" text,
"Noreste" text,
"Noroeste" text,
"Norte" text,
"Oeste" text,
"Sur" text,
"Sureste" text,
"suroeste" text);