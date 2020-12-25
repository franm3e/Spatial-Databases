select * from crosstab
('select cod_seccion, tipo_edificio, avg((date_part(''year'', CURRENT_DATE) - ano_construcción)) as edad
from edificio
group by cod_seccion, tipo_edificio
order by cod_seccion',
'select distinct tipo_edificio from edificio order by tipo_edificio') as
("Seccion" text,
"Madera" text,
"Modernista" text,
"Noble" text,
"Tradicional" text);