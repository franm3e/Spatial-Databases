-- Razón de la tasas de juventud de los distritos con respecto a la media
select seccion.cod_distrito, 
avg(((t0_4 + t5_10 + t11_14) / (varones + mujeres))) / (select avg(((t0_4 + t5_10 + t11_14) / (varones + mujeres))) from seccion) as razon_tasa_juventud
from seccion
group by seccion.cod_distrito;

-- Capa de la razón
select distrito_2.cod_distrito, geom, rtj.razon_tasa_juventud
from distrito_2, razon_tasa_juventud rtj
where distrito_2.cod_distrito = rtj.cod_distrito;