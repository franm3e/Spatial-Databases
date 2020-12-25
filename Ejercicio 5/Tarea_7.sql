-- Vista con la tasa de envejecimiento, tasa de juventud y población activa de las secciones censales
select cod_seccion, 
((t65_69 + t70_74 + t75_79 + t80_84 + t85_89 + t90_94 + t95_99 + t100) / (varones + mujeres)) as tasa_envejecimiento,
((t0_4 + t5_10 + t11_14) / (varones + mujeres)) as tasa_juventud,
((varones+mujeres) - (t65_69 + t70_74 + t75_79 + t80_84 + t85_89 + t90_94 + t95_99 + t100)) as edad_activa
from seccion;

-- Capa tasa de envejecimiento, tasa de juventud y población activa 
select tasa_envejecimiento, tasa_juventud, edad_activa, seccion_2.geom from tasas, seccion_2
where tasas.cod_seccion = seccion_2.cod_seccion