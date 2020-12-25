-- Densidad población de las secciones
select cod_seccion, ((varones+mujeres)/superficie) as densidad from seccion;

-- Capa densidad de población por sección
select densidad, geom from densidad_seccion, seccion_2 where densidad_seccion.cod_seccion = seccion_2.cod_seccion;