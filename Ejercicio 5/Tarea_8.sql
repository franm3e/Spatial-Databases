-- Tabla vecinos colindates de seccciones
select vecino1.cod_seccion as v1, vecino2.cod_seccion as v2 from seccion_2 as vecino1, seccion_2 as vecino2
where st_intersects(vecino1.geom, vecino2.geom)
and vecino1.cod_seccion != vecino2.cod_seccion
order by v1 asc;

-- Vista con la tasa de envejecimiento, tasa de juventud y población activa de las secciones censales
select cod_seccion, 
((t65_69 + t70_74 + t75_79 + t80_84 + t85_89 + t90_94 + t95_99 + t100) / (varones + mujeres)) as tasa_envejecimiento,
((t0_4 + t5_10 + t11_14) / (varones + mujeres)) as tasa_juventud,
((varones+mujeres) - (t65_69 + t70_74 + t75_79 + t80_84 + t85_89 + t90_94 + t95_99 + t100)) as edad_activa
from seccion;

-- Capa tasa de envejecimiento, tasa de juventud y población activa 
select seccion_2.cod_seccion, avg(tasa_envejecimiento) as tasa_envejecimiento, avg(tasa_juventud) as tasa_juventud, avg(edad_activa) as edad_activa, seccion_2.geom 
from vecinos_colindantes_secciones vcs, tasas, seccion_2
where vcs.v2 = tasas.cod_seccion
and seccion_2.cod_seccion = vcs.v1
group by geom;