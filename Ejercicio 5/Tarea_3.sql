-- Vista densidad
select cod_distrito, avg((varones+mujeres)/superficie) as densidad_media from seccion group by cod_distrito;

-- Capa densidad media de población por distrito
select densidad_media, geom from densidad, distrito_2 where densidad.cod_distrito = distrito_2.cod_distrito;